EESchema Schematic File Version 4
LIBS:GR_Subscriber_Line_Interface_Module-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Subscriber Line Interface Module"
Date "2023-11-10"
Rev "1b"
Comp "Gadget Reboot"
Comment1 "https://www.youtube.com/@gadgetreboot"
Comment2 "https://github.com/GadgetReboot/Phone_SLIM"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:LM358 U?
U 3 1 64DA59C4
P 2700 6375
AR Path="/64DA59C4" Ref="U?"  Part="3" 
AR Path="/64D8E8C8/64DA59C4" Ref="U5"  Part="3" 
F 0 "U5" H 2700 6425 50  0000 L CNN
F 1 "LM358" H 2700 6325 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2700 6375 50  0001 C CNN
F 3 "~" H 2700 6375 50  0001 C CNN
	3    2700 6375
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 64DA59E8
P 2600 5900
AR Path="/64DA59E8" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64DA59E8" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 2600 5750 50  0001 C CNN
F 1 "+5V" H 2615 6073 50  0000 C CNN
F 2 "" H 2600 5900 50  0001 C CNN
F 3 "" H 2600 5900 50  0001 C CNN
	1    2600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6875 2600 6700
$Comp
L Device:C_Small C?
U 1 1 64DA5A2B
P 2350 6050
AR Path="/636337CE/64DA5A2B" Ref="C?"  Part="1" 
AR Path="/64DA5A2B" Ref="C?"  Part="1" 
AR Path="/64D8E8C8/64DA5A2B" Ref="C25"  Part="1" 
F 0 "C25" V 2150 6050 50  0000 C CNN
F 1 "100nF" V 2225 6050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2350 6050 50  0001 C CNN
F 3 "~" H 2350 6050 50  0001 C CNN
	1    2350 6050
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64DA5A31
P 2175 6125
AR Path="/64DA5A31" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64DA5A31" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 2175 5875 50  0001 C CNN
F 1 "GNDREF" H 2425 5850 50  0001 C CNN
F 2 "" H 2175 6125 50  0001 C CNN
F 3 "" H 2175 6125 50  0001 C CNN
	1    2175 6125
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-5.0 U?
U 1 1 64DA5A80
P 8100 2425
AR Path="/64DA5A80" Ref="U?"  Part="1" 
AR Path="/64D8E8C8/64DA5A80" Ref="U6"  Part="1" 
F 0 "U6" H 8100 2667 50  0000 C CNN
F 1 "LD1117AV33" H 8100 2576 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8100 2625 50  0001 C CNN
F 3 "" H 8200 2175 50  0001 C CNN
	1    8100 2425
	1    0    0    -1  
$EndComp
$Comp
L dk_Barrel-Power-Connectors:PJ-202A J?
U 1 1 64DA5A8F
P 2900 2900
AR Path="/64DA5A8F" Ref="J?"  Part="1" 
AR Path="/64D8E8C8/64DA5A8F" Ref="J10"  Part="1" 
F 0 "J10" H 2833 3125 50  0000 C CNN
F 1 "PJ-202A" H 2833 3034 50  0000 C CNN
F 2 "digikey-footprints:Barrel_Jack_5.5mmODx2.1mmID_PJ-202A" H 3100 3100 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/pj-202a.pdf" H 3100 3200 60  0001 L CNN
F 4 "CP-202A-ND" H 3100 3300 60  0001 L CNN "Digi-Key_PN"
F 5 "PJ-202A" H 3100 3400 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 3100 3500 60  0001 L CNN "Category"
F 7 "Barrel - Power Connectors" H 3100 3600 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/pj-202a.pdf" H 3100 3700 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/PJ-202A/CP-202A-ND/252007" H 3100 3800 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN PWR JACK 2X5.5MM KINKED PIN" H 3100 3900 60  0001 L CNN "Description"
F 11 "CUI Inc." H 3100 4000 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3100 4100 60  0001 L CNN "Status"
	1    2900 2900
	1    0    0    -1  
