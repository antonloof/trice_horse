EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:LED_Small D3
U 1 1 6096A53B
P 7600 2750
F 0 "D3" V 7646 2682 50  0000 R CNN
F 1 "LED_RED" V 7555 2682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 7600 2750 50  0001 C CNN
F 3 "~" V 7600 2750 50  0001 C CNN
	1    7600 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 6096CE43
P 3200 1300
F 0 "FB1" V 2963 1300 50  0000 C CNN
F 1 "100@100Mhz" V 3054 1300 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3130 1300 50  0001 C CNN
F 3 "~" H 3200 1300 50  0001 C CNN
	1    3200 1300
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6096D339
P 900 3900
F 0 "C1" H 992 3946 50  0000 L CNN
F 1 "22u" H 992 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 900 3900 50  0001 C CNN
F 3 "~" H 900 3900 50  0001 C CNN
	1    900  3900
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse_Small F1
U 1 1 6096E5CA
P 2600 1300
F 0 "F1" H 2600 1485 50  0000 C CNN
F 1 "500ma" H 2600 1394 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2600 1300 50  0001 C CNN
F 3 "~" H 2600 1300 50  0001 C CNN
	1    2600 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6096FA01
P 1700 1500
F 0 "#PWR0101" H 1700 1250 50  0001 C CNN
F 1 "GND" H 1705 1327 50  0000 C CNN
F 2 "" H 1700 1500 50  0001 C CNN
F 3 "" H 1700 1500 50  0001 C CNN
	1    1700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1300 3100 1300
Wire Wire Line
	3300 1300 3450 1300
Text GLabel 3450 1300 2    50   Input ~ 0
5v
$Comp
L Mechanical:MountingHole H1
U 1 1 60970BCC
P 10400 800
F 0 "H1" H 10500 846 50  0000 L CNN
F 1 "MountingHole" H 10500 755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10400 800 50  0001 C CNN
F 3 "~" H 10400 800 50  0001 C CNN
	1    10400 800 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60970EE8
P 10400 1000
F 0 "H2" H 10500 1046 50  0000 L CNN
F 1 "MountingHole" H 10500 955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10400 1000 50  0001 C CNN
F 3 "~" H 10400 1000 50  0001 C CNN
	1    10400 1000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 609710C0
P 10400 1200
F 0 "H3" H 10500 1246 50  0000 L CNN
F 1 "MountingHole" H 10500 1155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10400 1200 50  0001 C CNN
F 3 "~" H 10400 1200 50  0001 C CNN
	1    10400 1200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 609713DE
P 10400 1400
F 0 "H4" H 10500 1446 50  0000 L CNN
F 1 "MountingHole" H 10500 1355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10400 1400 50  0001 C CNN
F 3 "~" H 10400 1400 50  0001 C CNN
	1    10400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 609726AA
P 3700 4050
F 0 "#PWR0102" H 3700 3800 50  0001 C CNN
F 1 "GND" H 3705 3877 50  0000 C CNN
F 2 "" H 3700 4050 50  0001 C CNN
F 3 "" H 3700 4050 50  0001 C CNN
	1    3700 4050
	1    0    0    -1  
$EndComp
Text GLabel 3700 1800 1    50   Input ~ 0
3v3
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 609736CC
P 1800 2150
F 0 "J2" H 1880 2142 50  0000 L CNN
F 1 "swim" H 1880 2051 50  0000 L CNN
F 2 "good_things:TSM-104-01-L-SH" H 1800 2150 50  0001 C CNN
F 3 "~" H 1800 2150 50  0001 C CNN
	1    1800 2150
	1    0    0    -1  
$EndComp
Text GLabel 1600 2050 0    50   Input ~ 0
3v3
$Comp
L power:GND #PWR0103
U 1 1 60973CC9
P 1200 2500
F 0 "#PWR0103" H 1200 2250 50  0001 C CNN
F 1 "GND" H 1205 2327 50  0000 C CNN
F 2 "" H 1200 2500 50  0001 C CNN
F 3 "" H 1200 2500 50  0001 C CNN
	1    1200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2250 1200 2500
