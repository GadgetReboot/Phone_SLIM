EESchema Schematic File Version 4
LIBS:GR_Subscriber_Line_Interface_Module-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 5
Title "Subscriber Line Interface Module"
Date "2023-11-10"
Rev "1b"
Comp "Gadget Reboot"
Comment1 "https://www.youtube.com/@gadgetreboot"
Comment2 "https://github.com/GadgetReboot/Phone_SLIM"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4925 7850 0    100  ~ 0
Mount Holes
$Comp
L Mechanical:MountingHole MH1
U 1 1 63A7C6F2
P 5125 7325
F 0 "MH1" H 5225 7325 50  0000 L CNN
F 1 "MountingHole" H 5225 7280 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5125 7325 50  0001 C CNN
F 3 "~" H 5125 7325 50  0001 C CNN
	1    5125 7325
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 63A7C977
P 5125 7525
F 0 "MH3" H 5225 7525 50  0000 L CNN
F 1 "MountingHole" H 5225 7480 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5125 7525 50  0001 C CNN
F 3 "~" H 5125 7525 50  0001 C CNN
	1    5125 7525
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 63A7CFFF
P 5500 7325
F 0 "MH2" H 5600 7325 50  0000 L CNN
F 1 "MountingHole" H 5600 7280 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5500 7325 50  0001 C CNN
F 3 "~" H 5500 7325 50  0001 C CNN
	1    5500 7325
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 63A7D379
P 5500 7525
F 0 "MH4" H 5600 7525 50  0000 L CNN
F 1 "MountingHole" H 5600 7480 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5500 7525 50  0001 C CNN
F 3 "~" H 5500 7525 50  0001 C CNN
	1    5500 7525
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4925 8825 4925
Wire Wire Line
	8500 5025 8825 5025
Wire Wire Line
	8500 5125 8825 5125
Wire Wire Line
	8500 5225 8825 5225
Wire Wire Line
	8500 5325 8825 5325
Wire Wire Line
	7700 3875 7300 3875
Wire Wire Line
	7575 5025 7575 5075
Wire Wire Line
	7700 5025 7575 5025
Wire Wire Line
	7575 4925 7575 4875
Wire Wire Line
	7700 4925 7575 4925
Wire Wire Line
	7575 3200 7575 3250
Wire Wire Line
	7700 3200 7575 3200
Wire Wire Line
	7575 3000 7575 2950
Wire Wire Line
	7700 3000 7575 3000
$Comp
L power:GNDREF #PWR012
U 1 1 636B9D98
P 7575 3250
F 0 "#PWR012" H 7575 3000 50  0001 C CNN
F 1 "GNDREF" H 7825 2975 50  0001 C CNN
F 2 "" H 7575 3250 50  0001 C CNN
F 3 "" H 7575 3250 50  0001 C CNN
	1    7575 3250
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR017
U 1 1 636B9959
P 7575 5075
F 0 "#PWR017" H 7575 4825 50  0001 C CNN
F 1 "GNDREF" H 7825 4800 50  0001 C CNN
F 2 "" H 7575 5075 50  0001 C CNN
F 3 "" H 7575 5075 50  0001 C CNN
	1    7575 5075
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 636B91DC
P 7575 4875
F 0 "#PWR015" H 7575 4725 50  0001 C CNN
F 1 "+5V" H 7590 5048 50  0000 C CNN
F 2 "" H 7575 4875 50  0001 C CNN
F 3 "" H 7575 4875 50  0001 C CNN
	1    7575 4875
	1    0    0    -1  
