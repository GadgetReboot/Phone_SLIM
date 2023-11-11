EESchema Schematic File Version 4
LIBS:GR_Subscriber_Line_Interface_Module-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 5
Title "Subscriber Line Interface Module"
Date "2023-11-10"
Rev "1b"
Comp "Gadget Reboot"
Comment1 "https://www.youtube.com/@gadgetreboot"
Comment2 "https://github.com/GadgetReboot/Phone_SLIM"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 9625 3300 0    50   ~ 0
Link\nTo Remote\nNode/Switch
Wire Wire Line
	3525 3100 3525 3050
Wire Wire Line
	3525 2750 3600 2750
Connection ~ 3525 2750
Wire Wire Line
	3525 2850 3525 2750
$Comp
L power:GNDREF #PWR?
U 1 1 64AD73B4
P 3525 3100
AR Path="/64AD73B4" Ref="#PWR?"  Part="1" 
AR Path="/64AC300D/64AD73B4" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 3525 2850 50  0001 C CNN
F 1 "GNDREF" H 3530 2927 50  0001 C CNN
F 2 "" H 3525 3100 50  0001 C CNN
F 3 "" H 3525 3100 50  0001 C CNN
	1    3525 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64AD73BA
P 3525 2950
AR Path="/64AD73BA" Ref="R?"  Part="1" 
AR Path="/64AC300D/64AD73BA" Ref="R28"  Part="1" 
F 0 "R28" H 3650 2925 50  0000 C CNN
F 1 "100K" H 3675 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3525 2950 50  0001 C CNN
F 3 "~" H 3525 2950 50  0001 C CNN
	1    3525 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 2075 3900 2150
Connection ~ 3900 2500
Wire Wire Line
	3900 2450 3900 2500
$Comp
L power:+5V #PWR?
U 1 1 64AD73C3
P 3900 2075
AR Path="/64AD73C3" Ref="#PWR?"  Part="1" 
AR Path="/64AC300D/64AD73C3" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 3900 1925 50  0001 C CNN
F 1 "+5V" H 3915 2248 50  0000 C CNN
F 2 "" H 3900 2075 50  0001 C CNN
F 3 "" H 3900 2075 50  0001 C CNN
	1    3900 2075
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D?
U 1 1 64AD73C9
P 3900 2300
AR Path="/64AD73C9" Ref="D?"  Part="1" 
AR Path="/6369C9EB/64AD73C9" Ref="D?"  Part="1" 
AR Path="/64AC300D/64AD73C9" Ref="D8"  Part="1" 
F 0 "D8" V 3850 2375 50  0000 L CNN
F 1 "1N4004" V 3925 2375 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3900 2300 50  0001 C CNN
F 3 "~" H 3900 2300 50  0001 C CNN
	1    3900 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2500 3900 2550
Wire Wire Line
	4925 2500 3900 2500
Wire Wire Line
	3900 3100 3900 2950
$Comp
L power:GNDREF #PWR?
U 1 1 64AD73D2
P 3900 3100
AR Path="/64AD73D2" Ref="#PWR?"  Part="1" 
AR Path="/64AC300D/64AD73D2" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 3900 2850 50  0001 C CNN
F 1 "GNDREF" H 3905 2927 50  0001 C CNN
F 2 "" H 3900 3100 50  0001 C CNN
F 3 "" H 3900 3100 50  0001 C CNN
	1    3900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2500 5750 2375
Wire Wire Line
	5525 2500 5750 2500
$Comp
L power:+5V #PWR?
U 1 1 64AD73DA
P 5750 2375
AR Path="/64AD73DA" Ref="#PWR?"  Part="1" 
AR Path="/64AC300D/64AD73DA" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 5750 2225 50  0001 C CNN
F 1 "+5V" H 5765 2548 50  0000 C CNN
F 2 "" H 5750 2375 50  0001 C CNN
F 3 "" H 5750 2375 50  0001 C CNN
	1    5750 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 3000 5725 3000
Text Label 4525 3300 0    50   ~ 0
Tip
Text Label 4525 2900 0    50   ~ 0
Ring
$Comp
L Relay:G5V-2 K?
U 1 1 64AD73E6
P 5225 2900
AR Path="/64AD73E6" Ref="K?"  Part="1" 
AR Path="/64AC300D/64AD73E6" Ref="K1"  Part="1" 
F 0 "K1" V 4458 2900 50  0000 C CNN
F 1 "HK19F-DC5V-SHG" V 4549 2900 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 5875 2850 50  0001 L CNN
F 3 "~" H 5025 2900 50  0001 C CNN
F 4 "Ningbo Keke New Era Appliance" V 5225 2900 50  0001 C CNN "MFR"
F 5 "HK19F-DC5V-SHG" V 5225 2900 50  0001 C CNN "MFR P/N"
F 6 "Relay 5V DPDT" V 5225 2900 50  0001 C CNN "Description_"
	1    5225 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 2750 3525 2750
