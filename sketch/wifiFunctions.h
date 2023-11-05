/*
  wifiFunctions.h
*/
#ifndef wifiFunctions_h
#define wifiFunctions_h

#include "Arduino.h"
#include "arduino_secrets.h"   // ssid and password stored in header file
#include <esp_now.h>
#include <esp_wifi.h>
#include <WiFi.h>
#include "ESPAsyncWebServer.h"
#include "AsyncTCP.h"
#include <ArduinoJson.h>
#include "project_globals.h"
#include "miscFunctions.h"


extern const bool wifiServer;  // logic low  on jumper means wifi Server mode
extern const bool wifiSender;  // logic high on jumper means wifi Sender mode
extern bool wifiMode;          // default to server mode
extern void initServer();
extern void initSender();
extern void sendTrunkMsg(String, String, RequestType, NodeStatus);

#endif
