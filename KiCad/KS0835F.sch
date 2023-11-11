EESchema Schematic File Version 4
LIBS:GR_Subscriber_Line_Interface_Module-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 5
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
L Device:CP1_Small C?
U 1 1 636CECD4
P 3825 3675
AR Path="/636CECD4" Ref="C?"  Part="1" 
AR Path="/6369C9EB/636CECD4" Ref="C9"  Part="1" 
F 0 "C9" H 3916 3721 50  0000 L CNN
F 1 "10uF" H 3916 3630 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3825 3675 50  0001 C CNN
F 3 "~" H 3825 3675 50  0001 C CNN
	1    3825 3675
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 636CECDA
P 3425 3650
AR Path="/636CECDA" Ref="C?"  Part="1" 
AR Path="/6369C9EB/636CECDA" Ref="C8"  Part="1" 
F 0 "C8" H 3500 3675 50  0000 L CNN
F 1 "100nF" H 3500 3575 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3425 3650 50  0001 C CNN
F 3 "~" H 3425 3650 50  0001 C CNN
	1    3425 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 636CECE0
P 3425 3800
AR Path="/636CECE0" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/636CECE0" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 3425 3550 50  0001 C CNN
F 1 "GNDREF" H 3675 3525 50  0001 C CNN
F 2 "" H 3425 3800 50  0001 C CNN
F 3 "" H 3425 3800 50  0001 C CNN
	1    3425 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3425 3800 3425 3750
Wire Wire Line
	3425 3550 3425 3525
Wire Wire Line
	3825 3575 3825 3525
Wire Wire Line
	3825 3525 3425 3525
$Comp
L power:GNDREF #PWR?
U 1 1 636CECEA
P 3825 3800
AR Path="/636CECEA" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/636CECEA" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 3825 3550 50  0001 C CNN
F 1 "GNDREF" H 4075 3525 50  0001 C CNN
F 2 "" H 3825 3800 50  0001 C CNN
F 3 "" H 3825 3800 50  0001 C CNN
	1    3825 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3825 3800 3825 3775
Wire Wire Line
	4025 3525 3825 3525
Connection ~ 3825 3525
$Comp
L Device:R_Small_US R?
U 1 1 636CECF3
P 2300 1825
AR Path="/636CECF3" Ref="R?"  Part="1" 
AR Path="/6369C9EB/636CECF3" Ref="R11"  Part="1" 
F 0 "R11" H 2425 1800 50  0000 C CNN
F 1 "1 MEG" H 2475 1875 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2300 1825 50  0001 C CNN
F 3 "~" H 2300 1825 50  0001 C CNN
	1    2300 1825
	-1   0    0    1   
$EndComp
$Comp
L KS0835F:KS0835F U?
U 1 1 636CECFA
P 1250 2775
AR Path="/636CECFA" Ref="U?"  Part="1" 
AR Path="/6369C9EB/636CECFA" Ref="U4"  Part="1" 
F 0 "U4" H 1408 3662 60  0000 C CNN
F 1 "KS0835F" H 1408 3556 60  0000 C CNN
F 2 "footprints:KS0835F" H 1450 2975 60  0001 L CNN
F 3 "~" H 1450 3075 60  0001 L CNN
F 4 "RING Subscriber Line Interface Circuit Module" H 1450 3775 60  0001 L CNN "Description_"
	1    1250 2775
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D?
U 1 1 636CED00
P 2850 1625
AR Path="/636CED00" Ref="D?"  Part="1" 
AR Path="/6369C9EB/636CED00" Ref="D2"  Part="1" 
F 0 "D2" H 2800 1725 50  0000 L CNN
F 1 "1N4004" H 2700 1525 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2850 1625 50  0001 C CNN
F 3 "~" H 2850 1625 50  0001 C CNN
	1    2850 1625
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener_ALT D?
U 1 1 636CED06
P 3700 1850
AR Path="/636CED06" Ref="D?"  Part="1" 
AR Path="/6369C9EB/636CED06" Ref="D4"  Part="1" 
F 0 "D4" H 3700 1975 50  0000 C CNN
F 1 "P6KE82" H 3700 1725 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3700 1850 50  0001 C CNN
F 3 "~" H 3700 1850 50  0001 C CNN
	1    3700 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D?
U 1 1 636CED0C
P 3250 1625
AR Path="/636CED0C" Ref="D?"  Part="1" 
AR Path="/6369C9EB/636CED0C" Ref="D3"  Part="1" 
F 0 "D3" H 3200 1725 50  0000 L CNN
F 1 "1N4004" H 3100 1525 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3250 1625 50  0001 C CNN
F 3 "~" H 3250 1625 50  0001 C CNN
	1    3250 1625
	-1   0    0    1   
$EndComp
$Comp
L Device:D_ALT D?
U 1 1 636CED12
P 2850 2075
AR Path="/636CED12" Ref="D?"  Part="1" 
AR Path="/6369C9EB/636CED12" Ref="D5"  Part="1" 
F 0 "D5" H 2800 1975 50  0000 L CNN
F 1 "1N4004" H 2725 2200 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2850 2075 50  0001 C CNN
F 3 "~" H 2850 2075 50  0001 C CNN
	1    2850 2075
	-1   0    0    1   
