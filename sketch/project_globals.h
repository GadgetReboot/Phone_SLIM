
#ifndef project_globals_h
#define project_globals_h

#include "Arduino.h"

// region definitions for different call progress tones
#define northAmerica 0
#define uk    1

// msg data sent between nodes to make requests or provide responses
// also used locally to store received msg data
enum NodeStatus {NIL, NODE_AVAILABLE, NODE_BUSY, OFF_HOOK, ON_HOOK};  // remote node's busy/available status received in a msg
enum RequestType {NONE, STATUS_REQ, INCOMING_CALL};  // actions a node can request of another node

extern NodeStatus remoteNodeStatus;       // msg originator node's status (available, busy etc)
extern RequestType remoteRequestType;     // what does originator node want from the destination node
extern String remotePhoneNum;             // phone number of remote node contacting local node      

extern uint16_t sysFlags;              
extern const byte sysFlag_offHook;           // sysFlags bit 0:  0 = phone is on hook       1 = phone is off hook
extern const byte sysFlag_ringing;           // sysFlags bit 1:  0 = phone is not ringing   1 = phone is ringing
extern const byte sysFlag_dialMode;          // sysFlags bit 2:  0 = ignore dialed digits   1 = accepting dial input
extern const byte sysFlag_dtmfData;          // sysFlags bit 3:  0 = no new dtmf data       1 = new dtmf data
extern const byte sysFlag_StD_trig;          // sysFlags bit 4:  0 = dtmf StD has expired   1 = dtmf StD has not expired
extern const byte sysFlag_nodeBusy;          // sysFlags bit 5:  0 = this node is available 1 = this node is busy
extern const byte sysFlag_timer1Exp;         // sysFlags bit 6:  0 = timer not expired      1 = timer expired
extern const byte sysFlag_timer2Exp;         // sysFlags bit 7:  0 = timer not expired      1 = timer expired
extern const byte sysFlag_enableTimer1;      // sysFlags bit 8:  0 = timer disabled         1 = timer enabled
extern const byte sysFlag_enableTimer2;      // sysFlags bit 9:  0 = timer disabled         1 = timer enabled

extern byte myRegion;
extern String remotePhoneNumber;        // valid phone number for remote phone
extern String localPhoneNumber;         // this node's phone number
extern String dialedNumber;             // store dialed digits in a string for processing

extern const byte slic_audioMute;       // mute audio coming out of slic, active high
extern const byte slic_fwdRev;          // slic forward/reverse pin
extern const byte slic_ringMode;        // slic ring mode pin
extern const byte slic_SHK;             // slic switch hook pin
extern bool stateOffhook;               // assume phone is on hook to start
extern bool shkTimerRunning;            // track if the hook switch debounce timer is running
extern unsigned long shkDebounceTimer;  // hook switch debounce timer


extern const byte Q1;                   // mt8870 dtmf data bits to decode
extern const byte Q2;
extern const byte Q3;
extern const byte Q4;
extern const byte StD;                  // mt8870 delayed steering = high when valid Q1..Q4 data present

extern const byte senderServerPin;      // gpio low = Server  high = Sender  mode for wifi purposes

extern const byte rgbLed;               // led indicating phone is ringing
extern const byte relayPin;             // relay that connects remote phone line to local phone line


extern volatile bool SHK_irqFlag;       // flag to indicate SHK interrupt has occurred
extern volatile bool DTMF_irqFlag;      // flag to indicate DTMF interrupt has occurred
extern unsigned long slic_timer;        // used for various SLIC timing eg. ringing a phone or off hook time out
extern unsigned long slic_ring_freq_timer;   // used to generate the proper ring freq
extern byte slic_ring_cadence_step;          // which of the cadence intervals is the ring pattern generating?
extern int ringCadence [];                   // SLIC phone ring cadence for ring/silence/ring/silence (durations in mS)
extern const byte ringFreq;                  // generate this freq (Hz) ring voltage (possible issues below 40Hz)
extern const int ringPeriod;                 // period of ring frequency in mS
extern byte shkDebounceInterval;             // 10mS debounce for hook switch

#endif
