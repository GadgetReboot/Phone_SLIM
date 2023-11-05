/*
  mozzi_call_progress.cpp
  Library for generating call progress dtmf audio and playing back audio recorded message samples
  Uses the mozzi synth library

  North American Call Progress Tones
  dial tone     350 Hz + 440 Hz   continuous
  busy signal   480 Hz + 620 Hz   0.5s on / off cadence
  ring tone     440 Hz + 480 Hz   2s on / 4s off cadence
  off-hook tone 1400 Hz + 2060 Hz + 2450 Hz + 2600 Hz   0.1s on / off cadence

  UK Call Progress Tones
  dial tone     350 Hz + 450 Hz   continuous
  busy signal   400 Hz            0.375s on / off cadence
  ring tone     400 Hz + 450 Hz   0.4s on / 0.2s off / 0.4s on / 2s off cadence
  off-hook tone use North American tones (Wikipedia: "Telephone lines provided by NTL/Virgin Media tend to use the American-style tones")

*/

#include "Arduino.h"
#include "mozzi_call_progress.h"
#include "project_globals.h"
//#include <I2S.h>                    // may be needed by mozzi to compile with certain esp board files
#include <MozziGuts.h>
#include <Oscil.h>                    // oscillator template
#include <Sample.h>                   // sample template
#include <tables/sin2048_int8.h>      // sine table for oscillator

#include "ThisIsARecording1.h"        // audio sampled from https://www.thisisarecording.com/Joyce-Gordon.html
#include "ThisIsARecording2.h"        // and converted to .h files with https://sensorium.github.io/Mozzi/doc/html/char2mozzi_8py.html
#include "ThisIsARecording3.h"
#include <EventDelay.h>

// the audio sample needed to be split into three data arrays to fit and playback properly
// they get played sequentially to play back the entire audio file
// use: Sample <table_size, update_rate> SampleName (wavetable)
Sample <ThisIsARecording1_NUM_CELLS, AUDIO_RATE> aSample1(ThisIsARecording1_DATA);
Sample <ThisIsARecording2_NUM_CELLS, AUDIO_RATE> aSample2(ThisIsARecording2_DATA);
Sample <ThisIsARecording3_NUM_CELLS, AUDIO_RATE> aSample3(ThisIsARecording3_DATA);

byte curSample = 0;                           // track which audio sample should be playing back
byte gain1 = 0;                               // set volume on all of the mozzi output channels
byte gain2 = 0;
byte gain3 = 0;
byte gain4 = 0;

// use #define for CONTROL_RATE, don't use a constant
#define CONTROL_RATE 64                       // Hz, powers of 2 are most reliable

boolean _audioOn = false;                     // whether audio output is muted or not
boolean tonePlaying = false;                  // whether a call progress tone is being played or not
boolean samplePlaying = false;                // whether a sound sample is being played or not
int cadence [] = {0, 0, 0, 0};                // tone cadence (on/off/on/off durations in mS)
byte dtmf_cadence_step = 0;                   // which part of the call progress tone pattern is in progress
unsigned long dtmf_cadence_timer = millis();  // used for on/off timing intervals of dtmf tones

int ringToneFreq1 = 0;                        // tone frequencies and durations for call progress tones
int ringToneFreq2 = 0;
int ringToneFreq3 = 0;
int ringToneFreq4 = 0;

int ringToneCadence1 = 0;
int ringToneCadence2 = 0;
int ringToneCadence3 = 0;
int ringToneCadence4 = 0;

int dialToneFreq1 = 0;
int dialToneFreq2 = 0;
int dialToneFreq3 = 0;
int dialToneFreq4 = 0;

int dialToneCadence1 = 0;
int dialToneCadence2 = 0;
int dialToneCadence3 = 0;
int dialToneCadence4 = 0;

int busyToneFreq1 = 0;
int busyToneFreq2 = 0;
int busyToneFreq3 = 0;
int busyToneFreq4 = 0;

int busyToneCadence1 = 0;
int busyToneCadence2 = 0;
int busyToneCadence3 = 0;
int busyToneCadence4 = 0;

int offHookToneFreq1 = 0;
int offHookToneFreq2 = 0;
int offHookToneFreq3 = 0;
int offHookToneFreq4 = 0;

int offHookToneCadence1 = 0;
int offHookToneCadence2 = 0;
int offHookToneCadence3 = 0;
int offHookToneCadence4 = 0;

// audio osc generators
// Oscil <table_size, update_rate> oscilName (wavetable)
Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> tone1(SIN2048_DATA);
Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> tone2(SIN2048_DATA);
Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> tone3(SIN2048_DATA);
Oscil <SIN2048_NUM_CELLS, AUDIO_RATE> tone4(SIN2048_DATA);

void updateControl() {
  // put any mozzi changing controls in here
}

