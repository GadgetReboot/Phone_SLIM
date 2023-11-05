/*
    variables offloaded here to keep things de-cluttered
*/

#include "project_globals.h"

// myRegion can be northAmerica or uk (see project_globals.h)
// uncomment the desired region to use:
byte myRegion = northAmerica;
//byte myRegion = uk;

String remotePhoneNumber = "8675309";  // valid phone number for remote phone
String localPhoneNumber = "3927704";   // valid phone number for local phone
String dialedNumber = "";              // store dialed digits in a string for processing
String remotePhoneNum = "";            // phone number of incoming caller

// system status flag register to track the state of various modes and operations
uint16_t sysFlags = 0x00;
const byte sysFlag_offHook = 0;         // sysFlags bit 0:  0 = phone is on hook       1 = phone is off hook
const byte sysFlag_ringing = 1;         // sysFlags bit 1:  0 = phone is not ringing   1 = phone is ringing
const byte sysFlag_dialMode = 2;        // sysFlags bit 2:  0 = ignore dialed digits   1 = accepting dial input
const byte sysFlag_dtmfData = 3;        // sysFlags bit 3:  0 = no new dtmf data       1 = new dtmf data
const byte sysFlag_StD_trig = 4;        // sysFlags bit 4:  0 = dtmf StD has expired   1 = dtmf StD has not expired
const byte sysFlag_nodeBusy = 5;        // sysFlags bit 5:  0 = this node is available 1 = this node is busy
const byte sysFlag_timer1Exp = 6;       // sysFlags bit 6:  0 = timer not expired      1 = timer expired
const byte sysFlag_timer2Exp = 7;       // sysFlags bit 7:  0 = timer not expired      1 = timer expired
const byte sysFlag_enableTimer1 = 8;    // sysFlags bit 8:  0 = timer disabled         1 = timer enabled
const byte sysFlag_enableTimer2 = 9;    // sysFlags bit 9:  0 = timer disabled         1 = timer enabled

// message data sent between nodes
NodeStatus remoteNodeStatus = NIL;      // msg originator node's status (available, busy etc)
RequestType remoteRequestType = NONE;   // what does originator node want from the destination node

// SHK control
bool stateOffhook = false;              // assume phone is on hook to start
bool shkTimerRunning = false;           // track if the hook switch debounce timer is running
unsigned long shkDebounceTimer;         // hook switch debounce timer

// gpio pins
const byte slic_audioMute = 17;         // slic audio output mute pin
const byte slic_fwdRev    = 21;         // slic forward/reverse pin
const byte slic_ringMode  = 22;         // slic ring mode       pin
const byte slic_SHK       = 14;         // slic switch hook     pin

const byte Q1 = 33;                     // mt8870 dtmf data bits to decode
const byte Q2 = 34;
const byte Q3 = 35;
const byte Q4 = 36;
const byte StD = 13;                    // mt8870 delayed steering = high when valid Q1..Q4 data present

const byte senderServerPin = 39;        // gpio low = Server  high = Sender  mode for wifi purposes
const byte rgbLed = 16;                 // led status indicator
const byte relayPin = 4;                // relay that connects tip/ring from SLIC to audio trunk line

// misc variables
volatile bool SHK_irqFlag = false;                   // flag to indicate SHK interrupt has occurred
volatile bool DTMF_irqFlag = false;                  // flag to indicate DTMF interrupt has occurred
unsigned long slic_timer = millis();                 // used for various SLIC timing eg. ringing a phone or off hook time out
unsigned long slic_ring_freq_timer = millis();       // used to generate the proper ring freq
byte slic_ring_cadence_step = 0;                     // which of the cadence intervals is the ring pattern generating?
int ringCadence [] = {0, 0, 0, 0};                   // SLIC phone ring cadence for ring/silence/ring/silence (durations in mS)
const byte ringFreq = 45;                            // generate this freq (Hz) ring voltage (possible issues below 40Hz)
const int ringPeriod = (1 / (float)ringFreq) * 1000; // period of ring frequency in mS
byte shkDebounceInterval = 10;                       // 10mS debounce for hook switch