$EndComp
$Comp
L Device:D_ALT D?
U 1 1 636CED18
P 3250 2075
AR Path="/636CED18" Ref="D?"  Part="1" 
AR Path="/6369C9EB/636CED18" Ref="D6"  Part="1" 
F 0 "D6" H 3200 1975 50  0000 L CNN
F 1 "1N4004" H 3100 2200 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3250 2075 50  0001 C CNN
F 3 "~" H 3250 2075 50  0001 C CNN
	1    3250 2075
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 636CED1E
P 2525 1950
AR Path="/636CED1E" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/636CED1E" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 2525 1700 50  0001 C CNN
F 1 "GNDREF" H 2775 1675 50  0001 C CNN
F 2 "" H 2525 1950 50  0001 C CNN
F 3 "" H 2525 1950 50  0001 C CNN
	1    2525 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2700 1625 2675 1625
Wire Wire Line
	2675 1625 2675 1850
Wire Wire Line
	2675 1850 2675 2075
Wire Wire Line
	2675 2075 2700 2075
Connection ~ 2675 1850
Wire Wire Line
	3400 2075 3450 2075
Wire Wire Line
	3450 2075 3450 1850
Wire Wire Line
	3450 1625 3400 1625
Wire Wire Line
	3550 1850 3450 1850
Connection ~ 3450 1850
Wire Wire Line
	3450 1850 3450 1625
$Comp
L power:GNDREF #PWR?
U 1 1 636CED2F
P 3975 1950
AR Path="/636CED2F" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/636CED2F" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 3975 1700 50  0001 C CNN
F 1 "GNDREF" H 4225 1675 50  0001 C CNN
F 2 "" H 3975 1950 50  0001 C CNN
F 3 "" H 3975 1950 50  0001 C CNN
	1    3975 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3975 1950 3975 1850
Wire Wire Line
	3975 1850 3850 1850
Wire Wire Line
	3000 2075 3050 2075
Wire Wire Line
	3100 1625 3050 1625
Wire Wire Line
	2525 1850 2525 1950
Wire Wire Line
	2525 1850 2675 1850
Wire Wire Line
	1750 2325 2300 2325
Wire Wire Line
	3050 2325 3050 2075
Connection ~ 3050 2075
Wire Wire Line
	3050 2075 3100 2075
Wire Wire Line
	1750 2225 1975 2225
Wire Wire Line
	1975 2225 1975 1325
Wire Wire Line
	1975 1325 2300 1325
Wire Wire Line
	3050 1325 3050 1625
Connection ~ 3050 1625
Wire Wire Line
	3050 1625 3000 1625
Connection ~ 3050 2325
Connection ~ 3050 1325
Wire Wire Line
	2300 1925 2300 2325
Connection ~ 2300 2325
Wire Wire Line
	2300 2325 3050 2325
Wire Wire Line
	2300 1725 2300 1325
Connection ~ 2300 1325
Wire Wire Line
	2300 1325 3050 1325
$Comp
L Device:D_ALT D?
U 1 1 636CED4D
P 2075 3625
AR Path="/636CED4D" Ref="D?"  Part="1" 
AR Path="/6369C9EB/636CED4D" Ref="D7"  Part="1" 
F 0 "D7" H 2025 3725 50  0000 L CNN
F 1 "1N4148" H 1950 3800 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2075 3625 50  0001 C CNN
F 3 "~" H 2075 3625 50  0001 C CNN
	1    2075 3625
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 3625 1925 3625
$Comp
L power:VCC #PWR?
U 1 1 636CED54
P 4025 3475
AR Path="/636CED54" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/636CED54" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 4025 3325 50  0001 C CNN
F 1 "VCC" H 4042 3648 50  0000 C CNN
F 2 "" H 4025 3475 50  0001 C CNN
F 3 "" H 4025 3475 50  0001 C CNN
	1    4025 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 3475 4025 3525
Wire Wire Line
	1750 3525 3425 3525
Connection ~ 3425 3525
Text Label 2875 3625 0    50   ~ 0
~PD
$Comp
L power:GNDREF #PWR?
U 1 1 636CED5E
P 2050 3400
AR Path="/636CED5E" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/636CED5E" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 2050 3150 50  0001 C CNN
F 1 "GNDREF" H 2300 3125 50  0001 C CNN
F 2 "" H 2050 3400 50  0001 C CNN
F 3 "" H 2050 3400 50  0001 C CNN
	1    2050 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 3425 1900 3425
Wire Wire Line
	1900 3425 1900 3350
Wire Wire Line
	1900 3350 2050 3350
Wire Wire Line
	2050 3350 2050 3400