$EndComp
Text Label 8650 3550 0    50   ~ 0
SHK
Text Label 8700 3450 0    50   ~ 0
RM
Text Label 8675 3350 0    50   ~ 0
F_R
Text Label 8725 5325 0    50   ~ 0
SD
Text Label 8725 5225 0    50   ~ 0
Q4
Text Label 8725 5125 0    50   ~ 0
Q3
Text Label 8725 5025 0    50   ~ 0
Q2
Text Label 8725 4925 0    50   ~ 0
Q1
$Sheet
S 7700 4625 800  1050
U 636337CE
F0 "DTMF Decoder" 50
F1 "MT8870.sch" 50
F2 "SD" O R 8500 5325 50 
F3 "Audio_In" I L 7700 5400 50 
F4 "VCC" U L 7700 4925 50 
F5 "GND" U L 7700 5025 50 
F6 "Q4" O R 8500 5225 50 
F7 "Q3" O R 8500 5125 50 
F8 "Q2" O R 8500 5025 50 
F9 "Q1" O R 8500 4925 50 
$EndSheet
$Sheet
S 7700 2775 800  1325
U 6369C9EB
F0 "KS0835F SLIC" 50
F1 "KS0835F.sch" 50
F2 "Ring" B R 8500 3000 50 
F3 "Tip" B R 8500 3100 50 
F4 "Fwd_Rev" I R 8500 3350 50 
F5 "Ring_Mode" I R 8500 3450 50 
F6 "SW_Hook" O R 8500 3550 50 
F7 "Audio_In" I L 7700 3750 50 
F8 "Audio_Out" O L 7700 3875 50 
F9 "SLIC_VCC" U L 7700 3000 50 
F10 "GND" U L 7700 3200 50 
F11 "Aout_Mute" I R 8500 3650 50 
$EndSheet
Text Notes 7725 5950 0    100  ~ 0
DTMF Decoder
Text Notes 7700 4350 0    100  ~ 0
SLIC
Wire Wire Line
	8500 3000 8950 3000
Wire Wire Line
	8500 3100 9050 3100
$Sheet
S 7675 1300 775  800 
U 64AC300D
F0 "Phone Line Interface" 50
F1 "PhoneLineInterface.sch" 50
F2 "Ring" B R 8450 1525 50 
F3 "+5V" U L 7675 1525 50 
F4 "GND" U L 7675 1650 50 
F5 "RouteCall" I L 7675 1900 50 
F6 "Tip" B R 8450 1625 50 
$EndSheet
Text Notes 7650 2500 0    100  ~ 0
Phone Jacks &\nLine Switching
Text Notes 4650 5225 0    50   ~ 0
Short = Server\nOpen = Sender
Text Notes 4475 5500 0    50   ~ 0
Server/Sender\nJumper
Wire Wire Line
	4300 5200 4300 5250
Wire Wire Line
	4375 5200 4300 5200
Wire Wire Line
	4300 5100 4125 5100
Connection ~ 4300 5100
Wire Wire Line
	4300 5050 4300 5100
Wire Wire Line
	4300 4850 4300 4800
Wire Wire Line
	4125 4550 3625 4550
Wire Wire Line
	4125 5100 4125 4550
Wire Wire Line
	4375 5100 4300 5100
$Comp
L Device:R_Small_US R6
U 1 1 64AF0FFB
P 7050 3400
F 0 "R6" H 6950 3375 50  0000 C CNN
F 1 "10K" H 6925 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7050 3400 50  0001 C CNN
F 3 "~" H 7050 3400 50  0001 C CNN
	1    7050 3400
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 64AE7D1E
P 4300 4800
F 0 "#PWR014" H 4300 4650 50  0001 C CNN
F 1 "+3.3V" H 4315 4973 50  0000 C CNN
F 2 "" H 4300 4800 50  0001 C CNN
F 3 "" H 4300 4800 50  0001 C CNN
	1    4300 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR019
U 1 1 64AE75B7
P 4300 5250
F 0 "#PWR019" H 4300 5000 50  0001 C CNN
F 1 "GNDREF" H 4550 4975 50  0001 C CNN
F 2 "" H 4300 5250 50  0001 C CNN
F 3 "" H 4300 5250 50  0001 C CNN
	1    4300 5250
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 64AE6A61
P 4575 5100
F 0 "J5" H 4525 4900 50  0000 L CNN
F 1 "Conn_01x02" H 4655 5001 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4575 5100 50  0001 C CNN
F 3 "~" H 4575 5100 50  0001 C CNN
	1    4575 5100
	1    0    0    -1  
$EndComp
Text Label 3825 3850 0    50   ~ 0
I2S_LRC
$Comp
L esp32_devkit_v1_doit:ESP32_DevKit_V1_DOIT U1
U 1 1 64A538C3
P 3025 3250
F 0 "U1" H 3475 4625 50  0000 C CNN
F 1 "ESP32_DevKit_V1_DOIT" H 3500 1700 50  0000 C CNN
F 2 "footprints:esp32_devkit_v1_doit" H 2575 4600 50  0001 C CNN
F 3 "https://aliexpress.com/item/32864722159.html" H 2575 4600 50  0001 C CNN
	1    3025 3250
	1    0    0    -1  