$Comp
L Device:R_Small_US R?
U 1 1 64AD73EF
P 3150 2750
AR Path="/64AD73EF" Ref="R?"  Part="1" 
AR Path="/64AC300D/64AD73EF" Ref="R27"  Part="1" 
F 0 "R27" V 3175 2875 50  0000 C CNN
F 1 "1K" V 3175 2575 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3150 2750 50  0001 C CNN
F 3 "~" H 3150 2750 50  0001 C CNN
	1    3150 2750
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 64AD73F5
P 3800 2750
AR Path="/64AD73F5" Ref="Q?"  Part="1" 
AR Path="/64AC300D/64AD73F5" Ref="Q2"  Part="1" 
F 0 "Q2" H 3990 2796 50  0000 L CNN
F 1 "2N3904" H 3990 2705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4000 2675 50  0001 L CIN
F 3 "~" H 3800 2750 50  0001 L CNN
	1    3800 2750
	1    0    0    -1  
$EndComp
Text Label 8425 3275 0    50   ~ 0
Tip_Sw
Text Label 8425 3175 0    50   ~ 0
Ring_Sw
$Comp
L Device:C_Small C?
U 1 1 64AD73FD
P 5825 3000
AR Path="/64AD73FD" Ref="C?"  Part="1" 
AR Path="/64AC300D/64AD73FD" Ref="C17"  Part="1" 
F 0 "C17" V 5625 2925 50  0000 L CNN
F 1 "1uF 250V" V 5700 2825 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L16.5mm_W5.0mm_P15.00mm_MKT" H 5825 3000 50  0001 C CNN
F 3 "~" H 5825 3000 50  0001 C CNN
	1    5825 3000
	0    1    1    0   
$EndComp
$Comp
L Connector:RJ12 J?
U 1 1 64AD7406
P 9275 3175
AR Path="/64AD7406" Ref="J?"  Part="1" 
AR Path="/64AC300D/64AD7406" Ref="J6"  Part="1" 
F 0 "J6" H 9050 3650 50  0000 R CNN
F 1 "RJ" H 9550 3650 50  0000 R CNN
F 2 "footprints:RJ_6p6c" V 9275 3200 50  0001 C CNN
F 3 "~" V 9275 3200 50  0001 C CNN
F 4 "RJ11 6p6c" H 9275 3175 50  0001 C CNN "Description_"
F 5 "Ckmtw (Shenzhen Cankemeng)" H 9275 3175 50  0001 C CNN "MFR"
F 6 "R-RJ11R06P-A800" H 9275 3175 50  0001 C CNN "MFR P/N"
	1    9275 3175
	-1   0    0    1   
$EndComp
Text Notes 4550 3725 0    100  ~ 0
Ext. Phone Line Switch
$Comp
L Device:Transformer_1P_1S T?
U 1 1 64AD7410
P 7525 3200
AR Path="/64AD7410" Ref="T?"  Part="1" 
AR Path="/64AC300D/64AD7410" Ref="T1"  Part="1" 
F 0 "T1" H 7525 3475 50  0000 C CNN
F 1 "600:600" H 7525 2875 50  0000 C CNN
F 2 "footprints:Transformer_600_600" H 7525 3200 50  0001 C CNN
F 3 "~" H 7525 3200 50  0001 C CNN
F 4 "Audio Transformer 600:600" H 7525 3200 50  0001 C CNN "Description_"
F 5 "Generic: Find on AliExpress etc." H 7525 3200 50  0001 C CNN "MFR"
F 6 "EL14" H 7525 3200 50  0001 C CNN "MFR P/N"
	1    7525 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 3400 6925 3400
Wire Wire Line
	8350 3175 8350 3000
Wire Wire Line
	8350 3000 7925 3000
Wire Wire Line
	8350 3175 8875 3175
Wire Wire Line
	7925 3400 8350 3400
Wire Wire Line
	8350 3400 8350 3275
Wire Wire Line
	8350 3275 8875 3275
Wire Wire Line
	4375 3300 4925 3300
Wire Wire Line
	4275 2900 4925 2900