$Comp
L Device:C_Small C?
U 1 1 636CED68
P 3275 3225
AR Path="/636CED68" Ref="C?"  Part="1" 
AR Path="/6369C9EB/636CED68" Ref="C6"  Part="1" 
F 0 "C6" V 3225 3050 50  0000 L CNN
F 1 "100nF" V 3225 3275 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3275 3225 50  0001 C CNN
F 3 "~" H 3275 3225 50  0001 C CNN
	1    3275 3225
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 636CED6E
P 3050 3125
AR Path="/636CED6E" Ref="C?"  Part="1" 
AR Path="/6369C9EB/636CED6E" Ref="C5"  Part="1" 
F 0 "C5" V 3000 2950 50  0000 L CNN
F 1 "100nF" V 3000 3175 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3050 3125 50  0001 C CNN
F 3 "~" H 3050 3125 50  0001 C CNN
	1    3050 3125
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 3125 2400 3125
Text Label 4025 3125 0    50   ~ 0
SLIC_Ain
Text Label 4025 3225 0    50   ~ 0
SLIC_Aout
Text Label 4275 2425 0    50   ~ 0
F_R
Text Label 4275 2525 0    50   ~ 0
RM
Text Label 4275 2625 0    50   ~ 0
SHK_Out
Wire Wire Line
	2225 3625 2750 3625
Wire Wire Line
	1750 2425 1925 2425
Wire Wire Line
	1750 2525 2075 2525
$Comp
L Connector:TestPoint TP?
U 1 1 636CED93
P 2075 2675
AR Path="/636CED93" Ref="TP?"  Part="1" 
AR Path="/6369C9EB/636CED93" Ref="TP4"  Part="1" 
F 0 "TP4" H 2025 2875 50  0000 L CNN
F 1 "TestPoint" V 2120 2863 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 2275 2675 50  0001 C CNN
F 3 "~" H 2275 2675 50  0001 C CNN
	1    2075 2675
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 636CED99
P 1925 2675
AR Path="/636CED99" Ref="TP?"  Part="1" 
AR Path="/6369C9EB/636CED99" Ref="TP3"  Part="1" 
F 0 "TP3" H 1875 2875 50  0000 L CNN
F 1 "TestPoint" V 1970 2863 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 2125 2675 50  0001 C CNN
F 3 "~" H 2125 2675 50  0001 C CNN
	1    1925 2675
	-1   0    0    1   
$EndComp
Wire Wire Line
	1925 2675 1925 2425
Connection ~ 1925 2425
Wire Wire Line
	2075 2675 2075 2525
Connection ~ 2075 2525
$Comp
L Connector:TestPoint TP?
U 1 1 636CEDAE
P 2750 3700
AR Path="/636CEDAE" Ref="TP?"  Part="1" 
AR Path="/6369C9EB/636CEDAE" Ref="TP8"  Part="1" 
F 0 "TP8" H 2700 3900 50  0000 L CNN
F 1 "TestPoint" V 2795 3888 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 2950 3700 50  0001 C CNN
F 3 "~" H 2950 3700 50  0001 C CNN
	1    2750 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 3700 2750 3625
Connection ~ 2750 3625
Wire Wire Line
	2750 3625 2975 3625
Text Label 4225 1325 0    50   ~ 0
Ring
Text Label 4275 2325 0    50   ~ 0
Tip
Wire Wire Line
	3050 2325 4425 2325
Text HLabel 8375 1325 2    50   BiDi ~ 0
Ring
Text HLabel 8375 1425 2    50   BiDi ~ 0
Tip
Text HLabel 8375 1775 2    50   Input ~ 0
Fwd_Rev
Text HLabel 8375 1875 2    50   Input ~ 0
Ring_Mode
Text HLabel 8375 2625 2    50   Output ~ 0
SW_Hook
Text HLabel 8375 3775 2    50   Input ~ 0
Audio_In
Text HLabel 8375 5525 2    50   Output ~ 0
Audio_Out
Text HLabel 8375 950  2    50   UnSpc ~ 0
SLIC_VCC
Text HLabel 8375 1075 2    50   UnSpc ~ 0
GND
$Comp
L power:VCC #PWR?
U 1 1 636D6A93
P 8250 775
AR Path="/636D6A93" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/636D6A93" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 8250 625 50  0001 C CNN
F 1 "VCC" H 8250 925 50  0000 C CNN
F 2 "" H 8250 775 50  0001 C CNN
F 3 "" H 8250 775 50  0001 C CNN
	1    8250 775 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 636D875A
P 8250 1100
AR Path="/636D875A" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/636D875A" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 8250 850 50  0001 C CNN
F 1 "GNDREF" H 8500 825 50  0001 C CNN
F 2 "" H 8250 1100 50  0001 C CNN
F 3 "" H 8250 1100 50  0001 C CNN
	1    8250 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8375 950  8250 950 
Wire Wire Line
	8250 775  8250 950 
Wire Wire Line
	8375 1075 8250 1075
Wire Wire Line
	8250 1075 8250 1100
