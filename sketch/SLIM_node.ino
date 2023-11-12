/*
    Plain Old Telephone Service (POTS) simulator
    Uses 30 pin ESP32 DOIT Devkit V1 module
    Choose Arduino IDE board "DOIT ESP32 DEVKIT V1"

    Uses a subscriber line interface circuit (SLIC) module KS0835F
    Can generate DTMF call progress tones (selectable regions) using mozzi audio library
    Can play back "This is a recording" audio sample stored in program memory using mozzi

    Coordinates with another node wirelessly using ESP-NOW to place or receive calls
    The node configured as a "Server" via a jumper will create a web page interface

    Some classes and function concepts were borrowed from a similar project:
    https://github.com/ktownsend-personal/RetroPhone


   Libraries:   ArduinoJSON by Benoit Blanchon
                https://github.com/me-no-dev/ESPAsyncWebServer
                https://github.com/me-no-dev/AsyncTCP
                RGBLED https://github.com/wilmouths/RGBLed    (install library by adding zip file downloaded from github
                                                                click "code" button and download zip)
                Mozzi sound library https://github.com/sensorium/Mozzi

                Mozzi documentation/API https://sensorium.github.io/Mozzi/doc/html/index.html

   Tested with Arduino IDE 1.8.13
               ESP32 board file 1.0.6
               ArduinoJSON 6.19.4

   Gadget Reboot
   https://www.youtube.com/@gadgetreboot
*/

#define DEBUG                     // uncomment to allow debug serial messages
#include "DebugUtils.h"
#include "project_globals.h"      // global variables that get referenced in multiple files
#include "miscFunctions.h"        // some things kept here to de-clutter main file
#include "wifiFunctions.h"        // wireless functionality
#include "pulseHandler.h"         // pulse dialing handler
#include "mozzi_call_progress.h"  // class to generate region specific call progress tones
#include <RGBLed.h>               // RGB LED library for 4 pin LED

// pulse dial started callback
void dialingStartedCallback(bool isTone) {
  //
}

auto pulser  = pulseHandler(slic_SHK, dialingStartedCallback);  // pulse dial handler

// create call progress tone generator based on specified geographical region
mozzi_call_progress callProgressGen(myRegion);

// SHK interrupt routine (phone hook switch detection)
void IRAM_ATTR isrSHK() {
  SHK_irqFlag = true;             // set irq flag so it can be handled in main loop
}

// DTMF interrupt routine
void IRAM_ATTR isrDTMF() {
  DTMF_irqFlag = true;            // set irq flag so it can be handled in main loop
}

void setup() {
  Serial.begin(115200);
  Serial.println("\r\nSubscriber Line Interface Module");

  digitalWrite(relayPin, LOW);              // make sure tip/ring trunk line is disengaged
  pinMode(relayPin, OUTPUT);

  // configure gpio
  pinMode(LED_BUILTIN, OUTPUT);             // show wifi connection status on ESP LED when module is a server
  pinMode(senderServerPin, INPUT);          // jumper decides if this node acts as a server or sender node.  pin has an external pull up resistor

  wifiMode = digitalRead(senderServerPin);  // set this node as a wifi sender or server based on jumper setting
  if (wifiMode == wifiServer) initServer();
  else initSender();

  pulser.setMaybeCallback(maybeDialingStartedCallback);
  pulser.setDigitCallback(digitReceivedCallback);
  pulser.start();                                          // prepare pulse dial handler

  initSlic();                       // configure SLIC control pins and phone ring cadence based on set region
  initSystem();                     // init the system and set status flags
  initMT8870();                     // configure hardware dtmf decoder pins

  attachInterrupt(digitalPinToInterrupt(slic_SHK), isrSHK, CHANGE);  // SLIC hook switch triggers an interrupt for off hook and rotary dial signaling
  attachInterrupt(digitalPinToInterrupt(StD), isrDTMF, RISING);      // DTMF data valid interrupt
}

