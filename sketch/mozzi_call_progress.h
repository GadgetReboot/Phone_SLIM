/*
  mozzi_call_progress.h
  Library for generating call progress dtmf audio
  Uses the mozzi synth library
*/
#ifndef mozzi_call_progress_h
#define mozzi_call_progress_h

#include "Arduino.h"

class mozzi_call_progress
{
  public:
    mozzi_call_progress(byte region);
    void update();
    void startup();
    void audioStop();
    void ringToneStart();
    void dialToneStart();
    void busyToneStart();
    void howlerToneStart();
    void thisIsARecordingStart();
  private:
    byte _region;  // control which call progress sounds to generate based on region
};

#endif