Text Label 7350 1325 0    50   ~ 0
Ring
Text Label 7350 1425 0    50   ~ 0
Tip
Text Label 7350 1775 0    50   ~ 0
F_R
Text Label 7350 1875 0    50   ~ 0
RM
Text Label 7350 2625 0    50   ~ 0
SHK
Text Label 8125 3775 0    50   ~ 0
Ain
Text Label 8125 5525 0    50   ~ 0
Aout
$Comp
L Device:R_Small_US R?
U 1 1 6366A905
P 7775 2200
AR Path="/6366A905" Ref="R?"  Part="1" 
AR Path="/6369C9EB/6366A905" Ref="R12"  Part="1" 
F 0 "R12" H 7900 2250 50  0000 C CNN
F 1 "10K" H 7900 2175 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7775 2200 50  0001 C CNN
F 3 "~" H 7775 2200 50  0001 C CNN
	1    7775 2200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 6366A90B
P 8025 2200
AR Path="/6366A90B" Ref="R?"  Part="1" 
AR Path="/6369C9EB/6366A90B" Ref="R13"  Part="1" 
F 0 "R13" H 8150 2250 50  0000 C CNN
F 1 "10K" H 8150 2175 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8025 2200 50  0001 C CNN
F 3 "~" H 8025 2200 50  0001 C CNN
	1    8025 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8025 2300 8025 2350
Wire Wire Line
	7775 2300 7775 2350
Wire Wire Line
	7775 2350 7900 2350
Wire Wire Line
	8025 2100 8025 1875
Wire Wire Line
	7775 2100 7775 1775
$Comp
L Connector:TestPoint TP?
U 1 1 6369E790
P 2400 3050
AR Path="/6369E790" Ref="TP?"  Part="1" 
AR Path="/6369C9EB/6369E790" Ref="TP6"  Part="1" 
F 0 "TP6" H 2350 3250 50  0000 L CNN
F 1 "TestPoint" V 2445 3238 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 2600 3050 50  0001 C CNN
F 3 "~" H 2600 3050 50  0001 C CNN
	1    2400 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 6369E796
P 8000 5350
AR Path="/6369E796" Ref="TP?"  Part="1" 
AR Path="/6369C9EB/6369E796" Ref="TP7"  Part="1" 
F 0 "TP7" H 7925 5550 50  0000 L CNN
F 1 "TestPoint" V 8045 5538 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 8200 5350 50  0001 C CNN
F 3 "~" H 8200 5350 50  0001 C CNN
	1    8000 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3050 2400 3125
Wire Wire Line
	8000 5350 8000 5525
$Comp
L Device:R_Small_US R?
U 1 1 64B79F1F
P 5550 2625
AR Path="/64B79F1F" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64B79F1F" Ref="R14"  Part="1" 
F 0 "R14" V 5600 2750 50  0000 C CNN
F 1 "100r" V 5600 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5550 2625 50  0001 C CNN
F 3 "~" H 5550 2625 50  0001 C CNN
	1    5550 2625
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64AE999B
P 7900 2400
AR Path="/64AE999B" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64AE999B" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 7900 2150 50  0001 C CNN
F 1 "GNDREF" H 8150 2125 50  0001 C CNN
F 2 "" H 7900 2400 50  0001 C CNN
F 3 "" H 7900 2400 50  0001 C CNN
	1    7900 2400
	-1   0    0    -1  
$EndComp
Connection ~ 7775 1775
Wire Wire Line
	7775 1775 8375 1775
Connection ~ 8025 1875
Wire Wire Line
	8025 1875 8375 1875
Wire Wire Line
	7900 2400 7900 2350
Connection ~ 7900 2350
Wire Wire Line
	7900 2350 8025 2350
$Comp
L Device:C_Small C?
U 1 1 64D084F2
P 5825 2800
AR Path="/64D084F2" Ref="C?"  Part="1" 
AR Path="/6369C9EB/64D084F2" Ref="C4"  Part="1" 
F 0 "C4" H 5900 2825 50  0000 L CNN
F 1 "100nF" H 5900 2725 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5825 2800 50  0001 C CNN
F 3 "~" H 5825 2800 50  0001 C CNN
	1    5825 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64D084FC
P 5825 2950
AR Path="/64D084FC" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64D084FC" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 5825 2700 50  0001 C CNN
F 1 "GNDREF" H 6075 2675 50  0001 C CNN
F 2 "" H 5825 2950 50  0001 C CNN
F 3 "" H 5825 2950 50  0001 C CNN
	1    5825 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5825 2950 5825 2900
Wire Wire Line
	5650 2625 5825 2625
Wire Wire Line
	5825 2625 5825 2700
Wire Wire Line
	5825 2625 6200 2625
Connection ~ 5825 2625
$Comp
L 4xxx:4050 U3
U 1 1 64B93893
P 6500 2625
F 0 "U3" H 6500 2942 50  0000 C CNN
F 1 "4050" H 6500 2851 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 6500 2625 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 6500 2625 50  0001 C CNN
	1    6500 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2625 8375 2625
$Comp
L dk_Diodes-Zener-Single:1N5231BTR Z?
U 1 1 64C890FF
P 3750 6175
AR Path="/64C890FF" Ref="Z?"  Part="1" 
AR Path="/6369C9EB/64C890FF" Ref="Z2"  Part="1" 
F 0 "Z2" V 3750 6250 60  0000 L CNN
F 1 "BZX55B2V4-TAP" V 3875 5400 60  0000 L CNN
F 2 "digikey-footprints:DO-35" H 3950 6375 60  0001 L CNN
F 3 "" H 3950 6475 60  0001 L CNN
	1    3750 6175
	0    1    1    0   
