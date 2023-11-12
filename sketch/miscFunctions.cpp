/*
    functions offloaded here to keep things uncluttered
*/

#include "miscFunctions.h"

// initialize the system and set status flags to default states
void initSystem() {
  led.setColor(RGBLed::YELLOW);
  
  if (digitalRead(slic_SHK))                  // check if phone is on or off hook
    bitSet(sysFlags, sysFlag_offHook);
  else
    bitClear(sysFlags, sysFlag_offHook);
  bitClear(sysFlags, sysFlag_ringing);        // ensure phone is not ringing when initializing the system
  bitClear(sysFlags, sysFlag_dialMode);       // not accepting dialed digits unless in dial mode
  bitClear(sysFlags, sysFlag_dtmfData);       // assume no dtmf data needs to be decoded
  bitClear(sysFlags, sysFlag_StD_trig);       // assume no dtmf tones are detected on phone line
  bitSet(sysFlags, sysFlag_nodeBusy);         // node is busy until system is idle
  bitClear(sysFlags, sysFlag_timer1Exp);      // timer not expired
  bitClear(sysFlags, sysFlag_timer2Exp);      // timer not expired
  bitClear(sysFlags, sysFlag_enableTimer1);   // timer disabled
  bitClear(sysFlags, sysFlag_enableTimer2);   // timer disabled
}

// North America ring cadence  2s on/4s off
void ringNorthAmericaInit() {
  ringCadence[0] = 2000;
  ringCadence[1] = 4000;
  ringCadence[2] = 0;
  ringCadence[3] = 0;
}

// UK ring cadence  0.4s on/0.2s off/0.4s on/2s off
void ringUkInit() {
  ringCadence[0] = 400;
  ringCadence[1] = 200;
  ringCadence[2] = 400;
  ringCadence[3] = 2000;
}

// configure SLIC pins and ring patterns based on region
void initSlic() {
  // configure SLIC module pins
  digitalWrite(slic_fwdRev, LOW);
  digitalWrite(slic_ringMode, LOW);
  digitalWrite(slic_audioMute, HIGH);   // disable audio path out of SLIC

  pinMode(slic_fwdRev, OUTPUT);
  pinMode(slic_ringMode, OUTPUT);
  pinMode(slic_audioMute, OUTPUT);
  pinMode(slic_SHK, INPUT);

  switch (myRegion) {
    case northAmerica:
      ringNorthAmericaInit();
      break;

    case uk:
      ringUkInit();
      break;

    default:
      ringNorthAmericaInit();
      break;
  }
}

// configure pins for mt8870 dtmf decoder
void initMT8870() {
  pinMode(Q1, INPUT);
  pinMode(Q2, INPUT);
  pinMode(Q3, INPUT);
  pinMode(Q4, INPUT);
  pinMode(StD, INPUT);
}

// process IRQ events
void checkIRQ() {
  if (SHK_irqFlag) {
    SHK_irqFlag = false;                                 // clear interrupt flag

    // read the hook switch and if it has transitioned,
    // allow settling for 10 mS and take a final reading to accept as the new hook state
    bool currSHK = digitalRead(slic_SHK);                // check current state of hook switch

    if (stateOffhook && !currSHK && !shkTimerRunning) {  // start a debounce timer when SHK goes low
      shkTimerRunning = true;
      shkOnHookTimerRunning = true;
      shkDebounceTimer = millis();                       // overall SHK debounce timer
      shkOnHookTimer = millis();                         // SHK going on-hook vs pulse dialing timer
    }

    if (!stateOffhook && currSHK && !shkTimerRunning) {  // start a debounce timer when SHK goes high
      shkTimerRunning = true;
      shkDebounceTimer = millis();
    }
  } // end SHK_irqFlag

  if (DTMF_irqFlag) {
    DTMF_irqFlag = false;                                // clear interrupt flag
    bitSet(sysFlags, sysFlag_StD_trig);                  // set a flag to go read dtmf data for a dialed digit
  } // end DTMF_irqFlag
}

// print out the system flags in serial monitor if requested
void debug_print_sysflags() {
  Serial.print("Debug sysflags: ");
  if  (bitRead(sysFlags, sysFlag_dialMode))
    Serial.print("Accepting Dialed Digits | ");
  else
    Serial.print("Not Accepting Dialed Digits | ");

  if  (bitRead(sysFlags, sysFlag_dtmfData))
    Serial.print("DTMF Tone | ");
  else
    Serial.print("DTMF None | ");

  if  (bitRead(sysFlags, sysFlag_StD_trig))
    Serial.print("DTMF Triggered | ");
  else
    Serial.print("DTMF !Trig | ");

  if  (bitRead(sysFlags, sysFlag_offHook))
    Serial.print("Off Hook | ");
  else
    Serial.print("On Hook | ");

  if  (bitRead(sysFlags, sysFlag_enableTimer1))
    Serial.print("Timer 1 Enabled | ");
  else
    Serial.print("Timer 1 Disabled | ");

  if  (bitRead(sysFlags, sysFlag_enableTimer2))
    Serial.print("Timer 2 Enabled | ");
  else
    Serial.print("Timer 2 Disabled | ");

  if  (bitRead(sysFlags, sysFlag_timer1Exp))
    Serial.print("Timer 1 Expired | ");
  else
    Serial.print("Timer 1 Not Expired | ");

  if  (bitRead(sysFlags, sysFlag_timer2Exp))
    Serial.print("Timer 2 Expired | ");
  else
    Serial.print("Timer 2 Not Expired | ");

  if  (bitRead(sysFlags, sysFlag_ringing))
    Serial.print("Ringing | ");
  else
    Serial.print("Not Ringing | ");

  if  (bitRead(sysFlags, sysFlag_nodeBusy))
    Serial.print("Node Busy");
  else
    Serial.print("Node Available");

  Serial.println("");
}