void loop() {

  static unsigned long nodePingTimer = millis();                // timer for pinging msgs between nodes to test connection, send status etc
  const unsigned long nodePingInterval_mS = 60000;

  // periodic wireless activity ping
  if ((millis() - nodePingTimer) > nodePingInterval_mS) {
    nodePingTimer = millis();
    sendTrunkMsg(localPhoneNumber, "", NONE, NIL);              // send a message to other node just to see there is communication
  }

  runStateMachine();          // handle state machine operations
  checkIRQ();                 // process any pending interrupts for SHK or dialing events
  callProgressGen.update();   // handle audio generation operations if in progress
  pulser.run();               // handle pulse dial operations if in progress

  // debounce SHK if it has changed state
  // this could be implemented better but software isn't my first language
  unsigned long lapsedTime = millis() - shkDebounceTimer;
  if (shkTimerRunning && (lapsedTime >= shkDebounceInterval)) {  // if hook switch has been debounced, determine its final state
    shkTimerRunning = false;
    stateOffhook = digitalRead(slic_SHK);

    // if going off hook, update hook switch after debounce
    // if going on hook, wait for the longer on-hook delay to confirm it wasn't pulse dialing
    if (stateOffhook)
      bitSet(sysFlags, sysFlag_offHook);
    //  else
    //    bitClear(sysFlags, sysFlag_offHook);
    // Serial.println(stateOffhook ? "Off hook" : "On hook");    // test if SHK is being detected
  }


  // if phone went on-hook, verify if it was a hang up vs pulse dial event
  // this needs to be more robust eg. read SHK every 30 mS or something and be sure it was on hook each time?
  lapsedTime = millis() - shkOnHookTimer;
  if (shkOnHookTimerRunning && (lapsedTime >= shkOnHookInterval)) {
    shkOnHookTimerRunning = false;
    if (!pulseDialingNow) {                         // if a pulse dialed digit has not been detected by now, it was a hang-up event
      if (!digitalRead(slic_SHK))                   // if SHK is still low, register the hang up event
        bitClear(sysFlags, sysFlag_offHook);
    }
  }




  // when in dialing mode, accumulate DTMF digits until there is a phone number to dial
  if (bitRead(sysFlags, sysFlag_dialMode)) {
    if (bitRead(sysFlags, sysFlag_StD_trig)) {
      bitClear(sysFlags, sysFlag_StD_trig);
      char c_read = readDtmf();
      if (c_read != ' ') {                          // if a new DTMF key has been read
        callProgressGen.audioStop();                // stop playing dialtone when phone keys get pressed
        dialedNumber += c_read;       // append dtmf character to dialed number
        DEBUG_PRINT( F("Dialed digits so far: ") );
        DEBUG_PRINTLN(dialedNumber);
      }
    }
  }

}  // end loop

void maybeDialingStartedCallback() {
  // any purpose?
}


// pulse dial digit callback
void digitReceivedCallback(char digit) {
  //timeoutStart();           // reset timeout after user input
  //Serial.print(digit);      // debug output show digits as they are received
  callProgressGen.audioStop();                // stop playing dialtone when phone keys get pressed
  dialedNumber += digit;          // accumulate the digit

  DEBUG_PRINT(F("[pulse digit] "));
  DEBUG_PRINTLN(digit);

  DEBUG_PRINT( F("Dialed digits so far: ") );
  DEBUG_PRINTLN(dialedNumber);

}