Wire Wire Line
	1200 2250 1600 2250
Text GLabel 1600 2150 0    50   Input ~ 0
SWIM_DATA
Text GLabel 1600 2350 0    50   Input ~ 0
RST
Text GLabel 3100 2650 0    50   Input ~ 0
RST
$Comp
L Switch:SW_Push SW1
U 1 1 60975488
P 1400 3050
F 0 "SW1" H 1400 3335 50  0000 C CNN
F 1 "SW_Push" H 1400 3244 50  0000 C CNN
F 2 "good_things:push_sw_purple" H 1400 3250 50  0001 C CNN
F 3 "~" H 1400 3250 50  0001 C CNN
	1    1400 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6097586E
P 1200 3050
F 0 "#PWR0104" H 1200 2800 50  0001 C CNN
F 1 "GND" H 1205 2877 50  0000 C CNN
F 2 "" H 1200 3050 50  0001 C CNN
F 3 "" H 1200 3050 50  0001 C CNN
	1    1200 3050
	1    0    0    -1  
$EndComp
Text GLabel 1600 3050 2    50   Input ~ 0
RST
Text GLabel 3100 2550 0    50   Input ~ 0
SWIM_DATA
$Comp
L power:GND #PWR0105
U 1 1 60979993
P 4250 2000
F 0 "#PWR0105" H 4250 1750 50  0001 C CNN
F 1 "GND" H 4255 1827 50  0000 C CNN
F 2 "" H 4250 2000 50  0001 C CNN
F 3 "" H 4250 2000 50  0001 C CNN
	1    4250 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 6097908B
P 4250 1900
F 0 "C3" H 4342 1946 50  0000 L CNN
F 1 "100n" H 4342 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4250 1900 50  0001 C CNN
F 3 "~" H 4250 1900 50  0001 C CNN
	1    4250 1900
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM8:STM8L101F3P U2
U 1 1 60969286
P 3700 3150
F 0 "U2" H 3850 2250 50  0000 C CNN
F 1 "STM8L101F3P" H 4050 2350 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3750 4150 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00220591.pdf" H 3700 2750 50  0001 C CNN
	1    3700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2250 3700 1800
Wire Wire Line
	3700 1800 4250 1800
$Comp
L good_things:RT8097AHGB U1
U 1 1 6097D913
P 1550 3900
F 0 "U1" H 1550 4225 50  0000 C CNN
F 1 "RT8097AHGB" H 1550 4134 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 1450 3800 50  0001 C CNN
F 3 "" H 1450 3800 50  0001 C CNN
	1    1550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3800 1250 3900
Wire Wire Line
	900  3800 1250 3800
Connection ~ 1250 3800
$Comp
L power:GND #PWR0106
U 1 1 6097EF46
P 1250 4050
F 0 "#PWR0106" H 1250 3800 50  0001 C CNN
F 1 "GND" H 1255 3877 50  0000 C CNN
F 2 "" H 1250 4050 50  0001 C CNN
F 3 "" H 1250 4050 50  0001 C CNN
	1    1250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4050 900  4050
Wire Wire Line
	900  4050 900  4000
Connection ~ 1250 4050
$Comp
L Device:L_Small L1
U 1 1 6097F7CE
P 1950 3800
F 0 "L1" V 2135 3800 50  0000 C CNN
F 1 "1u5" V 2044 3800 50  0000 C CNN
F 2 "Inductor_SMD:L_Wuerth_WE-PD-Typ-7345" H 1950 3800 50  0001 C CNN
F 3 "~" H 1950 3800 50  0001 C CNN
	1    1950 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 609804B2
P 2150 3950
F 0 "R1" H 2209 3996 50  0000 L CNN
F 1 "90k" H 2209 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2150 3950 50  0001 C CNN
F 3 "~" H 2150 3950 50  0001 C CNN
	1    2150 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 60980B0C