$EndComp
$Comp
L dk_Diodes-Zener-Single:1N5231BTR Z?
U 1 1 64C8D68E
P 3750 5700
AR Path="/64C8D68E" Ref="Z?"  Part="1" 
AR Path="/6369C9EB/64C8D68E" Ref="Z1"  Part="1" 
F 0 "Z1" V 3725 5625 60  0000 R CNN
F 1 "BZX55B2V4-TAP" V 3625 6475 60  0000 R CNN
F 2 "digikey-footprints:DO-35" H 3950 5900 60  0001 L CNN
F 3 "" H 3950 6000 60  0001 L CNN
	1    3750 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64C8E617
P 3450 5425
AR Path="/64C8E617" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64C8E617" Ref="R21"  Part="1" 
F 0 "R21" V 3500 5550 50  0000 C CNN
F 1 "100r" V 3500 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3450 5425 50  0001 C CNN
F 3 "~" H 3450 5425 50  0001 C CNN
	1    3450 5425
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64C8ECC3
P 4075 5425
AR Path="/64C8ECC3" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64C8ECC3" Ref="R22"  Part="1" 
F 0 "R22" V 4125 5550 50  0000 C CNN
F 1 "6.8K" V 4125 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4075 5425 50  0001 C CNN
F 3 "~" H 4075 5425 50  0001 C CNN
	1    4075 5425
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64C8F147
P 4350 5625
AR Path="/64C8F147" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64C8F147" Ref="R24"  Part="1" 
F 0 "R24" H 4475 5650 50  0000 C CNN
F 1 "18K" H 4475 5575 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4350 5625 50  0001 C CNN
F 3 "~" H 4350 5625 50  0001 C CNN
	1    4350 5625
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 64C8F570
P 4650 5425
AR Path="/64C8F570" Ref="C?"  Part="1" 
AR Path="/6369C9EB/64C8F570" Ref="C14"  Part="1" 
F 0 "C14" V 4600 5250 50  0000 L CNN
F 1 "100nF" V 4600 5475 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4650 5425 50  0001 C CNN
F 3 "~" H 4650 5425 50  0001 C CNN
	1    4650 5425
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 64C8FAF1
P 4650 5075
AR Path="/64C8FAF1" Ref="C?"  Part="1" 
AR Path="/6369C9EB/64C8FAF1" Ref="C13"  Part="1" 
F 0 "C13" V 4600 4900 50  0000 L CNN
F 1 "6.8nF" V 4600 5125 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4650 5075 50  0001 C CNN
F 3 "~" H 4650 5075 50  0001 C CNN
	1    4650 5075
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64C904D2
P 5050 5250
AR Path="/64C904D2" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64C904D2" Ref="R19"  Part="1" 
F 0 "R19" H 5200 5300 50  0000 C CNN
F 1 "7.5K" H 5200 5225 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5050 5250 50  0001 C CNN
F 3 "~" H 5050 5250 50  0001 C CNN
	1    5050 5250
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 64C9099F
P 6125 5525
AR Path="/64C9099F" Ref="C?"  Part="1" 
AR Path="/6369C9EB/64C9099F" Ref="C15"  Part="1" 
F 0 "C15" V 5925 5450 50  0000 L CNN
F 1 "100nF" V 6000 5450 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6125 5525 50  0001 C CNN
F 3 "~" H 6125 5525 50  0001 C CNN
	1    6125 5525
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64C90D82
P 6500 5525
AR Path="/64C90D82" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64C90D82" Ref="R23"  Part="1" 
F 0 "R23" V 6675 5525 50  0000 C CNN
F 1 "10K" V 6600 5525 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6500 5525 50  0001 C CNN
F 3 "~" H 6500 5525 50  0001 C CNN
	1    6500 5525
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 64C91462
P 6675 5700
AR Path="/64C91462" Ref="C?"  Part="1" 
AR Path="/6369C9EB/64C91462" Ref="C16"  Part="1" 
F 0 "C16" H 6425 5700 50  0000 L CNN
F 1 "1nF" H 6425 5625 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6675 5700 50  0001 C CNN
F 3 "~" H 6675 5700 50  0001 C CNN
	1    6675 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64C91BCD