// mozzi function to generate the audio sample to send to the audio output pin
AudioOutput_t updateAudio() {

  if (tonePlaying) {
    // create an audio signal by summing 4 oscillators
    // and scaling the resulting signal to fit into an 8 bit format
    int8_t audioSignal = (((int8_t)(tone1.next()) + (int8_t)(tone2.next())
                           + (int8_t)(tone3.next()) + (int8_t)(tone4.next())) >> 3);

    // if audio is on, play tones, otherwise the audio level is 0 (off)
    return MonoOutput::from8Bit(_audioOn *  audioSignal);
  }

  if (samplePlaying) {
    int audioSignal = (int)
                      ((long) aSample1.next() * gain1 +
                       aSample2.next() * gain2 +
                       aSample3.next() * gain3);

    return MonoOutput::from8Bit((int) audioSignal);
  }
}

mozzi_call_progress::mozzi_call_progress(byte region)
{
  _region = region;
}

// North America call progress tones
void northAmericaInit() {

  // Ring Tone = 440 Hz + 480 Hz   Cadence 2s on, 4s off
  ringToneFreq1 = 440;
  ringToneFreq2 = 480;
  ringToneFreq3 = 0;
  ringToneFreq4 = 0;

  ringToneCadence1 = 2000;
  ringToneCadence2 = 4000;
  ringToneCadence3 = 0;
  ringToneCadence4 = 0;

  // Dial Tone = 350 Hz + 440 Hz   Cadence always on
  dialToneFreq1 = 350;
  dialToneFreq2 = 440;
  dialToneFreq3 = 0;
  dialToneFreq4 = 0;

  dialToneCadence1 = -1;
  dialToneCadence2 = -1;
  dialToneCadence3 = -1;
  dialToneCadence4 = -1;

  // Busy Tone = 480 Hz + 620 Hz   Cadence 0.5s on, 0.5s off
  busyToneFreq1 = 480;
  busyToneFreq2 = 620;
  busyToneFreq3 = 0;
  busyToneFreq4 = 0;

  busyToneCadence1 = 500;
  busyToneCadence2 = 500;
  busyToneCadence3 = 0;
  busyToneCadence4 = 0;

  // Off Hook Tone = 1400 Hz + 2060 Hz + 2450 Hz + 2600 Hz   Cadence 0.1s on, 0.1s off
  offHookToneFreq1 = 1400;
  offHookToneFreq2 = 2060;
  offHookToneFreq3 = 2450;
  offHookToneFreq4 = 2600;

  offHookToneCadence1 = 100;
  offHookToneCadence2 = 100;
  offHookToneCadence3 = 0;
  offHookToneCadence4 = 0;

}

// UK call progress tones
void ukInit() {

  // Ring Tone = 400 Hz + 450 Hz   0.4s on / 0.2s off / 0.4s on / 2s off cadence
  ringToneFreq1 = 400;
  ringToneFreq2 = 450;
  ringToneFreq3 = 0;
  ringToneFreq4 = 0;

  ringToneCadence1 = 400;
  ringToneCadence2 = 200;
  ringToneCadence3 = 400;
  ringToneCadence4 = 2000;

  // Dial Tone = 350 Hz + 450 Hz   Cadence always on
  dialToneFreq1 = 350;
  dialToneFreq2 = 450;
  dialToneFreq3 = 0;
  dialToneFreq4 = 0;

  dialToneCadence1 = -1;
  dialToneCadence2 = -1;
  dialToneCadence3 = -1;
  dialToneCadence4 = -1;

  // Busy Tone = 400 Hz    0.375s on / 0.375s off cadence
  busyToneFreq1 = 400;
  busyToneFreq2 = 0;
  busyToneFreq3 = 0;
  busyToneFreq4 = 0;

  busyToneCadence1 = 375;
  busyToneCadence2 = 375;
  busyToneCadence3 = 0;
  busyToneCadence4 = 0;

  // Off Hook Tone = 1400 Hz + 2060 Hz + 2450 Hz + 2600 Hz   Cadence 0.1s on, 0.1s off
  offHookToneFreq1 = 1400;
  offHookToneFreq2 = 2060;
  offHookToneFreq3 = 2450;
  offHookToneFreq4 = 2600;

  offHookToneCadence1 = 100;
  offHookToneCadence2 = 100;
  offHookToneCadence3 = 0;
  offHookToneCadence4 = 0;

}

void mozzi_call_progress::startup() {
  _audioOn = false;
  tonePlaying = false;
  samplePlaying = false;

  switch (_region) {
    case northAmerica:
      northAmericaInit();
      break;

    case uk:
      ukInit();
      break;

    default:
      northAmericaInit();
      break;
  }

  // init mozzi synth oscillators, starting with 0 Hz (no output)
  startMozzi(CONTROL_RATE);
  tone1.setFreq(0);
  tone2.setFreq(0);
  tone3.setFreq(0);
  tone4.setFreq(0);

  aSample1.setFreq((float) ThisIsARecording1_SAMPLERATE / (float) ThisIsARecording1_NUM_CELLS); // play at the speed it was recorded
  aSample2.setFreq((float) ThisIsARecording2_SAMPLERATE / (float) ThisIsARecording2_NUM_CELLS); // play at the speed it was recorded
  aSample3.setFreq((float) ThisIsARecording3_SAMPLERATE / (float) ThisIsARecording3_NUM_CELLS); // play at the speed it was recorded
}