P 2150 4200
F 0 "R2" H 2209 4246 50  0000 L CNN
F 1 "20k" H 2209 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2150 4200 50  0001 C CNN
F 3 "~" H 2150 4200 50  0001 C CNN
	1    2150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4100 2150 4050
Wire Wire Line
	2150 3800 2150 3850
$Comp
L power:GND #PWR0107
U 1 1 609819CA
P 2150 4300
F 0 "#PWR0107" H 2150 4050 50  0001 C CNN
F 1 "GND" H 2155 4127 50  0000 C CNN
F 2 "" H 2150 4300 50  0001 C CNN
F 3 "" H 2150 4300 50  0001 C CNN
	1    2150 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 60981EC7
P 2400 4200
F 0 "C2" H 2492 4246 50  0000 L CNN
F 1 "22u" H 2492 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2400 4200 50  0001 C CNN
F 3 "~" H 2400 4200 50  0001 C CNN
	1    2400 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 6098222D
P 2400 4300
F 0 "#PWR0108" H 2400 4050 50  0001 C CNN
F 1 "GND" H 2405 4127 50  0000 C CNN
F 2 "" H 2400 4300 50  0001 C CNN
F 3 "" H 2400 4300 50  0001 C CNN
	1    2400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3800 2150 3800
Wire Wire Line
	2050 3800 2150 3800
Connection ~ 2150 3800
Wire Wire Line
	1850 4050 2150 4050
Connection ~ 2150 4050
Text GLabel 900  3800 0    50   Input ~ 0
5v
Text GLabel 2400 3800 2    50   Input ~ 0
3v3
Wire Wire Line
	2400 4100 2400 3800
$Comp
L Device:LED_Small D5
U 1 1 6099E48F
P 8100 2750
F 0 "D5" V 8146 2682 50  0000 R CNN
F 1 "LED_RED" V 8055 2682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 8100 2750 50  0001 C CNN
F 3 "~" V 8100 2750 50  0001 C CNN
	1    8100 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D7
U 1 1 6099E495
P 8550 2750
F 0 "D7" V 8596 2682 50  0000 R CNN
F 1 "LED_RED" V 8505 2682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 8550 2750 50  0001 C CNN
F 3 "~" V 8550 2750 50  0001 C CNN
	1    8550 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D9
U 1 1 609A12D0
P 9000 2750
F 0 "D9" V 9046 2682 50  0000 R CNN
F 1 "LED_RED" V 8955 2682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 9000 2750 50  0001 C CNN
F 3 "~" V 9000 2750 50  0001 C CNN
	1    9000 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D11
U 1 1 609A12D6
P 9450 2750
F 0 "D11" V 9496 2682 50  0000 R CNN
F 1 "LED_RED" V 9405 2682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 9450 2750 50  0001 C CNN
F 3 "~" V 9450 2750 50  0001 C CNN
	1    9450 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D13
U 1 1 609A12F2
P 9950 2750
F 0 "D13" V 9996 2682 50  0000 R CNN
F 1 "LED_RED" V 9905 2682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 9950 2750 50  0001 C CNN
F 3 "~" V 9950 2750 50  0001 C CNN
	1    9950 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D15
U 1 1 609A12F8
P 10400 2750
F 0 "D15" V 10446 2682 50  0000 R CNN
F 1 "LED_RED" V 10355 2682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 10400 2750 50  0001 C CNN
F 3 "~" V 10400 2750 50  0001 C CNN
	1    10400 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 609A6E0D
P 7150 3200
F 0 "D2" V 7196 3132 50  0000 R CNN
F 1 "LED_RED" V 7105 3132 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 7150 3200 50  0001 C CNN
F 3 "~" V 7150 3200 50  0001 C CNN
	1    7150 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 609A6E13
P 7600 3200
F 0 "D4" V 7646 3132 50  0000 R CNN
F 1 "LED_RED" V 7555 3132 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 7600 3200 50  0001 C CNN
F 3 "~" V 7600 3200 50  0001 C CNN
	1    7600 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D6