$EndComp
Text Label 3775 2450 0    50   ~ 0
RouteCall
$Comp
L power:GNDREF #PWR016
U 1 1 636EEEFE
P 2925 4925
F 0 "#PWR016" H 2925 4675 50  0001 C CNN
F 1 "GNDREF" H 3175 4650 50  0001 C CNN
F 2 "" H 2925 4925 50  0001 C CNN
F 3 "" H 2925 4925 50  0001 C CNN
	1    2925 4925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2925 1725 2925 1850
Wire Wire Line
	8950 3000 8950 1525
Wire Wire Line
	8950 1525 8450 1525
Wire Wire Line
	9050 3100 9050 1625
Wire Wire Line
	9050 1625 8450 1625
Wire Wire Line
	7550 1650 7550 1700
Wire Wire Line
	7675 1650 7550 1650
$Comp
L power:GNDREF #PWR03
U 1 1 64B9CC9A
P 7550 1700
F 0 "#PWR03" H 7550 1450 50  0001 C CNN
F 1 "GNDREF" H 7800 1425 50  0001 C CNN
F 2 "" H 7550 1700 50  0001 C CNN
F 3 "" H 7550 1700 50  0001 C CNN
	1    7550 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 1525 7550 1475
Wire Wire Line
	7675 1525 7550 1525
$Comp
L power:+5V #PWR02
U 1 1 64BA1AAB
P 7550 1475
F 0 "#PWR02" H 7550 1325 50  0001 C CNN
F 1 "+5V" H 7565 1648 50  0000 C CNN
F 2 "" H 7550 1475 50  0001 C CNN
F 3 "" H 7550 1475 50  0001 C CNN
	1    7550 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2450 7300 1900
Wire Wire Line
	7300 1900 7675 1900
Wire Wire Line
	3625 2450 7300 2450
Wire Wire Line
	8500 3350 8825 3350
Wire Wire Line
	8500 3450 8825 3450
Wire Wire Line
	8500 3550 8825 3550
Text Label 3825 4050 0    50   ~ 0
Audio_In
Text Label 3875 2950 0    50   ~ 0
LED_R
Text Label 3875 3050 0    50   ~ 0
LED_G
Text Label 3875 2650 0    50   ~ 0
LED_B
$Comp
L Device:LED_RAGB D1
U 1 1 64C50F65
P 6100 1650
F 0 "D1" H 6100 2025 50  0000 C CNN
F 1 "LED_RAGB" H 6100 1275 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 6100 1600 50  0001 C CNN
F 3 "~" H 6100 1600 50  0001 C CNN
	1    6100 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 64C582CE
P 6100 1400
F 0 "#PWR01" H 6100 1250 50  0001 C CNN
F 1 "+3.3V" H 6100 1550 50  0000 C CNN
F 2 "" H 6100 1400 50  0001 C CNN
F 3 "" H 6100 1400 50  0001 C CNN
	1    6100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1450 6100 1400
Wire Wire Line
	3625 2950 4625 2950
Wire Wire Line
	3625 3050 4625 3050
Wire Wire Line
	3625 2650 4625 2650
$Comp
L Device:R_Small_US R1
U 1 1 64C6F6BB
P 4725 2650
F 0 "R1" V 4775 2775 50  0000 C CNN
F 1 "300r" V 4775 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4725 2650 50  0001 C CNN
F 3 "~" H 4725 2650 50  0001 C CNN
	1    4725 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 64C7084A
P 4725 3050
F 0 "R4" V 4775 3175 50  0000 C CNN
F 1 "300r" V 4775 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4725 3050 50  0001 C CNN
F 3 "~" H 4725 3050 50  0001 C CNN
	1    4725 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 64C70D73
P 4725 2950
F 0 "R3" V 4775 3075 50  0000 C CNN
F 1 "300r" V 4775 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4725 2950 50  0001 C CNN
F 3 "~" H 4725 2950 50  0001 C CNN
	1    4725 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3625 2550 4125 2550