P 7100 5375
AR Path="/64C91BCD" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64C91BCD" Ref="R20"  Part="1" 
F 0 "R20" H 7250 5425 50  0000 C CNN
F 1 "15K" H 7250 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7100 5375 50  0001 C CNN
F 3 "~" H 7100 5375 50  0001 C CNN
	1    7100 5375
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64C9209E
P 7100 5675
AR Path="/64C9209E" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64C9209E" Ref="R25"  Part="1" 
F 0 "R25" H 7225 5700 50  0000 C CNN
F 1 "7.5K" H 7225 5625 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7100 5675 50  0001 C CNN
F 3 "~" H 7100 5675 50  0001 C CNN
	1    7100 5675
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U?
U 1 1 64C9B0B0
P 5500 5525
AR Path="/64C9B0B0" Ref="U?"  Part="1" 
AR Path="/6369C9EB/64C9B0B0" Ref="U5"  Part="1" 
F 0 "U5" H 5500 5892 50  0000 C CNN
F 1 "LM358" H 5500 5801 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5500 5525 50  0001 C CNN
F 3 "~" H 5500 5525 50  0001 C CNN
	1    5500 5525
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64C9D39E
P 7475 5850
AR Path="/64C9D39E" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64C9D39E" Ref="R26"  Part="1" 
F 0 "R26" V 7650 5850 50  0000 C CNN
F 1 "10K" V 7575 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7475 5850 50  0001 C CNN
F 3 "~" H 7475 5850 50  0001 C CNN
	1    7475 5850
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 64C9E38C
P 7900 5850
F 0 "Q1" H 8106 5896 50  0000 L CNN
F 1 "2N7000" H 8106 5805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8100 5775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7900 5850 50  0001 L CNN
	1    7900 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64CBDF7A
P 8000 6125
AR Path="/64CBDF7A" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64CBDF7A" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 8000 5875 50  0001 C CNN
F 1 "GNDREF" H 8250 5850 50  0001 C CNN
F 2 "" H 8000 6125 50  0001 C CNN
F 3 "" H 8000 6125 50  0001 C CNN
	1    8000 6125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 6125 8000 6050
$Comp
L power:VCC #PWR?
U 1 1 64CC8EEC
P 7300 5775
AR Path="/64CC8EEC" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64CC8EEC" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 7300 5625 50  0001 C CNN
F 1 "VCC" H 7300 5925 50  0000 C CNN
F 2 "" H 7300 5775 50  0001 C CNN
F 3 "" H 7300 5775 50  0001 C CNN
	1    7300 5775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5850 7650 5850
Wire Wire Line
	7375 5850 7300 5850
Wire Wire Line
	7300 5850 7300 5775
Wire Wire Line
	8000 5650 8000 5525
Connection ~ 8000 5525
Wire Wire Line
	8000 5525 8375 5525
Wire Wire Line
	7650 5850 7650 6350
Wire Wire Line
	7650 6350 8375 6350
Connection ~ 7650 5850
Wire Wire Line
	7650 5850 7575 5850
Text HLabel 8375 6350 2    50   Input ~ 0
Aout_Mute
$Comp
L power:GNDREF #PWR?
U 1 1 64CF11DC
P 7100 5825
AR Path="/64CF11DC" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64CF11DC" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 7100 5575 50  0001 C CNN
F 1 "GNDREF" H 7350 5550 50  0001 C CNN
F 2 "" H 7100 5825 50  0001 C CNN
F 3 "" H 7100 5825 50  0001 C CNN
	1    7100 5825
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 64CF172F
P 7100 5225
AR Path="/64CF172F" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64CF172F" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 7100 5075 50  0001 C CNN
F 1 "VCC" H 7100 5375 50  0000 C CNN
F 2 "" H 7100 5225 50  0001 C CNN
F 3 "" H 7100 5225 50  0001 C CNN
	1    7100 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5275 7100 5225
Wire Wire Line
	7100 5575 7100 5525
Wire Wire Line
	7100 5825 7100 5775
Wire Wire Line
	7100 5525 8000 5525
Connection ~ 7100 5525
Wire Wire Line
	7100 5525 7100 5475
Wire Wire Line
	6600 5525 6675 5525
Wire Wire Line
	6675 5600 6675 5525
Connection ~ 6675 5525
Wire Wire Line
	6675 5525 7100 5525
Wire Wire Line
	6225 5525 6400 5525
$Comp
L power:GNDREF #PWR?
U 1 1 64D07D99
P 6675 5825
AR Path="/64D07D99" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64D07D99" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 6675 5575 50  0001 C CNN
F 1 "GNDREF" H 6925 5550 50  0001 C CNN
F 2 "" H 6675 5825 50  0001 C CNN
F 3 "" H 6675 5825 50  0001 C CNN
	1    6675 5825
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6675 5825 6675 5800
Wire Wire Line
	5200 5425 5050 5425
Wire Wire Line
	5050 5350 5050 5425
Connection ~ 5050 5425
Wire Wire Line
	5050 5425 4750 5425
Wire Wire Line
	4750 5075 5050 5075
Wire Wire Line
	5050 5075 5050 5150
Wire Wire Line
	5800 5525 5825 5525
Wire Wire Line
	5050 5075 5825 5075
Wire Wire Line
	5825 5075 5825 5525
Connection ~ 5050 5075
Connection ~ 5825 5525
Wire Wire Line
	5825 5525 6025 5525
$Comp
L power:GNDREF #PWR?
U 1 1 64D295D5
P 4350 5800
AR Path="/64D295D5" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64D295D5" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 4350 5550 50  0001 C CNN
F 1 "GNDREF" H 4600 5525 50  0001 C CNN
F 2 "" H 4350 5800 50  0001 C CNN
F 3 "" H 4350 5800 50  0001 C CNN
	1    4350 5800
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64D29D95
P 5125 5700
AR Path="/64D29D95" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64D29D95" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 5125 5450 50  0001 C CNN
F 1 "GNDREF" H 5375 5425 50  0001 C CNN
F 2 "" H 5125 5700 50  0001 C CNN
F 3 "" H 5125 5700 50  0001 C CNN
	1    5125 5700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 5625 5125 5625