U 1 1 609A6E2F
P 8100 3200
F 0 "D6" V 8146 3132 50  0000 R CNN
F 1 "LED_RED" V 8055 3132 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 8100 3200 50  0001 C CNN
F 3 "~" V 8100 3200 50  0001 C CNN
	1    8100 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D8
U 1 1 609A6E35
P 8550 3200
F 0 "D8" V 8596 3132 50  0000 R CNN
F 1 "LED_RED" V 8505 3132 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 8550 3200 50  0001 C CNN
F 3 "~" V 8550 3200 50  0001 C CNN
	1    8550 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D10
U 1 1 609A6E51
P 9000 3200
F 0 "D10" V 9046 3132 50  0000 R CNN
F 1 "LED_RED" V 8955 3132 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 9000 3200 50  0001 C CNN
F 3 "~" V 9000 3200 50  0001 C CNN
	1    9000 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D12
U 1 1 609A6E57
P 9450 3200
F 0 "D12" V 9496 3132 50  0000 R CNN
F 1 "LED_RED" V 9405 3132 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 9450 3200 50  0001 C CNN
F 3 "~" V 9450 3200 50  0001 C CNN
	1    9450 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D16
U 1 1 609A6E79
P 10400 3200
F 0 "D16" V 10446 3132 50  0000 R CNN
F 1 "LED_RED" V 10355 3132 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 10400 3200 50  0001 C CNN
F 3 "~" V 10400 3200 50  0001 C CNN
	1    10400 3200
	0    -1   -1   0   
$EndComp
NoConn ~ 3100 2750
NoConn ~ 3100 2850
NoConn ~ 4300 2750
NoConn ~ 4300 2850
NoConn ~ 4300 2950
NoConn ~ 4300 3150
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 609D1A70
P 1400 1400
F 0 "J1" H 1457 1717 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1457 1626 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1450 1360 50  0001 C CNN
F 3 "~" H 1450 1360 50  0001 C CNN
	1    1400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1500 1700 1400
Connection ~ 1700 1500
$Comp
L good_things:PCA9552 U4
U 1 1 609B0B48
P 6050 3150
F 0 "U4" H 6050 4125 50  0000 C CNN
F 1 "PCA9552" H 6050 4034 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 6000 4250 50  0001 C CNN
F 3 "" H 6000 4250 50  0001 C CNN
	1    6050 3150
	1    0    0    -1  
$EndComp
Text GLabel 5100 2400 0    50   Input ~ 0
3v3
$Comp
L power:GND #PWR0109
U 1 1 609B788A
P 5200 2600
F 0 "#PWR0109" H 5200 2350 50  0001 C CNN
F 1 "GND" H 5205 2427 50  0000 C CNN
F 2 "" H 5200 2600 50  0001 C CNN
F 3 "" H 5200 2600 50  0001 C CNN
	1    5200 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 609B7890
P 5200 2500
F 0 "C6" H 5292 2546 50  0000 L CNN
F 1 "100n" H 5292 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5200 2500 50  0001 C CNN
F 3 "~" H 5200 2500 50  0001 C CNN
	1    5200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2400 5200 2400
Connection ~ 5200 2400
Wire Wire Line
	5200 2400 5650 2400
Wire Wire Line
	5650 2400 5650 2500
Connection ~ 5650 2400
Connection ~ 5650 2500
Wire Wire Line
	5650 2500 5650 2600
Connection ~ 5650 2600
Wire Wire Line
	5650 2600 5650 2700
$Comp
L power:GND #PWR0110
U 1 1 609BD9AD
P 5650 3900
F 0 "#PWR0110" H 5650 3650 50  0001 C CNN
F 1 "GND" H 5655 3727 50  0000 C CNN
F 2 "" H 5650 3900 50  0001 C CNN
F 3 "" H 5650 3900 50  0001 C CNN
	1    5650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3900 5650 3800
Connection ~ 5650 3900
$Comp
L Device:R_Small R6
U 1 1 609C3717
P 5300 3250
F 0 "R6" H 5359 3296 50  0000 L CNN
F 1 "3k3" H 5359 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5300 3250 50  0001 C CNN
F 3 "~" H 5300 3250 50  0001 C CNN
	1    5300 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 609C41D7