void mozzi_call_progress::update() {
  audioHook();                       // handle mozzi operations periodically

  if (tonePlaying) {
    // since the cadence is tone on/off/on/off for dtmf_cadence_step 0 to 3,
    // mute audio when cadence step is odd (1 or 3)
    // enable audio when cadence step is even (0 or 2) or if cadence is always-on (-1)
    if (cadence[0] == -1) {
      _audioOn = true;
    }
    else
    {
      if ((dtmf_cadence_step % 2) == 0) {
        _audioOn = true;
      }
      else {
        _audioOn = false;
      }

      // track how long the tone pattern has been playing and advance to the next cadence step
      if ((unsigned long)(millis() - dtmf_cadence_timer) > cadence[dtmf_cadence_step]) {
        dtmf_cadence_timer = millis();
        dtmf_cadence_step++;                               // go to next part of the tone pattern
        if (dtmf_cadence_step >= 4) dtmf_cadence_step = 0; // start at cadence step 0 after the pattern has completed
      }
    }
  }

  if (samplePlaying) {

    if (curSample == 1 && !aSample1.isPlaying()) {
      gain1 = 0;
      gain2 = 1;
      gain3 = 0;
      gain4 = 0;
      curSample = 2;
      aSample2.start();
    }

    if (curSample == 2 && !aSample2.isPlaying()) {
      gain1 = 0;
      gain2 = 0;
      gain3 = 1;
      gain4 = 0;
      curSample = 3;
      aSample3.start();
    }

    if (curSample == 3 && !aSample3.isPlaying()) {
      gain1 = 1;
      gain2 = 0;
      gain3 = 0;
      gain4 = 0;
      curSample = 1;
      aSample1.start();
    }
  }
}

// stop tone playback
void mozzi_call_progress::audioStop()  {
  _audioOn = false;
  tonePlaying = false;
  samplePlaying = false;
  tone1.setFreq(0);
  tone2.setFreq(0);
  tone3.setFreq(0);
  tone4.setFreq(0);
}

// start playing ring tone
void mozzi_call_progress::ringToneStart() {
  tone1.setFreq(ringToneFreq1);
  tone2.setFreq(ringToneFreq2);
  tone3.setFreq(ringToneFreq3);
  tone4.setFreq(ringToneFreq4);

  cadence[0] = ringToneCadence1;
  cadence[1] = ringToneCadence2;
  cadence[2] = ringToneCadence3;
  cadence[3] = ringToneCadence4;

  // enable playback and start at the beginning of the cadence pattern
  _audioOn = true;
  tonePlaying = true;
  dtmf_cadence_step = 0;
  dtmf_cadence_timer = millis();
}

// start playing dial tone
void mozzi_call_progress::dialToneStart() {
  tone1.setFreq(dialToneFreq1);
  tone2.setFreq(dialToneFreq2);
  tone3.setFreq(dialToneFreq3);
  tone4.setFreq(dialToneFreq4);

  cadence[0] = dialToneCadence1;
  cadence[1] = dialToneCadence2;
  cadence[2] = dialToneCadence3;
  cadence[3] = dialToneCadence4;

  // enable playback and start at the beginning of the cadence pattern
  _audioOn = true;
  tonePlaying = true;
  dtmf_cadence_step = 0;
  dtmf_cadence_timer = millis();
}

// start playing busy tone
void mozzi_call_progress::busyToneStart() {
  tone1.setFreq(busyToneFreq1);
  tone2.setFreq(busyToneFreq2);
  tone3.setFreq(busyToneFreq3);
  tone4.setFreq(busyToneFreq4);

  cadence[0] = busyToneCadence1;
  cadence[1] = busyToneCadence2;
  cadence[2] = busyToneCadence3;
  cadence[3] = busyToneCadence4;

  // enable playback and start at the beginning of the cadence pattern
  _audioOn = true;
  tonePlaying = true;
  dtmf_cadence_step = 0;
  dtmf_cadence_timer = millis();
}

// start playing off hook howler tone
void mozzi_call_progress::howlerToneStart() {
  tone1.setFreq(offHookToneFreq1);
  tone2.setFreq(offHookToneFreq2);
  tone3.setFreq(offHookToneFreq3);
  tone4.setFreq(offHookToneFreq4);

  cadence[0] = offHookToneCadence1;
  cadence[1] = offHookToneCadence2;
  cadence[2] = offHookToneCadence3;
  cadence[3] = offHookToneCadence4;

  // enable playback and start at the beginning of the cadence pattern
  _audioOn = true;
  tonePlaying = true;
  dtmf_cadence_step = 0;
  dtmf_cadence_timer = millis();
}


// start playing "this is a recording"
void mozzi_call_progress::thisIsARecordingStart() {
  _audioOn = true;
  samplePlaying = true;
  gain1 = 1;
  curSample = 1;
  aSample1.start();
}
