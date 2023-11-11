EESchema Schematic File Version 4
LIBS:GR_Subscriber_Line_Interface_Module-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 5
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
L GR_Subscriber_Line_Interface_Module-rescue:MT8870DSR1-MT8870-GR_Telephone_CO_Node-rescue U?
U 1 1 6363DC3E
P 3975 2725
AR Path="/6363DC3E" Ref="U?"  Part="1" 
AR Path="/636337CE/6363DC3E" Ref="U2"  Part="1" 
F 0 "U2" H 4475 2990 50  0000 C CNN
F 1 "MT8870DE" H 4475 2899 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_Socket" H 3975 3125 50  0001 L CNN
F 3 "~" H 3975 3225 50  0001 L CNN
F 4 "Microsemi" H 3975 3925 50  0001 L CNN "MFR"
	1    3975 2725
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 6363DC44
P 3650 4125
F 0 "Y1" H 3650 4275 50  0000 C CNN
F 1 "3.579545 MHz" H 3650 4025 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 3650 4125 50  0001 C CNN
F 3 "~" H 3650 4125 50  0001 C CNN
	1    3650 4125
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 6363DC4A
P 3775 3625
F 0 "R10" V 3700 3575 50  0000 C CNN
F 1 "100K" V 3850 3625 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3775 3625 50  0001 C CNN
F 3 "~" H 3775 3625 50  0001 C CNN
	1    3775 3625
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 6363DC50
P 2900 3425
F 0 "C3" V 2671 3425 50  0000 C CNN
F 1 "100nF" V 2762 3425 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2900 3425 50  0001 C CNN
F 3 "~" H 2900 3425 50  0001 C CNN
	1    2900 3425
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 6363DC56
P 3725 2550
F 0 "#PWR025" H 3725 2400 50  0001 C CNN
F 1 "+5V" H 3740 2723 50  0000 C CNN
F 2 "" H 3725 2550 50  0001 C CNN
F 3 "" H 3725 2550 50  0001 C CNN
	1    3725 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR033
U 1 1 6363DC5C
P 5075 4250
F 0 "#PWR033" H 5075 4000 50  0001 C CNN
F 1 "GNDREF" H 5080 4077 50  0001 C CNN
F 2 "" H 5075 4250 50  0001 C CNN
F 3 "" H 5075 4250 50  0001 C CNN
	1    5075 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 6363DC62
P 3325 3425
F 0 "R8" V 3120 3425 50  0000 C CNN
F 1 "100K" V 3211 3425 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3325 3425 50  0001 C CNN
F 3 "~" H 3325 3425 50  0001 C CNN
	1    3325 3425
	0    1    1    0   
$EndComp
Wire Wire Line
	3975 3325 3800 3325
Wire Wire Line
	3800 3325 3800 2925
Wire Wire Line
	3800 2925 3975 2925
Wire Wire Line
	3975 2725 3725 2725
Wire Wire Line
	3725 2725 3725 2550
Wire Wire Line
	3000 3425 3225 3425
Wire Wire Line
	3875 3625 3975 3625
Wire Wire Line
	3675 3625 3575 3625
Wire Wire Line
	3575 3625 3575 3425
Connection ~ 3575 3425
Wire Wire Line
	3575 3425 3425 3425
$Comp
L power:GNDREF #PWR029
U 1 1 6363DC73
P 3900 3175
F 0 "#PWR029" H 3900 2925 50  0001 C CNN
F 1 "GNDREF" H 3905 3002 50  0001 C CNN
F 2 "" H 3900 3175 50  0001 C CNN
F 3 "" H 3900 3175 50  0001 C CNN
	1    3900 3175
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR032
U 1 1 6363DC79
P 3900 3875
F 0 "#PWR032" H 3900 3625 50  0001 C CNN
F 1 "GNDREF" H 3905 3702 50  0001 C CNN
F 2 "" H 3900 3875 50  0001 C CNN
F 3 "" H 3900 3875 50  0001 C CNN
	1    3900 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 3125 3900 3125