P 5050 3250
F 0 "R5" H 5109 3296 50  0000 L CNN
F 1 "3k3" H 5109 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5050 3250 50  0001 C CNN
F 3 "~" H 5050 3250 50  0001 C CNN
	1    5050 3250
	1    0    0    -1  
$EndComp
Text GLabel 5000 3150 0    50   Input ~ 0
3v3
Wire Wire Line
	5000 3150 5050 3150
Connection ~ 5050 3150
Wire Wire Line
	5050 3150 5300 3150
Wire Wire Line
	5650 3500 5300 3500
Wire Wire Line
	5050 3350 5050 3400
Wire Wire Line
	5050 3400 5650 3400
Wire Wire Line
	5300 3350 5300 3500
NoConn ~ 3100 3050
NoConn ~ 3100 3150
NoConn ~ 3100 3250
NoConn ~ 3100 3350
NoConn ~ 3100 3450
NoConn ~ 3100 3550
NoConn ~ 3100 3650
NoConn ~ 3100 3750
$Comp
L Device:LED_Small D1
U 1 1 60969B4A
P 7150 2750
F 0 "D1" V 7196 2682 50  0000 R CNN
F 1 "LED_RED" V 7105 2682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 7150 2750 50  0001 C CNN
F 3 "~" V 7150 2750 50  0001 C CNN
	1    7150 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10400 2650 9950 2650
Connection ~ 7600 2650
Wire Wire Line
	7600 2650 7150 2650
Connection ~ 8100 2650
Wire Wire Line
	8100 2650 7600 2650
Connection ~ 8550 2650
Wire Wire Line
	8550 2650 8100 2650
Connection ~ 9000 2650
Wire Wire Line
	9000 2650 8550 2650
Connection ~ 9450 2650
Wire Wire Line
	9450 2650 9000 2650
Connection ~ 9950 2650
Wire Wire Line
	9950 2650 9450 2650
Wire Wire Line
	7150 3100 7600 3100
Connection ~ 7600 3100
Wire Wire Line
	7600 3100 8100 3100
Connection ~ 8100 3100
Wire Wire Line
	8100 3100 8550 3100
Connection ~ 8550 3100
Wire Wire Line
	8550 3100 9000 3100
Connection ~ 9000 3100
Wire Wire Line
	9000 3100 9450 3100
Connection ~ 9450 3100
Text GLabel 7600 2850 3    50   Input ~ 0
l3
Text GLabel 8100 2850 3    50   Input ~ 0
l5
Text GLabel 8550 2850 3    50   Input ~ 0
l7
Text GLabel 9000 2850 3    50   Input ~ 0
l9
Text GLabel 9450 2850 3    50   Input ~ 0
l11
Text GLabel 9950 2850 3    50   Input ~ 0
l13
Text GLabel 10400 2850 3    50   Input ~ 0
l15
Text GLabel 7150 3300 3    50   Input ~ 0
l0
Connection ~ 9950 3100
Wire Wire Line
	9950 3100 10400 3100
Wire Wire Line
	9450 3100 9950 3100
$Comp
L Device:LED_Small D14
U 1 1 609A6E73
P 9950 3200
F 0 "D14" V 9996 3132 50  0000 R CNN
F 1 "LED_RED" V 9905 3132 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 9950 3200 50  0001 C CNN
F 3 "~" V 9950 3200 50  0001 C CNN
	1    9950 3200
	0    -1   -1   0   