$EndComp
$Comp
L dk_Diodes-Rectifiers-Single:1N5817 D?
U 1 1 64DA5A9E
P 4675 2325
AR Path="/64DA5A9E" Ref="D?"  Part="1" 
AR Path="/64D8E8C8/64DA5A9E" Ref="D9"  Part="1" 
F 0 "D9" V 4728 2247 60  0000 R CNN
F 1 "1N5817" V 4622 2247 60  0000 R CNN
F 2 "digikey-footprints:DO-41" H 4875 2525 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/1N5817-D.PDF" H 4875 2625 60  0001 L CNN
F 4 "1N5817FSCT-ND" H 4875 2725 60  0001 L CNN "Digi-Key_PN"
F 5 "1N5817" H 4875 2825 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4875 2925 60  0001 L CNN "Category"
F 7 "Diodes - Rectifiers - Single" H 4875 3025 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/1N5817-D.PDF" H 4875 3125 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/1N5817/1N5817FSCT-ND/1532776" H 4875 3225 60  0001 L CNN "DK_Detail_Page"
F 10 "DIODE SCHOTTKY 20V 1A DO41" H 4875 3325 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4875 3425 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4875 3525 60  0001 L CNN "Status"
	1    4675 2325
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 64DA5AB9
P 4675 3100
AR Path="/64DA5AB9" Ref="C?"  Part="1" 
AR Path="/64D8E8C8/64DA5AB9" Ref="C20"  Part="1" 
F 0 "C20" H 4475 3125 50  0000 L CNN
F 1 "10uF" H 4425 3050 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4675 3100 50  0001 C CNN
F 3 "~" H 4675 3100 50  0001 C CNN
	1    4675 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 64DA5ABF
P 8975 2625
AR Path="/64DA5ABF" Ref="C?"  Part="1" 
AR Path="/64D8E8C8/64DA5ABF" Ref="C19"  Part="1" 
F 0 "C19" H 8775 2650 50  0000 L CNN
F 1 "10uF" H 8725 2575 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8975 2625 50  0001 C CNN
F 3 "~" H 8975 2625 50  0001 C CNN
	1    8975 2625
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 64DA5AC5
P 7650 2625
AR Path="/636337CE/64DA5AC5" Ref="C?"  Part="1" 
AR Path="/64DA5AC5" Ref="C?"  Part="1" 
AR Path="/64D8E8C8/64DA5AC5" Ref="C18"  Part="1" 
F 0 "C18" H 7475 2600 50  0000 C CNN
F 1 "100nF" H 7500 2525 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7650 2625 50  0001 C CNN
F 3 "~" H 7650 2625 50  0001 C CNN
	1    7650 2625
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 64DA5ACB
P 5125 1875
AR Path="/64DA5ACB" Ref="J?"  Part="1" 
AR Path="/64D8E8C8/64DA5ACB" Ref="J8"  Part="1" 
F 0 "J8" H 5205 1871 50  0000 L CNN
F 1 "Conn_01x03" H 5205 1826 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5125 1875 50  0001 C CNN
F 3 "~" H 5125 1875 50  0001 C CNN
	1    5125 1875
	-1   0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U?
U 7 1 64DAD1EB
P 3525 6400
AR Path="/64DAD1EB" Ref="U?"  Part="7" 
AR Path="/64D8E8C8/64DAD1EB" Ref="U3"  Part="7" 
F 0 "U3" H 3755 6446 50  0000 L CNN
F 1 "4050" H 3755 6355 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 3525 6400 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 3525 6400 50  0001 C CNN
	7    3525 6400
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 64E5DA8F
P 2950 1375
AR Path="/64E5DA8F" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64E5DA8F" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 2950 1225 50  0001 C CNN
F 1 "VBUS" H 2965 1548 50  0000 C CNN
F 2 "" H 2950 1375 50  0001 C CNN
F 3 "" H 2950 1375 50  0001 C CNN
	1    2950 1375
	1    0    0    -1  