Wire Wire Line
	3900 3125 3900 3175
Wire Wire Line
	3575 3425 3975 3425
Wire Wire Line
	3975 3825 3900 3825
Wire Wire Line
	3900 3825 3900 3875
Wire Wire Line
	4975 4125 5075 4125
Wire Wire Line
	5075 4125 5075 4250
Wire Wire Line
	3975 4025 3350 4025
Wire Wire Line
	3350 4025 3350 4125
Wire Wire Line
	3350 4125 3550 4125
Wire Wire Line
	3750 4125 3975 4125
$Comp
L power:+5V #PWR031
U 1 1 6363DC8A
P 5100 3800
F 0 "#PWR031" H 5100 3650 50  0001 C CNN
F 1 "+5V" H 5100 3925 50  0000 C CNN
F 2 "" H 5100 3800 50  0001 C CNN
F 3 "" H 5100 3800 50  0001 C CNN
	1    5100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 3825 5100 3825
Wire Wire Line
	5100 3825 5100 3800
$Comp
L Device:R_Small_US R9
U 1 1 6363DC92
P 5175 3425
F 0 "R9" V 5025 3375 50  0000 C CNN
F 1 "300K" V 5100 3425 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5175 3425 50  0001 C CNN
F 3 "~" H 5175 3425 50  0001 C CNN
	1    5175 3425
	0    1    1    0   
$EndComp
Wire Wire Line
	4975 3425 5075 3425
Wire Wire Line
	4975 3225 5375 3225
Wire Wire Line
	5375 3225 5375 3425
Wire Wire Line
	5375 3425 5275 3425
$Comp
L Device:C_Small C2
U 1 1 6363DC9C
P 5550 3225
F 0 "C2" V 5450 3175 50  0000 C CNN
F 1 "100nF" V 5650 3225 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5550 3225 50  0001 C CNN
F 3 "~" H 5550 3225 50  0001 C CNN
	1    5550 3225
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR030
U 1 1 6363DCA2
P 5800 3175
F 0 "#PWR030" H 5800 3025 50  0001 C CNN
F 1 "+5V" H 5900 3250 50  0000 C CNN
F 2 "" H 5800 3175 50  0001 C CNN
F 3 "" H 5800 3175 50  0001 C CNN
	1    5800 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3225 5800 3225
Wire Wire Line
	5800 3225 5800 3175
Wire Wire Line
	5450 3225 5375 3225
Connection ~ 5375 3225
Text Label 7475 4700 0    50   ~ 0
SD
Text Label 7450 2725 0    50   ~ 0
Q1
Text Label 7450 3150 0    50   ~ 0
Q2
Text Label 7450 3650 0    50   ~ 0
Q3
Text Label 7450 4175 0    50   ~ 0
Q4
Text Notes 4100 4650 0    75   ~ 0
DTMF Decoder
Text HLabel 7700 4700 2    50   Output ~ 0
SD
Text HLabel 2300 3425 0    50   Input ~ 0
Audio_In
Text HLabel 2300 2950 0    50   UnSpc ~ 0
VCC
Text HLabel 2300 3075 0    50   UnSpc ~ 0
GND
$Comp
L power:GNDREF #PWR?
U 1 1 6364351F
P 2450 3100
AR Path="/6364351F" Ref="#PWR?"  Part="1" 
AR Path="/6369C9EB/6364351F" Ref="#PWR?"  Part="1" 
AR Path="/636337CE/6364351F" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 2450 2850 50  0001 C CNN
F 1 "GNDREF" H 2700 2825 50  0001 C CNN
F 2 "" H 2450 3100 50  0001 C CNN
F 3 "" H 2450 3100 50  0001 C CNN
	1    2450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2950 2450 2950
Wire Wire Line
	2300 3075 2450 3075
Wire Wire Line
	2450 3075 2450 3100