$EndComp
Text GLabel 10400 3300 3    50   Input ~ 0
l14
Text GLabel 9950 3300 3    50   Input ~ 0
l12
Text GLabel 9450 3300 3    50   Input ~ 0
l10
Text GLabel 9000 3300 3    50   Input ~ 0
l8
Text GLabel 8550 3300 3    50   Input ~ 0
l6
Text GLabel 8100 3300 3    50   Input ~ 0
l4
Text GLabel 6450 2400 2    50   Input ~ 0
l0
Text GLabel 6450 2500 2    50   Input ~ 0
l1
Text GLabel 6450 2600 2    50   Input ~ 0
l2
Text GLabel 6450 2700 2    50   Input ~ 0
l3
Text GLabel 6450 2800 2    50   Input ~ 0
l4
Text GLabel 6450 2900 2    50   Input ~ 0
l5
Text GLabel 6450 3000 2    50   Input ~ 0
l6
Text GLabel 6450 3100 2    50   Input ~ 0
l7
Text GLabel 6450 3200 2    50   Input ~ 0
l8
Text GLabel 6450 3300 2    50   Input ~ 0
l9
Text GLabel 6450 3400 2    50   Input ~ 0
l10
Text GLabel 6450 3500 2    50   Input ~ 0
l11
Text GLabel 6450 3600 2    50   Input ~ 0
l12
Text GLabel 6450 3700 2    50   Input ~ 0
l13
Text GLabel 6450 3800 2    50   Input ~ 0
l14
Text GLabel 6450 3900 2    50   Input ~ 0
l15
Text Notes 5850 4150 0    50   ~ 0
i2c addr\n0x70
$Comp
L Device:C_Small C4
U 1 1 609FA52F
P 900 4850
F 0 "C4" H 992 4896 50  0000 L CNN
F 1 "22u" H 992 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 900 4850 50  0001 C CNN
F 3 "~" H 900 4850 50  0001 C CNN
	1    900  4850
	1    0    0    -1  
$EndComp
$Comp
L good_things:RT8097AHGB U3
U 1 1 609FA535
P 1550 4850
F 0 "U3" H 1550 5175 50  0000 C CNN
F 1 "RT8097AHGB" H 1550 5084 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 1450 4750 50  0001 C CNN
F 3 "" H 1450 4750 50  0001 C CNN
	1    1550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4750 1250 4850
Wire Wire Line
	900  4750 1250 4750
Connection ~ 1250 4750
$Comp
L power:GND #PWR0111
U 1 1 609FA53E
P 1250 5000
F 0 "#PWR0111" H 1250 4750 50  0001 C CNN
F 1 "GND" H 1255 4827 50  0000 C CNN
F 2 "" H 1250 5000 50  0001 C CNN
F 3 "" H 1250 5000 50  0001 C CNN
	1    1250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5000 900  5000
Wire Wire Line
	900  5000 900  4950
Connection ~ 1250 5000
$Comp
L Device:L_Small L2
U 1 1 609FA547
P 1950 4750
F 0 "L2" V 2135 4750 50  0000 C CNN
F 1 "1u5" V 2044 4750 50  0000 C CNN
F 2 "Inductor_SMD:L_Wuerth_WE-PD-Typ-7345" H 1950 4750 50  0001 C CNN
F 3 "~" H 1950 4750 50  0001 C CNN
	1    1950 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 609FA54D
P 2150 4900
F 0 "R3" H 2209 4946 50  0000 L CNN
F 1 "52k" H 2209 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2150 4900 50  0001 C CNN
F 3 "~" H 2150 4900 50  0001 C CNN
	1    2150 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 609FA553
P 2150 5150
F 0 "R4" H 2209 5196 50  0000 L CNN
F 1 "24k" H 2209 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2150 5150 50  0001 C CNN
F 3 "~" H 2150 5150 50  0001 C CNN
	1    2150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5050 2150 5000
Wire Wire Line
	2150 4750 2150 4800
$Comp
L power:GND #PWR0112
U 1 1 609FA55B
P 2150 5250
F 0 "#PWR0112" H 2150 5000 50  0001 C CNN
F 1 "GND" H 2155 5077 50  0000 C CNN
F 2 "" H 2150 5250 50  0001 C CNN
F 3 "" H 2150 5250 50  0001 C CNN
	1    2150 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 609FA561