Text Label 3850 2550 0    50   ~ 0
SPI_CS
Wire Wire Line
	3625 3650 4125 3650
Text Label 3775 3650 0    50   ~ 0
SPI_MOSI
Wire Wire Line
	3625 3250 4125 3250
Text Label 3800 3250 0    50   ~ 0
SPI_SCK
Wire Wire Line
	3625 3350 4125 3350
Text Label 3775 3350 0    50   ~ 0
SPI_MISO
Text Label 3775 3950 0    50   ~ 0
I2S_BCLK
Wire Wire Line
	8500 3650 8825 3650
Text Label 8575 3650 0    50   ~ 0
A_Mute
$Sheet
S 2650 5900 750  650 
U 64D8E8C8
F0 "Power Rails" 50
F1 "Power.sch" 50
F2 "VBUS" U L 2650 6075 50 
F3 "GND" U L 2650 6225 50 
F4 "+5V" U R 3400 6075 50 
F5 "+3.3V" U R 3400 6225 50 
F6 "VSS" U R 3400 6375 50 
$EndSheet
Text Notes 2550 6800 0    100  ~ 0
Power Supply
$Comp
L power:VBUS #PWR020
U 1 1 64E4EF55
P 2500 5850
F 0 "#PWR020" H 2500 5700 50  0001 C CNN
F 1 "VBUS" H 2515 6023 50  0000 C CNN
F 2 "" H 2500 5850 50  0001 C CNN
F 3 "" H 2500 5850 50  0001 C CNN
	1    2500 5850
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR04
U 1 1 64E4FA9B
P 2925 1725
F 0 "#PWR04" H 2925 1575 50  0001 C CNN
F 1 "VBUS" H 2875 1900 50  0000 C CNN
F 2 "" H 2925 1725 50  0001 C CNN
F 3 "" H 2925 1725 50  0001 C CNN
	1    2925 1725
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 64E55C80
P 3550 5850
F 0 "#PWR021" H 3550 5700 50  0001 C CNN
F 1 "+5V" H 3565 6023 50  0000 C CNN
F 2 "" H 3550 5850 50  0001 C CNN
F 3 "" H 3550 5850 50  0001 C CNN
	1    3550 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 64E55F8F
P 3775 5850
F 0 "#PWR022" H 3775 5700 50  0001 C CNN
F 1 "+3.3V" H 3800 6025 50  0000 C CNN
F 2 "" H 3775 5850 50  0001 C CNN
F 3 "" H 3775 5850 50  0001 C CNN
	1    3775 5850
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR023
U 1 1 64E573FD
P 4000 5850
F 0 "#PWR023" H 4000 5700 50  0001 C CNN
F 1 "VSS" H 4017 6023 50  0000 C CNN
F 2 "" H 4000 5850 50  0001 C CNN
F 3 "" H 4000 5850 50  0001 C CNN
	1    4000 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR024
U 1 1 64FB8693
P 2500 6300
F 0 "#PWR024" H 2500 6050 50  0001 C CNN
F 1 "GNDREF" H 2750 6025 50  0001 C CNN
F 2 "" H 2500 6300 50  0001 C CNN
F 3 "" H 2500 6300 50  0001 C CNN
	1    2500 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 6225 2500 6225
Wire Wire Line
	2500 6225 2500 6300
Wire Wire Line
	2500 5850 2500 6075
Wire Wire Line
	2500 6075 2650 6075
Wire Wire Line
	3400 6075 3550 6075
Wire Wire Line
	3550 6075 3550 5850
Wire Wire Line
	3400 6225 3775 6225
Wire Wire Line
	3775 6225 3775 5850
Wire Wire Line
	3400 6375 4000 6375
Wire Wire Line
	4000 6375 4000 5850
Wire Wire Line
	7700 5400 7300 5400
Wire Wire Line
	7300 3875 7300 4050
Wire Wire Line
	3625 4050 7300 4050
Text Label 3850 3150 0    50   ~ 0
A_Mute
Wire Wire Line
	3625 3150 4125 3150