$EndComp
Text HLabel 2825 1550 0    50   UnSpc ~ 0
VBUS
Text HLabel 2825 1675 0    50   UnSpc ~ 0
GND
$Comp
L power:GNDREF #PWR?
U 1 1 64E721E3
P 2950 1700
AR Path="/64E721E3" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64E721E3" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64E721E3" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 2950 1450 50  0001 C CNN
F 1 "GNDREF" H 3200 1425 50  0001 C CNN
F 2 "" H 2950 1700 50  0001 C CNN
F 3 "" H 2950 1700 50  0001 C CNN
	1    2950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2825 1550 2950 1550
Wire Wire Line
	2950 1375 2950 1550
Wire Wire Line
	2950 1675 2950 1700
Text HLabel 9600 1875 2    50   UnSpc ~ 0
+5V
Text HLabel 9600 2425 2    50   UnSpc ~ 0
+3.3V
Text HLabel 9600 3700 2    50   UnSpc ~ 0
VSS
$Comp
L Regulator_SwitchedCapacitor:ICL7660 U7
U 1 1 64E862A5
P 7975 4000
F 0 "U7" H 7975 4567 50  0000 C CNN
F 1 "ICL7660" H 7975 4476 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 8075 3900 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/ICL7660-MAX1044.pdf" H 8075 3900 50  0001 C CNN
	1    7975 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 64E86C4D
P 7350 3850
AR Path="/64E86C4D" Ref="C?"  Part="1" 
AR Path="/64D8E8C8/64E86C4D" Ref="C21"  Part="1" 
F 0 "C21" H 7150 3875 50  0000 L CNN
F 1 "10uF" H 7075 3800 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7350 3850 50  0001 C CNN
F 3 "~" H 7350 3850 50  0001 C CNN
	1    7350 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 64E87235
P 8850 3850
AR Path="/64E87235" Ref="C?"  Part="1" 
AR Path="/64D8E8C8/64E87235" Ref="C22"  Part="1" 
F 0 "C22" H 8650 3875 50  0000 L CNN
F 1 "10uF" H 8575 3800 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8850 3850 50  0001 C CNN
F 3 "~" H 8850 3850 50  0001 C CNN
	1    8850 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 1550 4675 1550
Wire Wire Line
	5400 1550 5400 1775
Wire Wire Line
	5400 1775 5325 1775
Connection ~ 2950 1550
Wire Wire Line
	4675 2125 4675 1550
Connection ~ 4675 1550
Wire Wire Line
	4675 1550 5400 1550
Wire Wire Line
	4675 2900 4675 2525
Wire Wire Line
	4675 3000 4675 2900
$Comp
L power:GNDREF #PWR?
U 1 1 64EA3F5E
P 3075 3200
AR Path="/64EA3F5E" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64EA3F5E" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 3075 2950 50  0001 C CNN
F 1 "GNDREF" H 3325 2925 50  0001 C CNN
F 2 "" H 3075 3200 50  0001 C CNN
F 3 "" H 3075 3200 50  0001 C CNN
	1    3075 3200
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64EA5461
P 4675 3300
AR Path="/64EA5461" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64EA5461" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 4675 3050 50  0001 C CNN
F 1 "GNDREF" H 4925 3025 50  0001 C CNN
F 2 "" H 4675 3300 50  0001 C CNN
F 3 "" H 4675 3300 50  0001 C CNN
	1    4675 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 3000 3075 3000
Wire Wire Line
	3075 3000 3075 3100
Wire Wire Line
	3000 3100 3075 3100
Connection ~ 3075 3100
Wire Wire Line
	3075 3100 3075 3200
Wire Wire Line
	4675 3300 4675 3200