P 2400 5150
F 0 "C5" H 2492 5196 50  0000 L CNN
F 1 "22u" H 2492 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2400 5150 50  0001 C CNN
F 3 "~" H 2400 5150 50  0001 C CNN
	1    2400 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 609FA567
P 2400 5250
F 0 "#PWR0113" H 2400 5000 50  0001 C CNN
F 1 "GND" H 2405 5077 50  0000 C CNN
F 2 "" H 2400 5250 50  0001 C CNN
F 3 "" H 2400 5250 50  0001 C CNN
	1    2400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4750 2150 4750
Wire Wire Line
	2050 4750 2150 4750
Connection ~ 2150 4750
Wire Wire Line
	1850 5000 2150 5000
Connection ~ 2150 5000
Text GLabel 900  4750 0    50   Input ~ 0
5v
Text GLabel 2400 4750 2    50   Input ~ 0
1v9
Wire Wire Line
	2400 5050 2400 4750
Text GLabel 7600 3300 3    50   Input ~ 0
l2
Text GLabel 7150 2850 3    50   Input ~ 0
l1
Text GLabel 7000 2650 0    50   Input ~ 0
1v9
Text GLabel 7000 3100 0    50   Input ~ 0
1v9
Wire Wire Line
	7000 3100 7150 3100
Connection ~ 7150 3100
Wire Wire Line
	7000 2650 7150 2650
Connection ~ 7150 2650
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 60A219B2
P 2150 1400
F 0 "Q1" V 2492 1400 50  0000 C CNN
F 1 "Q_PMOS_GSD" V 2401 1400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 2350 1500 50  0001 C CNN
F 3 "~" H 2150 1400 50  0001 C CNN
	1    2150 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 60A2791F
P 2150 1700
F 0 "R7" H 2209 1746 50  0000 L CNN
F 1 "3k3" H 2209 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2150 1700 50  0001 C CNN
F 3 "~" H 2150 1700 50  0001 C CNN
	1    2150 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 60A27F4E
P 2150 1800
F 0 "#PWR0114" H 2150 1550 50  0001 C CNN
F 1 "GND" H 2155 1627 50  0000 C CNN
F 2 "" H 2150 1800 50  0001 C CNN
F 3 "" H 2150 1800 50  0001 C CNN
	1    2150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1300 1950 1300
Wire Wire Line
	2350 1300 2500 1300
$Comp
L RF_Module:ESP-WROOM-02 U5
U 1 1 60A2E46B
P 4050 6200
F 0 "U5" H 4150 5500 50  0000 C CNN
F 1 "ESP-WROOM-02" H 4400 5600 50  0000 C CNN
F 2 "RF_Module:ESP-WROOM-02" H 4650 5650 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/0c-esp-wroom-02_datasheet_en.pdf" H 4100 7700 50  0001 C CNN
	1    4050 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 60A3009D
P 4050 6800
F 0 "#PWR0115" H 4050 6550 50  0001 C CNN
F 1 "GND" H 4055 6627 50  0000 C CNN
F 2 "" H 4050 6800 50  0001 C CNN
F 3 "" H 4050 6800 50  0001 C CNN
	1    4050 6800
	1    0    0    -1  
$EndComp
Text GLabel 4050 5150 1    50   Input ~ 0
3v3
$Comp
L power:GND #PWR0116
U 1 1 60A32E96
P 4600 5350
F 0 "#PWR0116" H 4600 5100 50  0001 C CNN
F 1 "GND" H 4605 5177 50  0000 C CNN
F 2 "" H 4600 5350 50  0001 C CNN
F 3 "" H 4600 5350 50  0001 C CNN
	1    4600 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 60A32E9C
P 4600 5250
F 0 "C8" H 4692 5296 50  0000 L CNN
F 1 "22u" H 4692 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4600 5250 50  0001 C CNN
F 3 "~" H 4600 5250 50  0001 C CNN
	1    4600 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5600 4050 5150
Wire Wire Line
	4050 5150 4600 5150
Text GLabel 4800 3400 0    50   Input ~ 0
SDA
Text GLabel 4800 3500 0    50   Input ~ 0
SCL
Wire Wire Line
	5300 3500 4800 3500