Text Label 3775 3750 0    50   ~ 0
I2S_DOUT
Text Label 4000 2750 0    50   ~ 0
SD
Text Label 4025 4450 0    50   ~ 0
Q4
Text Label 4025 4350 0    50   ~ 0
Q3
Text Label 4025 4250 0    50   ~ 0
Q2
Text Label 4025 4150 0    50   ~ 0
Q1
NoConn ~ 3025 1850
$Comp
L power:+3.3V #PWR08
U 1 1 65067AAA
P 7575 2950
F 0 "#PWR08" H 7575 2800 50  0001 C CNN
F 1 "+3.3V" H 7550 3100 50  0000 C CNN
F 2 "" H 7575 2950 50  0001 C CNN
F 3 "" H 7575 2950 50  0001 C CNN
	1    7575 2950
	1    0    0    -1  
$EndComp
NoConn ~ 3625 2150
NoConn ~ 3625 2250
NoConn ~ 3625 2350
Wire Wire Line
	4825 2950 5300 2950
Wire Wire Line
	3625 4150 4125 4150
Wire Wire Line
	3625 4250 4125 4250
Wire Wire Line
	3625 4350 4125 4350
Wire Wire Line
	3625 4450 4125 4450
Wire Wire Line
	3625 2750 4125 2750
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 650E9E7B
P 6550 2850
F 0 "J2" V 6550 2300 50  0000 L CNN
F 1 "Conn_01x08" H 6630 2751 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6550 2850 50  0001 C CNN
F 3 "~" H 6550 2850 50  0001 C CNN
	1    6550 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 650F886A
P 6025 3100
F 0 "#PWR09" H 6025 2950 50  0001 C CNN
F 1 "+3.3V" H 6040 3273 50  0000 C CNN
F 2 "" H 6025 3100 50  0001 C CNN
F 3 "" H 6025 3100 50  0001 C CNN
	1    6025 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR011
U 1 1 650F8BF1
P 6850 3200
F 0 "#PWR011" H 6850 2950 50  0001 C CNN
F 1 "GNDREF" H 7100 2925 50  0001 C CNN
F 2 "" H 6850 3200 50  0001 C CNN
F 3 "" H 6850 3200 50  0001 C CNN
	1    6850 3200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 6510C81E
P 6750 3400
F 0 "R5" H 6650 3375 50  0000 C CNN
F 1 "10K" H 6625 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6750 3400 50  0001 C CNN
F 3 "~" H 6750 3400 50  0001 C CNN
	1    6750 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 3050 6950 3275
Wire Wire Line
	6950 3275 7050 3275
Wire Wire Line
	7050 3275 7050 3300
Wire Wire Line
	6750 3050 6750 3300
Wire Wire Line
	7050 3500 7050 3575
Wire Wire Line
	6850 3050 6850 3200
$Comp
L power:GNDREF #PWR010
U 1 1 6512117F
P 6650 3200
F 0 "#PWR010" H 6650 2950 50  0001 C CNN
F 1 "GNDREF" H 6900 2925 50  0001 C CNN
F 2 "" H 6650 3200 50  0001 C CNN
F 3 "" H 6650 3200 50  0001 C CNN
	1    6650 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 3200 6650 3050
Wire Wire Line
	6450 3850 6450 3050
Wire Wire Line
	3625 3850 6450 3850
Wire Wire Line
	6350 3050 6350 3950
Wire Wire Line
	3625 3950 6350 3950
Wire Wire Line
	6250 3050 6250 3175
Wire Wire Line
	6250 3175 6025 3175
Wire Wire Line
	6025 3175 6025 3100
Text Notes 6300 2750 0    50   ~ 0
I2S DAC Module
Wire Wire Line
	7050 3750 7700 3750
$Comp
L Device:R_Small_US R7
U 1 1 6515D850
P 4300 4950
F 0 "R7" H 4200 4925 50  0000 C CNN
F 1 "10K" H 4175 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4300 4950 50  0001 C CNN
F 3 "~" H 4300 4950 50  0001 C CNN
	1    4300 4950
	-1   0    0    1   
$EndComp
Text Notes 6375 5450 0    50   ~ 0
Micro SD Card\nModule
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 65169BE8
P 6875 4775
F 0 "J4" H 6825 4350 50  0000 L CNN
F 1 "Conn_01x06" H 6955 4676 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6875 4775 50  0001 C CNN
F 3 "~" H 6875 4775 50  0001 C CNN
	1    6875 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 4875 6175 4875