void runStateMachine() {
  enum states {
    startup,                   // initial state at system reset
    idle,                      // standby mode waiting for activity to occur
    acceptDialInput,           // phone went off hook, accumulate dialed digits
    attemptPlaceCall,          // try to place a call when a number is dialed
    waitForCallPlaceResponse,  // wait until remote node responds to call request, or a timeout occurs
    remotePhoneRinging,        // destination phone is ringing.  wait for remote phone to go off hook so nodes can be connected
    ringPhone,                 // ring the local phone to indicate there is an incoming call
    connectCall                // proceed to connect tip/ring trunk line between local and remote node
  };

  static enum states currState = startup;                           // initial state is "startup"
  static boolean enteringNewState = true;                           // whether or not the current state is just beginning
  static unsigned long nodeResponseTimer = millis();                // timer for awaiting responses from remote nodes
  static const unsigned long nodeResponseTimerInterval_mS = 10000;
  static unsigned long offhookTimer = millis();                     // timer to track if phone is off hook too long without a call connected
  static const unsigned long offhookTimerInterval_mS = 15000;       // timeout period before playing "this is a recording" message
  static unsigned long howlerTimer = millis();
  static const unsigned long howlerTimerInterval_mS = 20000;        // timeout period before playing howler tone when off hook too long

  // if phone number is taking too long to finish dialing,
  // play "this is a recording" message
  if ((bitRead(sysFlags, sysFlag_enableTimer1)) && !(currState == connectCall)  && (!bitRead(sysFlags, sysFlag_timer1Exp))) {
    if (!(dialedNumber == "")) {                                 // only play recorded message if dialing was in progress and took too long
      if ((millis() - offhookTimer) > offhookTimerInterval_mS) {
        DEBUG_PRINTLN( F("[note] Start playing 'this is a recording' message") );
        howlerTimer = millis();                                  // if recorded message is played, restart howler timer to play after recording
        bitSet(sysFlags, sysFlag_timer1Exp);                     // indicate recording has started playing after timer delay expired
        bitClear(sysFlags, sysFlag_enableTimer1);                // disable recording delay timer once playback has started
        callProgressGen.audioStop();                             // cancel any call progress audio tones that were playing
        callProgressGen.thisIsARecordingStart();                 // begin playing recorded message
      }
    }
  }

  // if phone is off hook for too long without a call being connected, play howler tone
  if ((bitRead(sysFlags, sysFlag_enableTimer2)) && !(currState == connectCall) && (!bitRead(sysFlags, sysFlag_timer2Exp))) {
    if ((millis() - howlerTimer) > howlerTimerInterval_mS) {
      DEBUG_PRINTLN( F("[note] Howler tone playing") );
      bitSet(sysFlags, sysFlag_timer2Exp);                       // indicate howler has started after timer delay expires
      bitClear(sysFlags, sysFlag_enableTimer2);                  // disable howler delay timer once playback has started
      callProgressGen.audioStop();                               // cancel any call progress audio tones that were playing
      callProgressGen.howlerToneStart();                         // begin playing howler
    }
  }

  switch (currState) {
    case startup:                                                // initial state, perform any first-run operations and go to idle state
      callProgressGen.startup();                                 // initialize mozzi call progress tone generator
      remoteNodeStatus = NIL;                                    // msg originator node's status (available, busy etc)
      remoteRequestType = NONE;                                  // what does originator node want from the destination node
      remotePhoneNum = "";                                       // phone number of remote node contacting local node
      dialedNumber = "";                                         // no local dialing has started yet
      currState = idle;
      enteringNewState = true;
      break;

    case idle:
      if (enteringNewState == true) {                            // run once when transitioning into state
        DEBUG_PRINTLN( F("\r\n[enter state] idle") );
        digitalWrite (relayPin, LOW);                            // ensure tip/ring trunk line is disconnected
        digitalWrite(slic_audioMute, HIGH);                      // disable audio path out of SLIC
        led.setColor(RGBLed::BLUE);                              // set LED to indicate idle
        dialedNumber = "";                                       // prepare to accept a new sequence of digits to dial
        pulseDialingNow = false;                                 // prepare to look for new pulse dial events
        pulser.start();                                          // prepare pulse dial handler
        bitClear(sysFlags, sysFlag_dialMode);                    // don't process dialed digits unless placing a call
        bitClear(sysFlags, sysFlag_timer1Exp);                   // reset offhook timeout indicators
        bitClear(sysFlags, sysFlag_timer2Exp);
        bitClear(sysFlags, sysFlag_enableTimer1);
        bitClear(sysFlags, sysFlag_enableTimer2);
        callProgressGen.audioStop();                             // cancel any audio that may be playing
        setNodeAvailable(true);                                  // this node is available for calls
        enteringNewState = false;
      }
      if (offHook()) {                                           // if phone goes off hook, prepare for dialing
        setNodeAvailable(false);                                 // this node is not available for calls
        offhookTimer = millis();                                 // enable offhook timers for recorded message and howler playback if there is a timeout
        howlerTimer = millis();
        bitSet(sysFlags, sysFlag_enableTimer1);
        bitSet(sysFlags, sysFlag_enableTimer2);
        digitalWrite(slic_audioMute, LOW);                       // enable audio path out of SLIC
        led.setColor(RGBLed::MAGENTA);                              // set LED to indicate off hook
        enteringNewState = true;
        currState = acceptDialInput;
      }
      if (remoteRequestType == INCOMING_CALL) {                  // if wireless msg is received and remote node is attempting to call this node
        clearRemoteNodeData();                                   // msg has been received and processed so clear msg data
        enteringNewState = true;
        currState = ringPhone;                                   // ring the local phone and wait for a pick up off hook
      }
      break;

    case acceptDialInput:
      if (enteringNewState == true) {                            // run once when transitioning into state
        DEBUG_PRINTLN( F("[enter state] acceptDialInput") );
        bitSet(sysFlags, sysFlag_dialMode);                      // start accumulating dialed digits to dial a number
        callProgressGen.dialToneStart();                         // play call progress dial tone in local phone while waiting for dialed digits
        enteringNewState = false;
      }
      if (!offHook()) {                                          // if phone goes on hook, cancel dialing
        callProgressGen.audioStop();                             // stop playing dialtone
        bitClear(sysFlags, sysFlag_dialMode);                    // don't process dialed digits unless placing a call
        enteringNewState = true;
        currState = idle;
      }

      if (dialedNumber.length() == 7) {
        if (dialedNumber == remotePhoneNumber) {                   // try to place a call if a valid phone number is dialed
          bitClear(sysFlags, sysFlag_dialMode);                    // stop processing dialed digits
          bitClear(sysFlags, sysFlag_enableTimer1);                // don't timeout for incorrect dialed number anymore
          bitClear(sysFlags, sysFlag_enableTimer2);
          enteringNewState = true;
          currState = attemptPlaceCall;
        }
      }
      break;

    case attemptPlaceCall:
      if (enteringNewState == true) {                            // run once when transitioning into state
        enteringNewState = false;
      }
      // send a message containing this node's local number, the number of the target node, requesting to place an
      // incoming call to target node, and this node is currently busy (trying to place this call)
      sendTrunkMsg(localPhoneNumber, dialedNumber, INCOMING_CALL, NODE_BUSY);
      nodeResponseTimer = millis();                              // start a timer while waiting for response from remote node
      enteringNewState = true;
      currState = waitForCallPlaceResponse;
      break;

    case waitForCallPlaceResponse:
      if (enteringNewState == true) {                            // run once when transitioning into state
        DEBUG_PRINTLN( F("[enter state] waitForCallPlaceResponse") );
        enteringNewState = false;
      }

      if ((millis() - nodeResponseTimer) > nodeResponseTimerInterval_mS) {
        enteringNewState = true;
        currState = idle;                                        // remote node didn't respond in time, call failed, go back to idle
      }

      if (remoteNodeStatus == NODE_AVAILABLE) {                  // remote node is available for a call so generate call progress ring tone
        clearRemoteNodeData();                                   // msg has been received and processed so reset data for next msg attempt
        enteringNewState = true;
        currState = remotePhoneRinging;
      }

      if (remoteNodeStatus == NODE_BUSY) {                       // remote node is busy, can't complete the call
        clearRemoteNodeData();                                   // msg has been received and processed so reset data for next msg attempt
        callProgressGen.busyToneStart();                         // play call progress busy signal to alert caller of status
      }

      if (!offHook()) {                                               // if phone goes on hook before call is connected, end call attempt
        sendTrunkMsg(localPhoneNumber, dialedNumber, NONE, ON_HOOK);  // notify other node the call is aborted
        enteringNewState = true;
        currState = idle;
      }
      break;

    case remotePhoneRinging:
      if (enteringNewState == true) {                            // run once when transitioning into state
        DEBUG_PRINTLN( F("[enter state] remotePhoneRinging") );
        callProgressGen.ringToneStart();                         // start playing call progress ring tone to alert caller of status
        enteringNewState = false;
      }
      if (remoteNodeStatus == OFF_HOOK) {                        // remote phone has been answered, call can be connected
        clearRemoteNodeData();                                   // msg has been received and processed so reset data for next msg attempt
        enteringNewState = true;
        currState = connectCall;
      }

      if (!offHook()) {                                               // if phone goes on hook before remote node answers, end the call
        sendTrunkMsg(localPhoneNumber, dialedNumber, NONE, ON_HOOK);  // notify other node the call is aborted
        enteringNewState = true;
        currState = idle;
      }
      break;

    case ringPhone:
      if (enteringNewState == true) {                             // run once when transitioning into state
        DEBUG_PRINTLN( F("[enter state] ringPhone") );
        setNodeAvailable(false);                                  // this node is not available for new calls
        ringGenStart();                                           // ring the local phone
        // remote node has sent a msg that they would like to place a call to this node, which is available, so
        // send a message containing this node's local number, the number of the target node, requesting nothing,
        // and replying that this node is available to receive a call
        sendTrunkMsg(localPhoneNumber, dialedNumber, NONE, NODE_AVAILABLE);
        enteringNewState = false;
      }

      if (bitRead(sysFlags, sysFlag_ringing)) {                   // if SLIC is ringing the phone, handle the control signals
        slicRingGenerate();
      }

      // *** note to future self ***
      // need to add a check to see if there was a message from remote side that the call is cancelled, then go back to idle?

      if (offHook()) {                                                 // if phone is answered, connect the call
        slicRingStop();                                                // stop ringing local phone
        sendTrunkMsg(localPhoneNumber, dialedNumber, NONE, OFF_HOOK);  // send message to confirm call has been answered
        enteringNewState = true;
        currState = connectCall;
      }

      if (remoteNodeStatus == ON_HOOK) {                          // remote phone has been hung up, abort call
        clearRemoteNodeData();                                    // msg has been received and processed so reset data for next msg attempt
        enteringNewState = true;
        currState = idle;
      }
      break;

    case connectCall:
      if (enteringNewState == true) {                             // run once when transitioning into state
        digitalWrite (relayPin, HIGH);                            // turn on tip/ring trunk line relay when a call is established
        callProgressGen.audioStop();                              // cancel any call progress audio tones that were playing
        led.setColor(RGBLed::GREEN);                              // set LED to indicate call connected
        DEBUG_PRINTLN( F("[enter state] connectCall") );
        enteringNewState = false;
      }

      if (!offHook()) {                                               // if phone goes on hook, end call
        sendTrunkMsg(localPhoneNumber, dialedNumber, NONE, ON_HOOK);  // notify other node the call is aborted
        enteringNewState = true;
        currState = idle;
      }

      if (remoteNodeStatus == ON_HOOK) {                         // remote phone has been hung up, abort call
        clearRemoteNodeData();                                   // msg has been received and processed so reset data for next msg attempt
        enteringNewState = true;
        currState = idle;
      }
      break;
  }  // end switch case
}  // end state machine
