/*
  miscFunctions.h
*/
#ifndef miscFunctions_h
#define miscFunctions_h

#include "Arduino.h"
#include "mozzi_call_progress.h"  
#include "project_globals.h"  

void initSystem();
void initSlic();
void initMT8870();
void checkIRQ();
void debug_print_sysflags();
bool offHook();
bool nodeBusy();
void clearRemoteNodeData();
void setNodeAvailable(bool);
void ringGenStart();
void slicRingStop();
void slicRingGenerate();
char readDtmf();
void readFinalShk();

#endif