Text Label 6500 4875 2    50   ~ 0
SPI_SCK
Wire Wire Line
	6675 4975 6175 4975
Text Label 6525 4975 2    50   ~ 0
SPI_MISO
Wire Wire Line
	6675 4775 6175 4775
Text Label 6525 4775 2    50   ~ 0
SPI_MOSI
Wire Wire Line
	6675 4675 6175 4675
Text Label 6450 4675 2    50   ~ 0
SPI_CS
$Comp
L power:+3.3V #PWR013
U 1 1 6517A187
P 6600 4550
F 0 "#PWR013" H 6600 4400 50  0001 C CNN
F 1 "+3.3V" H 6615 4723 50  0000 C CNN
F 2 "" H 6600 4550 50  0001 C CNN
F 3 "" H 6600 4550 50  0001 C CNN
	1    6600 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR018
U 1 1 6517A4B2
P 6625 5125
F 0 "#PWR018" H 6625 4875 50  0001 C CNN
F 1 "GNDREF" H 6875 4850 50  0001 C CNN
F 2 "" H 6625 5125 50  0001 C CNN
F 3 "" H 6625 5125 50  0001 C CNN
	1    6625 5125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 4550 6600 4575
Wire Wire Line
	6600 4575 6675 4575
Wire Wire Line
	6625 5125 6625 5075
Wire Wire Line
	6625 5075 6675 5075
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 651C471F
P 5300 1575
F 0 "J1" V 5300 1325 50  0000 L CNN
F 1 "Conn_01x03" H 5380 1526 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5300 1575 50  0001 C CNN
F 3 "~" H 5300 1575 50  0001 C CNN
	1    5300 1575
	0    -1   -1   0   
$EndComp
Text Notes 5625 1475 2    50   ~ 0
Addressable LED
$Comp
L power:GNDREF #PWR06
U 1 1 651D6BE1
P 5400 1850
F 0 "#PWR06" H 5400 1600 50  0001 C CNN
F 1 "GNDREF" H 5650 1575 50  0001 C CNN
F 2 "" H 5400 1850 50  0001 C CNN
F 3 "" H 5400 1850 50  0001 C CNN
	1    5400 1850
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 651D728D
P 4975 1750
F 0 "#PWR05" H 4975 1600 50  0001 C CNN
F 1 "+5V" H 4990 1923 50  0000 C CNN
F 2 "" H 4975 1750 50  0001 C CNN
F 3 "" H 4975 1750 50  0001 C CNN
	1    4975 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1850 5200 1775
Wire Wire Line
	5400 1775 5400 1850
Text Notes 6050 1475 2    50   ~ 0
RGB LED
$Comp
L dk_Tactile-Switches:1825910-6 S1
U 1 1 651F186C
P 1900 2150
F 0 "S1" H 1900 2497 60  0000 C CNN
F 1 "1825910-6" H 1900 2391 60  0000 C CNN
F 2 "digikey-footprints:Switch_Tactile_THT_6x6mm" H 2100 2350 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2100 2450 60  0001 L CNN
F 4 "450-1650-ND" H 2100 2550 60  0001 L CNN "Digi-Key_PN"
F 5 "1825910-6" H 2100 2650 60  0001 L CNN "MPN"
F 6 "Switches" H 2100 2750 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 2100 2850 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2100 2950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-alcoswitch-switches/1825910-6/450-1650-ND/1632536" H 2100 3050 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 24V" H 2100 3150 60  0001 L CNN "Description"
F 11 "TE Connectivity ALCOSWITCH Switches" H 2100 3250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2100 3350 60  0001 L CNN "Status"
	1    1900 2150
	1    0    0    -1  
$EndComp
Text Notes 1800 2375 0    50   ~ 0
Reset
$Comp
L power:GNDREF #PWR07
U 1 1 651F2CEE
P 1550 2300
F 0 "#PWR07" H 1550 2050 50  0001 C CNN
F 1 "GNDREF" H 1800 2025 50  0001 C CNN
F 2 "" H 1550 2300 50  0001 C CNN
F 3 "" H 1550 2300 50  0001 C CNN
	1    1550 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2100 2050 2225 2050
Wire Wire Line
	2100 2250 2225 2250
Wire Wire Line
	2225 2250 2225 2050