// check if phone is on or off hook
bool offHook() {
  return (bitRead(sysFlags, sysFlag_offHook));
}

// check if this node is available for a call or busy
bool nodeBusy() {
  return (bitRead(sysFlags, sysFlag_nodeBusy));
}

// set availability status of this node
void setNodeAvailable(bool available = true) {
  if (available)
    bitClear(sysFlags, sysFlag_nodeBusy);
  else
    bitSet(sysFlags, sysFlag_nodeBusy);
}

// clear received msg data once processed so it is not confused for new data later
void clearRemoteNodeData() {
  remotePhoneNum = "";                        // msg originator node's phone number
  remoteNodeStatus = NIL;                     // msg originator node's status (available, busy etc)
  remoteRequestType = NONE;                   // what does originator node want from the destination node
}

void slicRingStop() {
  digitalWrite(slic_fwdRev, LOW);             // stop generating ring signal on SLIC
  digitalWrite(slic_ringMode, LOW);
  bitClear(sysFlags, sysFlag_ringing);        // phone is not ringing, clear system status flag
  led.off();                                  // turn off ring indicator LED

  // *** Double check slic documentation regarding the need for a delay for voltages to settle***
}

// start ringing the phone connected to the SLIC
void ringGenStart() {
  if (offHook()) return;                      // don't try to ring a phone unless it is on hook
  slic_ring_cadence_step = 0;                 // start from the beginning of the ring cadence pattern
  slic_timer = millis();                      // start a timer for phone ringing cadence
  slic_ring_freq_timer = millis();            // start a timer for phone ringing freq
  bitSet(sysFlags, sysFlag_ringing);          // phone is ringing, set system status flag
  digitalWrite(slic_ringMode, HIGH);          // set SLIC in ring generation mode
}

// check the hook switch after a new transition has settled and set system flag 
void readFinalShk() {
  // update phone hook status (detect phone going on or off hook)
  if (digitalRead(slic_SHK))
    bitSet(sysFlags, sysFlag_offHook);
  else
    bitClear(sysFlags, sysFlag_offHook);
}

// use SLIC to ring the phone at 20 Hz (25 mS on and 25 mS off)
// with an on/off ring cadence based on selected region
void slicRingGenerate() {
  if (offHook()) {                            // don't ring if phone is off hook
    slicRingStop();
    return;
  }

  static bool fwdRevPinState = LOW;           // use to toggle the SLIC fwd/rev pin while ringing

  // cycle through ring pattern, tracking which cadence step is in progress
  if ((unsigned long)(millis() - slic_timer) > ringCadence[slic_ring_cadence_step]) {
    slic_timer = millis();                                       // reset cadence timer for another interval
    slic_ring_cadence_step++;                                    // go to next part of the ring pattern
    if (slic_ring_cadence_step >= 4) slic_ring_cadence_step = 0; // start at cadence step 0 after the pattern has completed
  }

  // if phone is actively ringing (cadence step 0 or 2)
  // toggle the SLIC fwd/rev pin every half period to generate the target ring frequency
  if ((slic_ring_cadence_step % 2) == 0) {                       // if cadence step # is even eg 0, 2
    if ((unsigned long)(millis() - slic_ring_freq_timer) > (ringFreq / 2)) {
      slic_ring_freq_timer = millis();                           // reset ring freq timer for another interval
      fwdRevPinState = !fwdRevPinState;                          // toggle SLIC pin to generate ring voltage at freq
      digitalWrite(slic_fwdRev, fwdRevPinState);
      if (fwdRevPinState) led.setColor(RGBLed::CYAN); else led.off();  // flash LED to indicate ringing
    }
  }
  else {
    digitalWrite(slic_fwdRev, LOW);                              // if not actively ringing, don't toggle pin
    led.off();                                                   // turn off ring indicator LED
  }
}


// if dtmf data available, read dtmf data
// translate data into phone dialed digits
// debounce StD signal to prevent re-detecting same key press
char readDtmf() {
  char c = ' ';                                                  // space character means no new data

  uint8_t dtmf = ( 0x00 | (digitalRead(Q1) << 0) | (digitalRead(Q2) << 1) | (digitalRead(Q3) << 2) | (digitalRead(Q4) << 3) );
  switch (dtmf)
  {
    case 0x01:
      c = '1';
      break;
    case 0x02:
      c = '2';
      break;
    case 0x03:
      c = '3';
      break;
    case 0x04:
      c = '4';
      break;
    case 0x05:
      c = '5';
      break;
    case 0x06:
      c = '6';
      break;
    case 0x07:
      c = '7';
      break;
    case 0x08:
      c = '8';
      break;
    case 0x09:
      c = '9';
      break;
    case 0x0A:
      c = '0';
      break;
    case 0x0B:
      c = '*';
      break;
    case 0x0C:
      c = '#';
      break;
    default:
      c = ' ';
      break;
  }
  bitClear(sysFlags, sysFlag_dtmfData);  // indicate that dtmf data has been processed
  return c;                              // return the dtmf character received
}