$Comp
L power:+5V #PWR?
U 1 1 64EAC473
P 5650 1675
AR Path="/64EAC473" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64EAC473" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 5650 1525 50  0001 C CNN
F 1 "+5V" H 5650 1825 50  0000 C CNN
F 2 "" H 5650 1675 50  0001 C CNN
F 3 "" H 5650 1675 50  0001 C CNN
	1    5650 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 1875 5650 1875
Wire Wire Line
	5650 1875 5650 1675
Wire Wire Line
	5400 2900 5400 1975
Wire Wire Line
	5400 1975 5325 1975
Connection ~ 4675 2900
Wire Wire Line
	4675 2900 5400 2900
$Comp
L power:GNDREF #PWR?
U 1 1 64EBC283
P 7650 2825
AR Path="/64EBC283" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64EBC283" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 7650 2575 50  0001 C CNN
F 1 "GNDREF" H 7900 2550 50  0001 C CNN
F 2 "" H 7650 2825 50  0001 C CNN
F 3 "" H 7650 2825 50  0001 C CNN
	1    7650 2825
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64EBC8F2
P 8100 2825
AR Path="/64EBC8F2" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64EBC8F2" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 8100 2575 50  0001 C CNN
F 1 "GNDREF" H 8350 2550 50  0001 C CNN
F 2 "" H 8100 2825 50  0001 C CNN
F 3 "" H 8100 2825 50  0001 C CNN
	1    8100 2825
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64EBD37B
P 8975 2825
AR Path="/64EBD37B" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64EBD37B" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 8975 2575 50  0001 C CNN
F 1 "GNDREF" H 9225 2550 50  0001 C CNN
F 2 "" H 8975 2825 50  0001 C CNN
F 3 "" H 8975 2825 50  0001 C CNN
	1    8975 2825
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7650 2525 7650 2425
Wire Wire Line
	7800 2425 7650 2425
Wire Wire Line
	7650 2825 7650 2725
Wire Wire Line
	8100 2825 8100 2725
Wire Wire Line
	8975 2825 8975 2725
Wire Wire Line
	8975 2525 8975 2425
Wire Wire Line
	8975 2425 8850 2425
Text Label 3325 2900 0    50   ~ 0
5V_EXT
Connection ~ 8975 2425
Text Notes 5425 2550 0    100  ~ 0
Power Source Jumper\n1-2: USB\n2-3: Ext.
$Comp
L power:GNDREF #PWR?
U 1 1 64ECA55C
P 7350 4025
AR Path="/64ECA55C" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64ECA55C" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 7350 3775 50  0001 C CNN
F 1 "GNDREF" H 7600 3750 50  0001 C CNN
F 2 "" H 7350 4025 50  0001 C CNN
F 3 "" H 7350 4025 50  0001 C CNN
	1    7350 4025
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7350 3750 7350 3700
Wire Wire Line
	7575 3700 7350 3700
Connection ~ 7350 3700
Wire Wire Line
	7350 3950 7350 4025
$Comp
L power:GNDREF #PWR?
U 1 1 64ED630F
P 8850 4000
AR Path="/64ED630F" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64ED630F" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 8850 3750 50  0001 C CNN
F 1 "GNDREF" H 9100 3725 50  0001 C CNN
F 2 "" H 8850 4000 50  0001 C CNN
F 3 "" H 8850 4000 50  0001 C CNN
	1    8850 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 4000 8850 3950
Wire Wire Line
	8375 3700 8625 3700
Wire Wire Line
	8850 3700 8850 3750
$Comp
L Device:CP1_Small C?
U 1 1 64EDA25B
P 8575 4100
AR Path="/64EDA25B" Ref="C?"  Part="1" 
AR Path="/64D8E8C8/64EDA25B" Ref="C23"  Part="1" 
F 0 "C23" H 8375 4125 50  0000 L CNN
F 1 "10uF" H 8300 4050 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8575 4100 50  0001 C CNN
F 3 "~" H 8575 4100 50  0001 C CNN
	1    8575 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8375 3900 8575 3900