Connection ~ 2225 2050
Wire Wire Line
	2225 2050 2425 2050
Wire Wire Line
	1700 2250 1550 2250
Wire Wire Line
	1550 2250 1550 2300
Wire Wire Line
	1700 2050 1550 2050
Wire Wire Line
	1550 2050 1550 2250
Connection ~ 1550 2250
Wire Wire Line
	3625 3750 6550 3750
Wire Wire Line
	6550 3050 6550 3750
Wire Wire Line
	5300 2950 5300 2075
Connection ~ 5300 2075
Text Label 4975 2850 0    50   ~ 0
SHK
Text Label 4000 3550 0    50   ~ 0
RM
Text Label 3975 3450 0    50   ~ 0
F_R
Wire Wire Line
	3625 3450 4125 3450
Wire Wire Line
	3625 3550 4125 3550
$Comp
L Device:R_Small_US R2
U 1 1 6545FBFC
P 4725 2850
F 0 "R2" V 4775 2975 50  0000 C CNN
F 1 "10K" V 4775 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4725 2850 50  0001 C CNN
F 3 "~" H 4725 2850 50  0001 C CNN
	1    4725 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4625 2850 4375 2850
Wire Wire Line
	2925 4925 2925 4900
Wire Wire Line
	3025 4850 3025 4900
Wire Wire Line
	3025 4900 2925 4900
Connection ~ 2925 4900
Wire Wire Line
	2925 4900 2925 4850
Connection ~ 7300 4050
Wire Wire Line
	7300 4050 7300 5400
$Comp
L dk_Shunts-Jumpers:S1731-46R J?
U 1 1 65542D91
P 6800 3750
AR Path="/64D8E8C8/65542D91" Ref="J?"  Part="1" 
AR Path="/65542D91" Ref="J3"  Part="1" 
F 0 "J3" H 6800 3850 56  0000 C CNN
F 1 "Jumper" H 6800 3675 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7000 3950 60  0001 L CNN
F 3 "" H 7000 4050 60  0001 L CNN
	1    6800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3500 6750 3575
Wire Wire Line
	6750 3575 7050 3575
Connection ~ 7050 3575
Wire Wire Line
	7050 3575 7050 3750
Wire Wire Line
	6600 3750 6550 3750
Connection ~ 6550 3750
Wire Wire Line
	7000 3750 7050 3750
Connection ~ 7050 3750
Text Label 6350 3375 1    50   ~ 0
I2S_BCLK
Text Label 6450 3325 1    50   ~ 0
I2S_LRC
Text Notes 6550 3300 1    50   ~ 0
I2S DIN
Text Label 6750 3175 1    50   ~ 0
RCH
Text Label 6950 3175 1    50   ~ 0
LCH
Wire Wire Line
	5300 1775 5300 2075
Wire Wire Line
	4975 1850 4975 1750
Wire Wire Line
	4975 1850 5200 1850
Wire Wire Line
	5900 2075 5900 1850
Wire Wire Line
	5300 2075 5900 2075
Wire Wire Line
	4825 2650 5400 2650
Wire Wire Line
	5400 2650 5400 2175
Wire Wire Line
	5400 2175 6300 2175
Wire Wire Line
	6300 2175 6300 1850
Wire Wire Line
	4825 3050 5500 3050
Wire Wire Line
	5500 3050 5500 2275
Wire Wire Line
	5500 2275 6100 2275
Wire Wire Line
	6100 2275 6100 1850
Text Label 3850 2850 0    50   ~ 0
SHK_IN
$Comp
L Connector:TestPoint TP5
U 1 1 65053B20
P 4375 3125
AR Path="/65053B20" Ref="TP5"  Part="1" 
AR Path="/6369C9EB/65053B20" Ref="TP?"  Part="1" 
F 0 "TP5" H 4300 3325 50  0000 L CNN
F 1 "TestPoint" V 4420 3313 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 4575 3125 50  0001 C CNN
F 3 "~" H 4575 3125 50  0001 C CNN
	1    4375 3125
	-1   0    0    1   
$EndComp
Wire Wire Line
	4375 2850 4375 3125
Connection ~ 4375 2850
Wire Wire Line
	4375 2850 3625 2850
Wire Wire Line
	4825 2850 5150 2850
$EndSCHEMATC