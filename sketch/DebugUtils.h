/*
DebugUtils.h - debug printing

Ideas taken from:
http://www.arduino.cc/cgi-bin/yabb2/YaBB.pl?num=1271517197

include these lines in a sketch to enable debug printing
#define DEBUG                     
#include "DebugUtils.h"

*/

#ifndef DEBUGUTILS_H
#define DEBUGUTILS_H

/*
#ifdef DEBUG
#define DEBUG_PRINT(str)    \
    Serial.print(millis());     \
    Serial.print(": ");    \
    Serial.print(__PRETTY_FUNCTION__); \
    Serial.print(' ');      \
    Serial.print(__FILE__);     \
    Serial.print(':');      \
    Serial.print(__LINE__);     \
    Serial.print(' ');      \
    Serial.println(str);
#else
#define DEBUG_PRINT(str)
#endif
*/

#ifdef DEBUG
  #define DEBUG_PRINT(x)     Serial.print (x)
  #define DEBUG_PRINTLN(x)  Serial.println (x)
#else
  #define DEBUG_PRINT(x)
  #define DEBUG_PRINTLN(x) 
#endif

#endif