Wire Wire Line
	5125 5625 5125 5700
Wire Wire Line
	4350 5800 4350 5725
Wire Wire Line
	4175 5425 4350 5425
Wire Wire Line
	4350 5525 4350 5425
Connection ~ 4350 5425
Wire Wire Line
	4350 5425 4550 5425
Wire Wire Line
	4550 5075 4350 5075
Wire Wire Line
	4350 5075 4350 5425
$Comp
L power:GNDREF #PWR?
U 1 1 64D4FBD6
P 3750 6425
AR Path="/64D4FBD6" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64D4FBD6" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 3750 6175 50  0001 C CNN
F 1 "GNDREF" H 4000 6150 50  0001 C CNN
F 2 "" H 3750 6425 50  0001 C CNN
F 3 "" H 3750 6425 50  0001 C CNN
	1    3750 6425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3750 6425 3750 6375
Wire Wire Line
	3750 5975 3750 5900
Wire Wire Line
	3550 5425 3750 5425
Wire Wire Line
	3750 5425 3750 5500
Wire Wire Line
	3975 5425 3750 5425
Connection ~ 3750 5425
Wire Wire Line
	3350 5425 3100 5425
Wire Wire Line
	3100 5425 3100 4175
Wire Wire Line
	3100 4175 4425 4175
Wire Wire Line
	4425 4175 4425 3225
$Comp
L Amplifier_Operational:LM358 U?
U 2 1 64DB8CF3
P 5700 3875
AR Path="/64DB8CF3" Ref="U?"  Part="2" 
AR Path="/6369C9EB/64DB8CF3" Ref="U5"  Part="2" 
F 0 "U5" H 5700 4242 50  0000 C CNN
F 1 "LM358" H 5700 4151 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5700 3875 50  0001 C CNN
F 3 "~" H 5700 3875 50  0001 C CNN
	2    5700 3875
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64DBD688
P 7125 3775
AR Path="/64DBD688" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64DBD688" Ref="R16"  Part="1" 
F 0 "R16" V 7300 3775 50  0000 C CNN
F 1 "6.8K" V 7225 3775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7125 3775 50  0001 C CNN
F 3 "~" H 7125 3775 50  0001 C CNN
	1    7125 3775
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64DBD692
P 6850 3975
AR Path="/64DBD692" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64DBD692" Ref="R18"  Part="1" 
F 0 "R18" H 6975 4025 50  0000 C CNN
F 1 "18K" H 6975 3950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6850 3975 50  0001 C CNN
F 3 "~" H 6850 3975 50  0001 C CNN
	1    6850 3975
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 64DBD69C
P 6550 3775
AR Path="/64DBD69C" Ref="C?"  Part="1" 
AR Path="/6369C9EB/64DBD69C" Ref="C10"  Part="1" 
F 0 "C10" V 6375 3700 50  0000 L CNN
F 1 "100nF" V 6450 3625 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6550 3775 50  0001 C CNN
F 3 "~" H 6550 3775 50  0001 C CNN
	1    6550 3775
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 64DBD6A6
P 6550 3425
AR Path="/64DBD6A6" Ref="C?"  Part="1" 
AR Path="/6369C9EB/64DBD6A6" Ref="C7"  Part="1" 
F 0 "C7" V 6325 3375 50  0000 L CNN
F 1 "6.8nF" V 6425 3275 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6550 3425 50  0001 C CNN
F 3 "~" H 6550 3425 50  0001 C CNN
	1    6550 3425
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 64DBD6B0
P 6150 3600
AR Path="/64DBD6B0" Ref="R?"  Part="1" 
AR Path="/6369C9EB/64DBD6B0" Ref="R15"  Part="1" 
F 0 "R15" H 6275 3650 50  0000 C CNN
F 1 "7.5K" H 6300 3575 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6150 3600 50  0001 C CNN
F 3 "~" H 6150 3600 50  0001 C CNN
	1    6150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3775 6150 3775
Wire Wire Line
	6150 3700 6150 3775
Connection ~ 6150 3775
Wire Wire Line
	6150 3775 6450 3775
Wire Wire Line
	6450 3425 6150 3425
Wire Wire Line
	6150 3425 6150 3500
Wire Wire Line
	5400 3875 5375 3875
Wire Wire Line
	6150 3425 5375 3425
Wire Wire Line
	5375 3425 5375 3875
Connection ~ 6150 3425
Connection ~ 5375 3875
$Comp
L power:GNDREF #PWR?
U 1 1 64DBD6D0
P 6850 4150
AR Path="/64DBD6D0" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64DBD6D0" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 6850 3900 50  0001 C CNN
F 1 "GNDREF" H 7100 3875 50  0001 C CNN
F 2 "" H 6850 4150 50  0001 C CNN
F 3 "" H 6850 4150 50  0001 C CNN
	1    6850 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 64DBD6DA