Connection ~ 5300 3500
Wire Wire Line
	4800 3400 5050 3400
Connection ~ 5050 3400
Text GLabel 4300 2550 2    50   Input ~ 0
SDA
Text GLabel 4300 2650 2    50   Input ~ 0
SCL
Text GLabel 4550 5900 2    50   Input ~ 0
SDA
Text GLabel 4550 6400 2    50   Input ~ 0
SCL
Text GLabel 4550 5800 2    50   Input ~ 0
BOOT
$Comp
L Device:R_Small R8
U 1 1 60A3F9BF
P 2950 5600
F 0 "R8" H 3009 5646 50  0000 L CNN
F 1 "10k" H 3009 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2950 5600 50  0001 C CNN
F 3 "~" H 2950 5600 50  0001 C CNN
	1    2950 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 60A40242
P 2950 5950
F 0 "C7" H 3042 5996 50  0000 L CNN
F 1 "100n" H 3042 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2950 5950 50  0001 C CNN
F 3 "~" H 2950 5950 50  0001 C CNN
	1    2950 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5700 2950 5800
Connection ~ 2950 5800
Wire Wire Line
	2950 5800 2950 5850
Text GLabel 2950 5500 1    50   Input ~ 0
3v3
$Comp
L power:GND #PWR0117
U 1 1 60A468A5
P 2950 6050
F 0 "#PWR0117" H 2950 5800 50  0001 C CNN
F 1 "GND" H 2955 5877 50  0000 C CNN
F 2 "" H 2950 6050 50  0001 C CNN
F 3 "" H 2950 6050 50  0001 C CNN
	1    2950 6050
	1    0    0    -1  
$EndComp
NoConn ~ 3550 6100
Text GLabel 2950 5800 0    50   Input ~ 0
EN
Wire Wire Line
	2950 5800 3550 5800
$Comp
L Device:R_Small R9
U 1 1 60A4B646
P 3400 5600
F 0 "R9" H 3459 5646 50  0000 L CNN
F 1 "10k" H 3459 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3400 5600 50  0001 C CNN
F 3 "~" H 3400 5600 50  0001 C CNN
	1    3400 5600
	1    0    0    -1  
$EndComp
Text GLabel 3400 5500 1    50   Input ~ 0
3v3
Wire Wire Line
	3400 5700 3400 5900
Wire Wire Line
	3400 5900 3550 5900
Text GLabel 3550 6300 0    50   Input ~ 0
RX
Text GLabel 3550 6400 0    50   Input ~ 0
TX
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 60A4EEEC
P 6000 6100
F 0 "J3" H 6080 6092 50  0000 L CNN
F 1 "Conn_01x06" H 6080 6001 50  0000 L CNN
F 2 "good_things:TSM-106-01-L-SH" H 6000 6100 50  0001 C CNN
F 3 "~" H 6000 6100 50  0001 C CNN
	1    6000 6100
	1    0    0    -1  
$EndComp
Text GLabel 5800 5900 0    50   Input ~ 0
TX
Text GLabel 5800 6000 0    50   Input ~ 0
BOOT
Text GLabel 5800 6100 0    50   Input ~ 0
EN
Text GLabel 5800 6200 0    50   Input ~ 0
RX
Text GLabel 5800 6300 0    50   Input ~ 0
5v
$Comp
L power:GND #PWR0118
U 1 1 60A54E8C
P 5800 6400
F 0 "#PWR0118" H 5800 6150 50  0001 C CNN
F 1 "GND" H 5805 6227 50  0000 C CNN
F 2 "" H 5800 6400 50  0001 C CNN
F 3 "" H 5800 6400 50  0001 C CNN
	1    5800 6400
	1    0    0    -1  
$EndComp
NoConn ~ 4550 6000
NoConn ~ 4550 6100
NoConn ~ 4550 6200
NoConn ~ 4550 6300
NoConn ~ 4550 6500
NoConn ~ 4550 6600
$EndSCHEMATC