Text Label 8625 4525 0    50   ~ 0
Tip
Text Label 8625 4425 0    50   ~ 0
Ring
$Comp
L Connector:RJ12 J?
U 1 1 64ADDF80
P 9275 4425
AR Path="/64ADDF80" Ref="J?"  Part="1" 
AR Path="/64AC300D/64ADDF80" Ref="J7"  Part="1" 
F 0 "J7" H 9050 4900 50  0000 R CNN
F 1 "RJ" H 9550 4900 50  0000 R CNN
F 2 "footprints:RJ_6p6c" V 9275 4450 50  0001 C CNN
F 3 "~" V 9275 4450 50  0001 C CNN
F 4 "RJ11 6p6c" H 9275 4425 50  0001 C CNN "Description_"
F 5 "Ckmtw (Shenzhen Cankemeng)" H 9275 4425 50  0001 C CNN "MFR"
F 6 "R-RJ11R06P-A800" H 9275 4425 50  0001 C CNN "MFR P/N"
	1    9275 4425
	-1   0    0    1   
$EndComp
Text Notes 9625 4600 0    50   ~ 0
Local\nTelephony \nDevice
Text HLabel 1600 4425 0    50   BiDi ~ 0
Ring
Text HLabel 1600 2250 0    50   UnSpc ~ 0
+5V
Text HLabel 1600 2375 0    50   UnSpc ~ 0
GND
$Comp
L power:GNDREF #PWR?
U 1 1 64AE6D30
P 1725 2400
AR Path="/64AE6D30" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64AE6D30" Ref="#PWR?"  Part="1" 
AR Path="/64AC300D/64AE6D30" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 1725 2150 50  0001 C CNN
F 1 "GNDREF" H 1975 2125 50  0001 C CNN
F 2 "" H 1725 2400 50  0001 C CNN
F 3 "" H 1725 2400 50  0001 C CNN
	1    1725 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2250 1725 2250
Wire Wire Line
	1725 2075 1725 2250
Wire Wire Line
	1600 2375 1725 2375
Wire Wire Line
	1725 2375 1725 2400
$Comp
L power:+5V #PWR?
U 1 1 64B1CE4F
P 1725 2075
AR Path="/64B1CE4F" Ref="#PWR?"  Part="1" 
AR Path="/64AC300D/64B1CE4F" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 1725 1925 50  0001 C CNN
F 1 "+5V" H 1740 2248 50  0000 C CNN
F 2 "" H 1725 2075 50  0001 C CNN
F 3 "" H 1725 2075 50  0001 C CNN
	1    1725 2075
	-1   0    0    -1  
$EndComp
Text Label 2100 2750 2    50   ~ 0
RouteCall
Text HLabel 1600 2750 0    50   Input ~ 0
RouteCall
Text HLabel 1600 4525 0    50   BiDi ~ 0
Tip
Wire Wire Line
	1600 4425 4275 4425
Wire Wire Line
	1600 4525 4375 4525
Wire Wire Line
	4275 2900 4275 4425
Connection ~ 4275 4425
Wire Wire Line
	4275 4425 8875 4425
Wire Wire Line
	4375 3300 4375 4525
Connection ~ 4375 4525
Wire Wire Line
	4375 4525 8875 4525
Wire Wire Line
	1600 2750 3050 2750
$Comp
L dk_Diodes-Zener-Single:1N5231BTR Z?
U 1 1 64CDD33A
P 6925 2725
AR Path="/64CDD33A" Ref="Z?"  Part="1" 
AR Path="/6369C9EB/64CDD33A" Ref="Z?"  Part="1" 
AR Path="/64AC300D/64CDD33A" Ref="Z3"  Part="1" 
F 0 "Z3" V 6925 2525 60  0000 L CNN
F 1 "BZX55B2V4-TAP" V 7050 1975 60  0000 L CNN
F 2 "digikey-footprints:DO-35" H 7125 2925 60  0001 L CNN
F 3 "" H 7125 3025 60  0001 L CNN
	1    6925 2725
	0    1    1    0   
$EndComp
$Comp
L dk_Diodes-Zener-Single:1N5231BTR Z?
U 1 1 64CDD340
P 6925 3200
AR Path="/64CDD340" Ref="Z?"  Part="1" 
AR Path="/6369C9EB/64CDD340" Ref="Z?"  Part="1" 
AR Path="/64AC300D/64CDD340" Ref="Z4"  Part="1" 
F 0 "Z4" V 6925 3400 60  0000 R CNN
F 1 "BZX55B2V4-TAP" V 6800 3950 60  0000 R CNN
F 2 "digikey-footprints:DO-35" H 7125 3400 60  0001 L CNN
F 3 "" H 7125 3500 60  0001 L CNN
	1    6925 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6925 3000 6925 2925
Wire Wire Line
	5925 3000 6125 3000
Wire Wire Line
	6125 3000 6125 2500
Wire Wire Line
	6125 2500 6925 2500
Wire Wire Line
	6925 2500 6925 2525
Wire Wire Line
	6925 2500 7125 2500
Wire Wire Line
	7125 2500 7125 3000
Connection ~ 6925 2500
Connection ~ 6925 3400
Wire Wire Line
	6925 3400 7125 3400
$EndSCHEMATC