P 6075 4050
AR Path="/64DBD6DA" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/64DBD6DA" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 6075 3800 50  0001 C CNN
F 1 "GNDREF" H 6325 3775 50  0001 C CNN
F 2 "" H 6075 4050 50  0001 C CNN
F 3 "" H 6075 4050 50  0001 C CNN
	1    6075 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3975 6075 3975
Wire Wire Line
	6075 3975 6075 4050
Wire Wire Line
	6850 4150 6850 4075
Wire Wire Line
	7025 3775 6850 3775
Wire Wire Line
	6850 3875 6850 3775
Connection ~ 6850 3775
Wire Wire Line
	6850 3775 6650 3775
Wire Wire Line
	6650 3425 6850 3425
Wire Wire Line
	6850 3425 6850 3775
$Comp
L Device:C_Small C?
U 1 1 64DE09E8
P 7525 3775
AR Path="/64DE09E8" Ref="C?"  Part="1" 
AR Path="/6369C9EB/64DE09E8" Ref="C11"  Part="1" 
F 0 "C11" V 7475 3600 50  0000 L CNN
F 1 "100nF" V 7475 3825 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7525 3775 50  0001 C CNN
F 3 "~" H 7525 3775 50  0001 C CNN
	1    7525 3775
	0    1    1    0   
$EndComp
Wire Wire Line
	7225 3775 7425 3775
Wire Wire Line
	4675 3875 4675 3125
Wire Wire Line
	4675 3875 4900 3875
Wire Wire Line
	3050 1325 7775 1325
Wire Wire Line
	4425 2325 4425 1425
Wire Wire Line
	4425 1425 7875 1425
Wire Wire Line
	4550 2425 4550 1775
Wire Wire Line
	1925 2425 4550 2425
Wire Wire Line
	4550 1775 7775 1775
Wire Wire Line
	4675 1875 4675 2525
Wire Wire Line
	2075 2525 4675 2525
Wire Wire Line
	4675 1875 8025 1875
Wire Wire Line
	7625 3775 8375 3775
$Comp
L Connector:TestPoint TP?
U 1 1 650706C4
P 7775 1100
AR Path="/650706C4" Ref="TP?"  Part="1" 
AR Path="/6369C9EB/650706C4" Ref="TP1"  Part="1" 
F 0 "TP1" H 7750 1300 50  0000 L CNN
F 1 "TestPoint" V 7820 1288 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 7975 1100 50  0001 C CNN
F 3 "~" H 7975 1100 50  0001 C CNN
	1    7775 1100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 650706CA
P 7875 1100
AR Path="/650706CA" Ref="TP?"  Part="1" 
AR Path="/6369C9EB/650706CA" Ref="TP2"  Part="1" 
F 0 "TP2" H 7775 1300 50  0000 L CNN
F 1 "TestPoint" V 7920 1288 50  0001 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.4mm_Beaded" H 8075 1100 50  0001 C CNN
F 3 "~" H 8075 1100 50  0001 C CNN
	1    7875 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7775 1100 7775 1325
Wire Wire Line
	7875 1425 7875 1100
Connection ~ 7775 1325
Wire Wire Line
	7775 1325 8375 1325
Connection ~ 7875 1425
Wire Wire Line
	7875 1425 8375 1425
$Comp
L Device:R_Small_US R?
U 1 1 65097A2A
P 5000 3875
AR Path="/65097A2A" Ref="R?"  Part="1" 
AR Path="/6369C9EB/65097A2A" Ref="R17"  Part="1" 
F 0 "R17" V 5050 4000 50  0000 C CNN
F 1 "10K" V 5050 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5000 3875 50  0001 C CNN
F 3 "~" H 5000 3875 50  0001 C CNN
	1    5000 3875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 3875 5375 3875
$Comp
L Device:C_Small C?
U 1 1 65098610
P 4675 4050
AR Path="/65098610" Ref="C?"  Part="1" 
AR Path="/6369C9EB/65098610" Ref="C12"  Part="1" 
F 0 "C12" H 4750 4075 50  0000 L CNN
F 1 "1nF" H 4750 3975 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4675 4050 50  0001 C CNN
F 3 "~" H 4675 4050 50  0001 C CNN
	1    4675 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 3950 4675 3875
$Comp
L power:GNDREF #PWR?
U 1 1 6509861B
P 4675 4175
AR Path="/6509861B" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/6509861B" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 4675 3925 50  0001 C CNN
F 1 "GNDREF" H 4925 3900 50  0001 C CNN
F 2 "" H 4675 4175 50  0001 C CNN
F 3 "" H 4675 4175 50  0001 C CNN
	1    4675 4175
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4675 4175 4675 4150
Connection ~ 4675 3875
Wire Wire Line
	3150 3125 4675 3125
Wire Wire Line
	3375 3225 4425 3225
Connection ~ 2400 3125
Wire Wire Line
	2400 3125 2950 3125
Wire Wire Line
	1750 3225 3175 3225
Wire Wire Line
	1750 2625 5450 2625
$EndSCHEMATC