Wire Wire Line
	8575 3900 8575 4000
Wire Wire Line
	8575 4200 8575 4300
Wire Wire Line
	8575 4300 8375 4300
Connection ~ 8850 3700
$Comp
L power:GNDREF #PWR?
U 1 1 64EE7131
P 7975 4550
AR Path="/64EE7131" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64EE7131" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 7975 4300 50  0001 C CNN
F 1 "GNDREF" H 8225 4275 50  0001 C CNN
F 2 "" H 7975 4550 50  0001 C CNN
F 3 "" H 7975 4550 50  0001 C CNN
	1    7975 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7975 4550 7975 4500
Wire Wire Line
	8850 3700 9600 3700
Text Notes 7600 4975 0    100  ~ 0
Op Amp Negative\nSupply Rail
Text Notes 1675 3425 0    100  ~ 0
Ext. Power\n5V Input
Connection ~ 7650 2425
Wire Wire Line
	8975 2425 9200 2425
Text Notes 7600 3200 0    100  ~ 0
3.3V Supply Rail
Connection ~ 5650 1875
Wire Wire Line
	5650 1875 7350 1875
$Comp
L power:VSS #PWR070
U 1 1 64F4FEE8
P 8850 3600
F 0 "#PWR070" H 8850 3450 50  0001 C CNN
F 1 "VSS" H 8867 3773 50  0000 C CNN
F 2 "" H 8850 3600 50  0001 C CNN
F 3 "" H 8850 3600 50  0001 C CNN
	1    8850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3600 8850 3700
$Comp
L power:VSS #PWR080
U 1 1 64F5247D
P 2600 6875
F 0 "#PWR080" H 2600 6725 50  0001 C CNN
F 1 "VSS" H 2618 7048 50  0000 C CNN
F 2 "" H 2600 6875 50  0001 C CNN
F 3 "" H 2600 6875 50  0001 C CNN
	1    2600 6875
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 5900 2600 6050
$Comp
L Device:C_Small C?
U 1 1 64F63276
P 2350 6700
AR Path="/636337CE/64F63276" Ref="C?"  Part="1" 
AR Path="/64F63276" Ref="C?"  Part="1" 
AR Path="/64D8E8C8/64F63276" Ref="C26"  Part="1" 
F 0 "C26" V 2175 6700 50  0000 C CNN
F 1 "100nF" V 2250 6700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2350 6700 50  0001 C CNN
F 3 "~" H 2350 6700 50  0001 C CNN
	1    2350 6700
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64F63DE5
P 2175 6775
AR Path="/64F63DE5" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64F63DE5" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 2175 6525 50  0001 C CNN
F 1 "GNDREF" H 2425 6500 50  0001 C CNN
F 2 "" H 2175 6775 50  0001 C CNN
F 3 "" H 2175 6775 50  0001 C CNN
	1    2175 6775
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2175 6050 2250 6050
Wire Wire Line
	2450 6050 2600 6050
Connection ~ 2600 6050
Wire Wire Line
	2600 6050 2600 6075
Wire Wire Line
	2450 6700 2600 6700
Connection ~ 2600 6700
Wire Wire Line
	2600 6700 2600 6675
Wire Wire Line
	2250 6700 2175 6700
Wire Wire Line
	2175 6700 2175 6775
Wire Wire Line
	2175 6050 2175 6125
