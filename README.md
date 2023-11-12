# Phone_SLIM
POTS Telephone Subscriber Line Interface Module
<br><br>![PCB](Assembled_PCB.jpg)<BR><BR>
# Usage Notes
> [!NOTE]
> * This project is intended for hobby/personal use to explore how the plain old telephone service works.<br>
> * The PCB isn't designed to integrate with a live phone line. It is intended to create an offline system for local use.<br><br>

* It is recommended to add a TO-220 heat sink to the 3.3v regulator in case it gets too hot. I used [Wakefield-Vette 274-3AB](https://www.digikey.com/en/products/detail/wakefield-vette/274-3AB/2351871)  along with thermal paste and a nut/screw I had around.  <br>
* One pcb is needed for each phone/modem/etc.  One board has to have a jumper installed on J5 to act as a Server node and the other board(s) must have the jumper vacant to act as Sender nodes.<br>
* The Server board must connect to a WiFi router to function properly.  The SSID and Password for the router must be defined by editing the "arduino_secrets.h" file before compiling the sketch.<br>
* The telephone numbers are 7 digits long and are configured by editing the "project_globals.cpp" file and changing the numbers assigned to remotePhoneNumber and localPhoneNumber.<br>
* The region can be configured by uncommenting the desired line in the "project_globals.cpp" file, setting myRegion equal to North America or UK.<br><BR>

* Each board should be powered from an external 5 volt DC supply capable of 500mA since each board can draw several hundred mA.<BR>
* USB power can be used for programming and some testing, but the board may not be as stable as when powered externally.<BR>
* Set the power jumper J8 for USB or EXT as needed.<BR><BR>

# Powering Up Two Nodes
* Power up the Server board first and wait for the blue LED to light up on the ESP module's built in LED to indicate it has joined the WiFi router.<br>
* Then power up the Sender board so it can try to auto-pair with the Server board over ESP-NOW.  In the future, software may be improved so the Sender board will auto-pair whenever the Server board is ready.<BR><BR>

* Check out this similar project being worked on: https://github.com/ktownsend-personal/RetroPhone
<br><br>
Shield: [![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