Text Label 2525 3425 2    50   ~ 0
Ain
$Comp
L power:+5V #PWR027
U 1 1 6364743F
P 2450 2850
F 0 "#PWR027" H 2450 2700 50  0001 C CNN
F 1 "+5V" H 2465 3023 50  0000 C CNN
F 2 "" H 2450 2850 50  0001 C CNN
F 3 "" H 2450 2850 50  0001 C CNN
	1    2450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2950 2450 2850
Text HLabel 7700 4175 2    50   Output ~ 0
Q4
Text HLabel 7700 3650 2    50   Output ~ 0
Q3
Text HLabel 7700 3150 2    50   Output ~ 0
Q2
Text HLabel 7700 2725 2    50   Output ~ 0
Q1
$Comp
L Device:C_Small C1
U 1 1 63E08A74
P 3425 2725
F 0 "C1" V 3196 2725 50  0000 C CNN
F 1 "100nF" V 3287 2725 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3425 2725 50  0001 C CNN
F 3 "~" H 3425 2725 50  0001 C CNN
	1    3425 2725
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR026
U 1 1 63E094E6
P 3200 2775
F 0 "#PWR026" H 3200 2525 50  0001 C CNN
F 1 "GNDREF" H 3205 2602 50  0001 C CNN
F 2 "" H 3200 2775 50  0001 C CNN
F 3 "" H 3200 2775 50  0001 C CNN
	1    3200 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 2725 3725 2725
Connection ~ 3725 2725
Wire Wire Line
	3325 2725 3200 2725
Wire Wire Line
	3200 2725 3200 2775
Wire Wire Line
	2300 3425 2800 3425
$Comp
L 4xxx:4050 U?
U 2 1 64BA397A
P 7000 2725
AR Path="/64BA397A" Ref="U?"  Part="2" 
AR Path="/636337CE/64BA397A" Ref="U3"  Part="2" 
F 0 "U3" H 6975 2975 50  0000 C CNN
F 1 "4050" H 7000 2900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 7000 2725 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 7000 2725 50  0001 C CNN
	2    7000 2725
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U3
U 3 1 64BA3980
P 7000 3150
F 0 "U3" H 7000 3400 50  0000 C CNN
F 1 "4050" H 7025 3325 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 7000 3150 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 7000 3150 50  0001 C CNN
	3    7000 3150
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U3
U 4 1 64BA3986
P 7000 3650
F 0 "U3" H 7000 3900 50  0000 C CNN
F 1 "4050" H 7025 3825 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 7000 3650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 7000 3650 50  0001 C CNN
	4    7000 3650
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U3
U 5 1 64BA398C
P 7000 4175
F 0 "U3" H 7000 4425 50  0000 C CNN
F 1 "4050" H 7025 4350 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 7000 4175 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 7000 4175 50  0001 C CNN
	5    7000 4175
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 U3
U 6 1 64BA3992
P 7000 4700
F 0 "U3" H 7025 4925 50  0000 C CNN
F 1 "4050" H 7050 4850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 7000 4700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 7000 4700 50  0001 C CNN
	6    7000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4700 7700 4700
Wire Wire Line
	7300 4175 7700 4175
Wire Wire Line
	7300 3650 7700 3650
Wire Wire Line
	7300 3150 7700 3150
Wire Wire Line
	7300 2725 7700 2725
Wire Wire Line
	4975 2725 6700 2725
Wire Wire Line
	6625 2825 6625 3150
Wire Wire Line
	6625 3150 6700 3150
Wire Wire Line
	4975 2825 6625 2825
Wire Wire Line
	6525 2925 6525 3650
Wire Wire Line
	6525 3650 6700 3650
Wire Wire Line
	4975 2925 6525 2925
Wire Wire Line
	6425 3025 6425 4175
Wire Wire Line
	6425 4175 6700 4175
Wire Wire Line
	4975 3025 6425 3025
Wire Wire Line
	6325 3625 6325 4700
Wire Wire Line
	6325 4700 6700 4700
Wire Wire Line
	4975 3625 6325 3625
$EndSCHEMATC