$Comp
L power:GNDREF #PWR?
U 1 1 64F6FFBB
P 3525 6975
AR Path="/64F6FFBB" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64F6FFBB" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 3525 6725 50  0001 C CNN
F 1 "GNDREF" H 3775 6700 50  0001 C CNN
F 2 "" H 3525 6975 50  0001 C CNN
F 3 "" H 3525 6975 50  0001 C CNN
	1    3525 6975
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR064
U 1 1 64F726E2
P 9375 2350
F 0 "#PWR064" H 9375 2200 50  0001 C CNN
F 1 "+3.3V" H 9390 2523 50  0000 C CNN
F 2 "" H 9375 2350 50  0001 C CNN
F 3 "" H 9375 2350 50  0001 C CNN
	1    9375 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9375 2350 9375 2425
Connection ~ 9200 2425
$Comp
L power:+3.3V #PWR075
U 1 1 64F75C31
P 3525 5850
F 0 "#PWR075" H 3525 5700 50  0001 C CNN
F 1 "+3.3V" H 3540 6023 50  0000 C CNN
F 2 "" H 3525 5850 50  0001 C CNN
F 3 "" H 3525 5850 50  0001 C CNN
	1    3525 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 64F7708A
P 3875 5875
AR Path="/636337CE/64F7708A" Ref="C?"  Part="1" 
AR Path="/64F7708A" Ref="C?"  Part="1" 
AR Path="/64D8E8C8/64F7708A" Ref="C24"  Part="1" 
F 0 "C24" V 3675 5875 50  0000 C CNN
F 1 "100nF" V 3750 5875 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3875 5875 50  0001 C CNN
F 3 "~" H 3875 5875 50  0001 C CNN
	1    3875 5875
	0    -1   1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64F77094
P 4050 5950
AR Path="/64F77094" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/64F77094" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 4050 5700 50  0001 C CNN
F 1 "GNDREF" H 4300 5675 50  0001 C CNN
F 2 "" H 4050 5950 50  0001 C CNN
F 3 "" H 4050 5950 50  0001 C CNN
	1    4050 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5875 3975 5875
Wire Wire Line
	4050 5875 4050 5950
Wire Wire Line
	3525 6975 3525 6900
Wire Wire Line
	3525 5900 3525 5875
Wire Wire Line
	3525 5875 3775 5875
Connection ~ 3525 5875
Wire Wire Line
	3525 5875 3525 5850
$Comp
L Connector:TestPoint TP?
U 1 1 64F8252A
P 4675 1475
AR Path="/64F8252A" Ref="TP?"  Part="1" 
AR Path="/64D8E8C8/64F8252A" Ref="TP9"  Part="1" 
F 0 "TP9" H 4625 1675 50  0000 L CNN
F 1 "TestPoint" V 4720 1663 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 4875 1475 50  0001 C CNN
F 3 "~" H 4875 1475 50  0001 C CNN
	1    4675 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 1475 4675 1550
$Comp
L Connector:TestPoint TP?
U 1 1 64F84963
P 5400 2900
AR Path="/64F84963" Ref="TP?"  Part="1" 
AR Path="/64D8E8C8/64F84963" Ref="TP13"  Part="1" 
F 0 "TP13" V 5400 3100 50  0000 L CNN
F 1 "TestPoint" V 5445 3088 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 5600 2900 50  0001 C CNN
F 3 "~" H 5600 2900 50  0001 C CNN
	1    5400 2900
	0    1    1    0   
$EndComp
Connection ~ 5400 2900
$Comp
L Connector:TestPoint TP?
U 1 1 64F8AEB3
P 9200 2500
AR Path="/64F8AEB3" Ref="TP?"  Part="1" 
AR Path="/64D8E8C8/64F8AEB3" Ref="TP12"  Part="1" 
F 0 "TP12" H 9150 2725 50  0000 L CNN
F 1 "TestPoint" V 9245 2688 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 9400 2500 50  0001 C CNN
F 3 "~" H 9400 2500 50  0001 C CNN
	1    9200 2500
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 64F8BA23
P 8625 3650
AR Path="/64F8BA23" Ref="TP?"  Part="1" 
AR Path="/64D8E8C8/64F8BA23" Ref="TP14"  Part="1" 
F 0 "TP14" H 8575 3850 50  0000 L CNN
F 1 "TestPoint" V 8670 3838 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 8825 3650 50  0001 C CNN
F 3 "~" H 8825 3650 50  0001 C CNN
	1    8625 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2500 9200 2425
Wire Wire Line
	8625 3650 8625 3700
Connection ~ 8625 3700
Wire Wire Line
	8625 3700 8850 3700
$Comp
L Connector:TestPoint TP?
U 1 1 64F8FAD8
P 9200 1800
AR Path="/64F8FAD8" Ref="TP?"  Part="1" 
AR Path="/64D8E8C8/64F8FAD8" Ref="TP11"  Part="1" 
F 0 "TP11" H 9150 2000 50  0000 L CNN
F 1 "TestPoint" V 9245 1988 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 9400 1800 50  0001 C CNN
F 3 "~" H 9400 1800 50  0001 C CNN
	1    9200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1800 9200 1875
Connection ~ 9200 1875
Wire Wire Line
	9200 1875 9600 1875
$Comp
L Connector:TestPoint TP?
U 1 1 64F94977
P 3100 1675
AR Path="/64F94977" Ref="TP?"  Part="1" 
AR Path="/64D8E8C8/64F94977" Ref="TP10"  Part="1" 
F 0 "TP10" V 3100 1850 50  0000 L CNN
F 1 "TestPoint" V 3145 1863 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 3300 1675 50  0001 C CNN
F 3 "~" H 3300 1675 50  0001 C CNN
	1    3100 1675
	0    1    1    0   
$EndComp
Wire Wire Line
	2825 1675 2950 1675
Connection ~ 2950 1675
Wire Wire Line
	2950 1675 3100 1675
Text Notes 2375 7425 0    100  ~ 0
I.C. Decoupling
Text Notes 1625 1750 0    100  ~ 0
ESP32 USB\n5V Supply
Wire Wire Line
	7350 1875 7350 2425
Connection ~ 7350 1875
Wire Wire Line
	7350 1875 9200 1875
Wire Wire Line
	7650 2425 7350 2425
Connection ~ 7350 2425
Wire Wire Line
	7350 2425 7350 3700
$Comp
L dk_Shunts-Jumpers:S1731-46R J9
U 1 1 654229D8
P 8650 2425
F 0 "J9" H 8650 2525 56  0000 C CNN
F 1 "Jumper" H 8650 2350 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 8850 2625 60  0001 L CNN
F 3 "" H 8850 2725 60  0001 L CNN
	1    8650 2425
	1    0    0    -1  
$EndComp
Connection ~ 9375 2425
Wire Wire Line
	9375 2425 9600 2425
Wire Wire Line
	9200 2425 9375 2425
Wire Wire Line
	8450 2425 8400 2425
$Comp
L Connector:Screw_Terminal_01x02 J11
U 1 1 6501B94A
P 2775 3625
F 0 "J11" H 2725 3375 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 2855 3526 50  0001 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2775 3625 50  0001 C CNN
F 3 "~" H 2775 3625 50  0001 C CNN
	1    2775 3625
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 6501FA05
P 3250 3800
AR Path="/6501FA05" Ref="#PWR?"  Part="1" 
AR Path="/64D8E8C8/6501FA05" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 3250 3550 50  0001 C CNN
F 1 "GNDREF" H 3500 3525 50  0001 C CNN
F 2 "" H 3250 3800 50  0001 C CNN
F 3 "" H 3250 3800 50  0001 C CNN
	1    3250 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3250 3800 3250 3725
Wire Wire Line
	3250 3725 2975 3725
Wire Wire Line
	2975 3625 3250 3625
Wire Wire Line
	3250 3625 3250 2900
Connection ~ 3250 2900
Wire Wire Line
	3250 2900 3000 2900
Wire Wire Line
	3250 2900 4675 2900
$EndSCHEMATC
