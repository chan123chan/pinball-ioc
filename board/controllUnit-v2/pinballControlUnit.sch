EESchema Schematic File Version 4
LIBS:pinballControlUnit-cache
EELAYER 29 0
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
L Connector_Generic:Conn_01x06 J8
U 1 1 5D5E4C24
P 6750 4000
F 0 "J8" H 6830 3992 50  0000 L CNN
F 1 "Conn_01x06" H 6830 3901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6750 4000 50  0001 C CNN
F 3 "~" H 6750 4000 50  0001 C CNN
	1    6750 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D5F41A9
P 6200 3800
F 0 "R6" V 6200 3800 50  0000 C CNN
F 1 "1k" V 6150 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6130 3800 50  0001 C CNN
F 3 "~" H 6200 3800 50  0001 C CNN
	1    6200 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5D5F50AF
P 6200 3900
F 0 "R7" V 6200 3900 50  0000 C CNN
F 1 "1k" V 6150 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6130 3900 50  0001 C CNN
F 3 "~" H 6200 3900 50  0001 C CNN
	1    6200 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5D5F58E7
P 6200 4000
F 0 "R8" V 6200 4000 50  0000 C CNN
F 1 "1k" V 6150 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6130 4000 50  0001 C CNN
F 3 "~" H 6200 4000 50  0001 C CNN
	1    6200 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 3800 6550 3800
Wire Wire Line
	6350 3900 6550 3900
Wire Wire Line
	6350 4000 6550 4000
Wire Wire Line
	2450 2600 2700 2600
Wire Wire Line
	2450 2500 2700 2500
Wire Wire Line
	2450 2400 2700 2400
$Comp
L power:GND #PWR015
U 1 1 5D608897
P 6350 4300
F 0 "#PWR015" H 6350 4050 50  0001 C CNN
F 1 "GND" V 6350 4050 50  0000 C CNN
F 2 "" H 6350 4300 50  0001 C CNN
F 3 "" H 6350 4300 50  0001 C CNN
	1    6350 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 4200 6550 4200
Wire Wire Line
	1850 1250 1850 1300
Wire Wire Line
	1950 1250 1950 1300
$Comp
L power:+3V3 #PWR014
U 1 1 5D4CE516
P 6350 4200
F 0 "#PWR014" H 6350 4050 50  0001 C CNN
F 1 "+3V3" V 6350 4450 50  0000 C CNN
F 2 "" H 6350 4200 50  0001 C CNN
F 3 "" H 6350 4200 50  0001 C CNN
	1    6350 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2450 3600 2700 3600
Wire Wire Line
	5250 4100 5500 4100
$Comp
L Device:R R4
U 1 1 5D62116C
P 5500 3950
F 0 "R4" H 5570 3996 50  0000 L CNN
F 1 "10k" H 5570 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5430 3950 50  0001 C CNN
F 3 "~" H 5500 3950 50  0001 C CNN
	1    5500 3950
	1    0    0    -1  
$EndComp
Text GLabel 5150 1850 0    50   Input ~ 0
RX
Text GLabel 5150 1750 0    50   Input ~ 0
TX
Wire Wire Line
	2450 2300 2700 2300
Wire Wire Line
	2450 2200 2700 2200
Text GLabel 2700 2200 2    50   Input ~ 0
TX
Text GLabel 5950 3800 0    50   Input ~ 0
MOSI
Wire Wire Line
	6050 3800 5950 3800
Wire Wire Line
	6050 3900 5950 3900
Text GLabel 5950 3900 0    50   Input ~ 0
MISO
Wire Wire Line
	6050 4000 5950 4000
Text GLabel 5950 4000 0    50   Input ~ 0
SCK
Text GLabel 5250 4100 0    50   Input ~ 0
RESET
Text GLabel 2700 2300 2    50   Input ~ 0
RX
Text GLabel 2700 2400 2    50   Input ~ 0
MOSI
Text GLabel 2700 2500 2    50   Input ~ 0
MISO
Text GLabel 2700 2600 2    50   Input ~ 0
SCK
Text GLabel 2700 3600 2    50   Input ~ 0
RESET
Wire Wire Line
	2450 2700 2700 2700
Wire Wire Line
	2450 2800 2700 2800
Text GLabel 2700 2700 2    50   Input ~ 0
FET1
Text GLabel 2700 2800 2    50   Input ~ 0
FET2
$Comp
L power:+3V3 #PWR01
U 1 1 5D6AD018
P 900 1200
F 0 "#PWR01" H 900 1050 50  0001 C CNN
F 1 "+3V3" H 915 1373 50  0000 C CNN
F 2 "" H 900 1200 50  0001 C CNN
F 3 "" H 900 1200 50  0001 C CNN
	1    900  1200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D720D6D
P 8100 5800
F 0 "SW1" V 8054 5948 50  0000 L CNN
F 1 "SW_Push" V 8145 5948 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 8100 6000 50  0001 C CNN
F 3 "~" H 8100 6000 50  0001 C CNN
	1    8100 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 5550 8100 5600
$Comp
L power:+3V3 #PWR07
U 1 1 5D720D8E
P 8100 5250
F 0 "#PWR07" H 8100 5100 50  0001 C CNN
F 1 "+3V3" H 8115 5423 50  0000 C CNN
F 2 "" H 8100 5250 50  0001 C CNN
F 3 "" H 8100 5250 50  0001 C CNN
	1    8100 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D725B57
P 8100 6000
F 0 "#PWR08" H 8100 5750 50  0001 C CNN
F 1 "GND" H 8105 5827 50  0000 C CNN
F 2 "" H 8100 6000 50  0001 C CNN
F 3 "" H 8100 6000 50  0001 C CNN
	1    8100 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D720D85
P 8100 5400
F 0 "R2" H 8170 5446 50  0000 L CNN
F 1 "10k" H 8170 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8030 5400 50  0001 C CNN
F 3 "~" H 8100 5400 50  0001 C CNN
	1    8100 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5D74D3A2
P 10050 5450
F 0 "R9" H 10120 5496 50  0000 L CNN
F 1 "100" H 10120 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9980 5450 50  0001 C CNN
F 3 "~" H 10050 5450 50  0001 C CNN
	1    10050 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5D74D3A8
P 10050 5750
F 0 "D3" V 10089 5633 50  0000 R CNN
F 1 "LED" V 9998 5633 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 10050 5750 50  0001 C CNN
F 3 "~" H 10050 5750 50  0001 C CNN
	1    10050 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D74D3B5
P 10050 6000
F 0 "#PWR013" H 10050 5750 50  0001 C CNN
F 1 "GND" H 10055 5827 50  0000 C CNN
F 2 "" H 10050 6000 50  0001 C CNN
F 3 "" H 10050 6000 50  0001 C CNN
	1    10050 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 6000 10050 5900
$Comp
L Switch:SW_Push SW2
U 1 1 5D76D3CF
P 8700 5800
F 0 "SW2" V 8654 5948 50  0000 L CNN
F 1 "SW_Push" V 8745 5948 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 8700 6000 50  0001 C CNN
F 3 "~" H 8700 6000 50  0001 C CNN
	1    8700 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 5550 8700 5600
$Comp
L power:+3V3 #PWR09
U 1 1 5D76D3DF
P 8700 5250
F 0 "#PWR09" H 8700 5100 50  0001 C CNN
F 1 "+3V3" H 8715 5423 50  0000 C CNN
F 2 "" H 8700 5250 50  0001 C CNN
F 3 "" H 8700 5250 50  0001 C CNN
	1    8700 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D76D3E5
P 8700 6000
F 0 "#PWR010" H 8700 5750 50  0001 C CNN
F 1 "GND" H 8705 5827 50  0000 C CNN
F 2 "" H 8700 6000 50  0001 C CNN
F 3 "" H 8700 6000 50  0001 C CNN
	1    8700 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D76D3EC
P 8700 5400
F 0 "R3" H 8770 5446 50  0000 L CNN
F 1 "10k" H 8770 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8630 5400 50  0001 C CNN
F 3 "~" H 8700 5400 50  0001 C CNN
	1    8700 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D774CA2
P 9500 5450
F 0 "R5" H 9570 5496 50  0000 L CNN
F 1 "100" H 9570 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9430 5450 50  0001 C CNN
F 3 "~" H 9500 5450 50  0001 C CNN
	1    9500 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5D774CA8
P 9500 5750
F 0 "D2" V 9539 5633 50  0000 R CNN
F 1 "LED" V 9448 5633 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9500 5750 50  0001 C CNN
F 3 "~" H 9500 5750 50  0001 C CNN
	1    9500 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D774CB5
P 9500 6000
F 0 "#PWR012" H 9500 5750 50  0001 C CNN
F 1 "GND" H 9505 5827 50  0000 C CNN
F 2 "" H 9500 6000 50  0001 C CNN
F 3 "" H 9500 6000 50  0001 C CNN
	1    9500 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 6000 9500 5900
Text GLabel 8300 5600 2    50   Input ~ 0
SW1
Text GLabel 8900 5600 2    50   Input ~ 0
SW2
Wire Wire Line
	2450 3000 2700 3000
Wire Wire Line
	2450 3100 2700 3100
Wire Wire Line
	2450 3200 2700 3200
Wire Wire Line
	2450 3300 2700 3300
Text GLabel 2700 3000 2    50   Input ~ 0
SW1
Text GLabel 2700 3100 2    50   Input ~ 0
SW2
Text GLabel 2700 3200 2    50   Input ~ 0
LED1
Text GLabel 2700 3300 2    50   Input ~ 0
LED2
$Comp
L Connector:AudioJack2 J6
U 1 1 5D7B61B5
P 5550 1300
F 0 "J6" H 5370 1283 50  0000 R CNN
F 1 "AudioJack2" H 5370 1374 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ-3523-SMT_Horizontal" H 5550 1300 50  0001 C CNN
F 3 "~" H 5550 1300 50  0001 C CNN
	1    5550 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 1300 5200 1300
Wire Wire Line
	5200 1300 5200 1750
Wire Wire Line
	5200 1750 5150 1750
Wire Wire Line
	5250 1850 5250 1400
Wire Wire Line
	5250 1400 5350 1400
Wire Wire Line
	5250 1850 5150 1850
Text GLabel 2700 3900 2    50   Input ~ 0
PD0
Text GLabel 2700 4000 2    50   Input ~ 0
PD1
Text GLabel 2700 4100 2    50   Input ~ 0
PD2
Text GLabel 2700 4200 2    50   Input ~ 0
PD3
Text GLabel 2700 4300 2    50   Input ~ 0
PD4
Text GLabel 2700 4400 2    50   Input ~ 0
PD5
Text GLabel 2700 4500 2    50   Input ~ 0
PD6
Text GLabel 2700 4600 2    50   Input ~ 0
PD7
Wire Wire Line
	2450 3900 2700 3900
Wire Wire Line
	2450 4000 2700 4000
Wire Wire Line
	2450 4100 2700 4100
Wire Wire Line
	2450 4200 2700 4200
Wire Wire Line
	2450 4300 2700 4300
Wire Wire Line
	2450 4400 2700 4400
Wire Wire Line
	2450 4500 2700 4500
Wire Wire Line
	2450 4600 2700 4600
Text GLabel 3750 4600 0    50   Input ~ 0
PD0
Text GLabel 3750 4500 0    50   Input ~ 0
PD1
Text GLabel 3750 4400 0    50   Input ~ 0
PD2
Text GLabel 3750 4300 0    50   Input ~ 0
PD3
Text GLabel 3750 4200 0    50   Input ~ 0
PD4
Text GLabel 3750 4100 0    50   Input ~ 0
PD5
Text GLabel 3750 4000 0    50   Input ~ 0
PD6
Text GLabel 3750 3900 0    50   Input ~ 0
PD7
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5D7E3C2C
P 3950 1800
F 0 "J2" H 3922 1682 50  0000 R CNN
F 1 "Conn_01x04_Male" H 3922 1773 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3950 1800 50  0001 C CNN
F 3 "~" H 3950 1800 50  0001 C CNN
	1    3950 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 1600 2700 1600
Wire Wire Line
	2450 1700 2700 1700
Wire Wire Line
	2450 1800 2700 1800
Wire Wire Line
	2450 1900 2700 1900
Text GLabel 2700 1600 2    50   Input ~ 0
PA0
Text GLabel 2700 1700 2    50   Input ~ 0
PA1
Text GLabel 2700 1800 2    50   Input ~ 0
PA2
Text GLabel 2700 1900 2    50   Input ~ 0
PA3
Text GLabel 3750 1900 0    50   Input ~ 0
PA0
Text GLabel 3750 1800 0    50   Input ~ 0
PA1
Text GLabel 3750 1700 0    50   Input ~ 0
PA2
Text GLabel 3750 1600 0    50   Input ~ 0
PA3
Wire Wire Line
	5200 1750 5450 1750
Connection ~ 5200 1750
Wire Wire Line
	5250 1850 5450 1850
Connection ~ 5250 1850
$Comp
L Device:C C1
U 1 1 5D81426B
P 900 1450
F 0 "C1" H 1015 1496 50  0000 L CNN
F 1 "100n" H 1015 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 938 1300 50  0001 C CNN
F 3 "~" H 900 1450 50  0001 C CNN
	1    900  1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J4
U 1 1 5D822F31
P 3950 3400
F 0 "J4" H 3922 3282 50  0000 R CNN
F 1 "Conn_01x08_Male" H 3922 3373 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3950 3400 50  0001 C CNN
F 3 "~" H 3950 3400 50  0001 C CNN
	1    3950 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 3400 2700 3400
Wire Wire Line
	2450 3500 2700 3500
Wire Wire Line
	2450 3700 2700 3700
Text GLabel 2700 3400 2    50   Input ~ 0
FET3
Text GLabel 2700 3500 2    50   Input ~ 0
FET4
Text GLabel 2700 3700 2    50   Input ~ 0
PC7
Text GLabel 3750 3100 0    50   Input ~ 0
RESET
Text GLabel 3750 3700 0    50   Input ~ 0
SW1
Text GLabel 3750 3600 0    50   Input ~ 0
SW2
Text GLabel 3750 3500 0    50   Input ~ 0
LED1
Text GLabel 3750 3400 0    50   Input ~ 0
LED2
Text GLabel 3750 3300 0    50   Input ~ 0
FET3
Text GLabel 3750 3200 0    50   Input ~ 0
FET4
Text GLabel 3750 3000 0    50   Input ~ 0
PC7
Wire Wire Line
	2450 2100 2700 2100
Text GLabel 2700 2100 2    50   Input ~ 0
PB0
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 5D8400A1
P 3950 2500
F 0 "J3" H 3922 2382 50  0000 R CNN
F 1 "Conn_01x08_Male" H 3922 2473 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3950 2500 50  0001 C CNN
F 3 "~" H 3950 2500 50  0001 C CNN
	1    3950 2500
	-1   0    0    1   
$EndComp
Text GLabel 3750 2700 0    50   Input ~ 0
TX
Text GLabel 3750 2600 0    50   Input ~ 0
RX
Text GLabel 3750 2500 0    50   Input ~ 0
MOSI
Text GLabel 3750 2400 0    50   Input ~ 0
MISO
Text GLabel 3750 2300 0    50   Input ~ 0
SCK
Text GLabel 3750 2200 0    50   Input ~ 0
FET1
Text GLabel 3750 2100 0    50   Input ~ 0
FET2
Text GLabel 3750 2800 0    50   Input ~ 0
PB0
$Comp
L Connector:Conn_01x08_Male J5
U 1 1 5D7BBF85
P 3950 4300
F 0 "J5" H 3922 4182 50  0000 R CNN
F 1 "Conn_01x08_Male" H 3922 4273 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3950 4300 50  0001 C CNN
F 3 "~" H 3950 4300 50  0001 C CNN
	1    3950 4300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5D86CD6B
P 5650 1850
F 0 "J7" H 5622 1732 50  0000 R CNN
F 1 "Conn_01x02_Male" H 5622 1823 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5650 1850 50  0001 C CNN
F 3 "~" H 5650 1850 50  0001 C CNN
	1    5650 1850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5D86E14A
P 650 6350
F 0 "J1" H 600 6450 50  0000 R CNN
F 1 "Conn_01x02_Male" H 713 6162 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 650 6350 50  0001 C CNN
F 3 "~" H 650 6350 50  0001 C CNN
	1    650  6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D895B57
P 1850 4950
F 0 "#PWR04" H 1850 4700 50  0001 C CNN
F 1 "GND" H 1855 4777 50  0000 C CNN
F 2 "" H 1850 4950 50  0001 C CNN
F 3 "" H 1850 4950 50  0001 C CNN
	1    1850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4900 1850 4950
$Comp
L power:GND #PWR02
U 1 1 5D8CF13D
P 900 1600
F 0 "#PWR02" H 900 1350 50  0001 C CNN
F 1 "GND" H 905 1427 50  0000 C CNN
F 2 "" H 900 1600 50  0001 C CNN
F 3 "" H 900 1600 50  0001 C CNN
	1    900  1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR011
U 1 1 5D95F964
P 5500 3800
F 0 "#PWR011" H 5500 3650 50  0001 C CNN
F 1 "+3V3" H 5515 3973 50  0000 C CNN
F 2 "" H 5500 3800 50  0001 C CNN
F 3 "" H 5500 3800 50  0001 C CNN
	1    5500 3800
	1    0    0    -1  
$EndComp
Text GLabel 8500 1400 0    50   Input ~ 0
FET1
$Comp
L MCU_Microchip_ATtiny:ATtiny48-AU U1
U 1 1 5D71AC84
P 1850 3100
F 0 "U1" H 1321 3146 50  0000 R CNN
F 1 "ATtiny48-AU" H 1321 3055 50  0000 R CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 1850 3100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8008.pdf" H 1850 3100 50  0001 C CNN
	1    1850 3100
	1    0    0    -1  
$EndComp
Text GLabel 10050 5200 1    50   Input ~ 0
LED2
Text GLabel 9500 5200 1    50   Input ~ 0
LED1
Wire Wire Line
	10050 5300 10050 5200
Wire Wire Line
	9500 5300 9500 5200
$Comp
L Device:C C2
U 1 1 5D800EB9
P 1150 6600
F 0 "C2" H 1265 6646 50  0000 L CNN
F 1 "2.2u" H 1265 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1188 6450 50  0001 C CNN
F 3 "~" H 1150 6600 50  0001 C CNN
	1    1150 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 6300 1150 6350
Connection ~ 1150 6350
Wire Wire Line
	1150 6350 1150 6450
$Comp
L power:GND #PWR028
U 1 1 5D85EEB7
P 10300 1600
F 0 "#PWR028" H 10300 1350 50  0001 C CNN
F 1 "GND" H 10305 1427 50  0000 C CNN
F 2 "" H 10300 1600 50  0001 C CNN
F 3 "" H 10300 1600 50  0001 C CNN
	1    10300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 1350 10900 1300
Wire Notes Line width 8
	3250 650  3250 5350
Text Notes 3500 1150 0    79   ~ 16
Pinheader\n
Text Notes 850  750  0    79   ~ 16
Microcontrollet AtTiny48
Text Notes 650  5650 0    79   ~ 16
Voltage Supply
Wire Wire Line
	850  6350 1150 6350
Wire Wire Line
	1950 1250 1850 1250
Connection ~ 1850 1250
Wire Wire Line
	1850 1250 900  1250
Wire Wire Line
	900  1300 900  1250
Connection ~ 900  1250
Wire Wire Line
	900  1250 900  1200
Text Notes 5400 4450 0    50   ~ 10
Power ON
Connection ~ 5500 4100
Wire Wire Line
	5500 4100 6550 4100
Wire Wire Line
	6350 4300 6550 4300
Wire Wire Line
	8300 5600 8100 5600
Connection ~ 8100 5600
Wire Wire Line
	8900 5600 8700 5600
Connection ~ 8700 5600
Text Notes 7950 4750 0    79   ~ 16
Buttons\n
Text Notes 9650 4700 0    79   ~ 16
LED's
Text Notes 4850 3350 0    79   ~ 16
Programming Header
Text Notes 4900 950  0    79   ~ 16
UART (Audio-Jack)
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 5D997203
P 11100 1200
F 0 "J9" H 11050 1300 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 11150 750 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05502HBWC_1x02_P5.00mm_Horizontal" H 11100 1200 50  0001 C CNN
F 3 "~" H 11100 1200 50  0001 C CNN
	1    11100 1200
	1    0    0    -1  
$EndComp
Wire Notes Line width 8
	550  5350 7000 5350
Wire Notes Line
	7000 2400 4800 2400
Wire Notes Line
	7000 650  7000 6500
Wire Wire Line
	10300 1200 10900 1200
$Comp
L Device:R R?
U 1 1 5D8684F4
P 9650 1300
F 0 "R?" V 9550 1200 50  0000 L CNN
F 1 "R" V 9650 1250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 1300 50  0001 C CNN
F 3 "~" H 9650 1300 50  0001 C CNN
	1    9650 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D86C37B
P 9650 1500
F 0 "R?" V 9550 1400 50  0000 L CNN
F 1 "R" V 9650 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 1500 50  0001 C CNN
F 3 "~" H 9650 1500 50  0001 C CNN
	1    9650 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 1500 10000 1500
Wire Wire Line
	10000 1300 9800 1300
Text Notes 8550 800  0    79   ~ 0
Gate Driver
$Comp
L power:+24V #PWR?
U 1 1 5D82F6A5
P 1150 6300
F 0 "#PWR?" H 1150 6150 50  0001 C CNN
F 1 "+24V" H 1165 6473 50  0000 C CNN
F 2 "" H 1150 6300 50  0001 C CNN
F 3 "" H 1150 6300 50  0001 C CNN
	1    1150 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8A7F86
P 1150 6750
F 0 "#PWR?" H 1150 6500 50  0001 C CNN
F 1 "GND" H 1155 6577 50  0000 C CNN
F 2 "" H 1150 6750 50  0001 C CNN
F 3 "" H 1150 6750 50  0001 C CNN
	1    1150 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8AA0AE
P 850 6550
F 0 "#PWR?" H 850 6300 50  0001 C CNN
F 1 "GND" H 855 6377 50  0000 C CNN
F 2 "" H 850 6550 50  0001 C CNN
F 3 "" H 850 6550 50  0001 C CNN
	1    850  6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6450 850  6550
Wire Wire Line
	1600 6350 1450 6350
Wire Wire Line
	1600 6500 1450 6500
Wire Wire Line
	1450 6500 1450 6350
Connection ~ 1450 6350
Wire Wire Line
	1450 6350 1150 6350
$Comp
L Device:R R?
U 1 1 5D8BB950
P 1600 7200
F 0 "R?" H 1670 7246 50  0000 L CNN
F 1 "100k" H 1670 7155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 7200 50  0001 C CNN
F 3 "~" H 1600 7200 50  0001 C CNN
	1    1600 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8C1237
P 1600 7350
F 0 "#PWR?" H 1600 7100 50  0001 C CNN
F 1 "GND" H 1605 7177 50  0000 C CNN
F 2 "" H 1600 7350 50  0001 C CNN
F 3 "" H 1600 7350 50  0001 C CNN
	1    1600 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8C67D7
P 2650 6600
F 0 "C?" H 2765 6646 50  0000 L CNN
F 1 "2.2n" H 2765 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2688 6450 50  0001 C CNN
F 3 "~" H 2650 6600 50  0001 C CNN
	1    2650 6600
	1    0    0    -1  
$EndComp
$Comp
L mylib:LM5164 U?
U 1 1 5D8778A7
P 2050 6600
F 0 "U?" H 2050 7075 50  0000 C CNN
F 1 "LM5164" H 2050 6984 50  0000 C CNN
F 2 "Package_SO:TI_SO-PowerPAD-8" H 2350 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm5164.pdf?HQS=TI-null-null-mousermode-df-pf-null-wwe&DCM=yes" H 2350 7000 50  0001 C CNN
	1    2050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 7000 1600 7050
$Comp
L power:GND #PWR?
U 1 1 5D8DB9BA
P 2050 7350
F 0 "#PWR?" H 2050 7100 50  0001 C CNN
F 1 "GND" H 2055 7177 50  0000 C CNN
F 2 "" H 2050 7350 50  0001 C CNN
F 3 "" H 2050 7350 50  0001 C CNN
	1    2050 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 7200 2050 7350
$Comp
L Device:R R?
U 1 1 5D8E0D5C
P 3150 6600
F 0 "R?" H 3220 6646 50  0000 L CNN
F 1 "448k" H 3220 6555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3080 6600 50  0001 C CNN
F 3 "~" H 3150 6600 50  0001 C CNN
	1    3150 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D8E3312
P 3150 7100
F 0 "R?" H 3220 7146 50  0000 L CNN
F 1 "49.9k" H 3220 7055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3080 7100 50  0001 C CNN
F 3 "~" H 3150 7100 50  0001 C CNN
	1    3150 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 5D9006A8
P 2900 6350
F 0 "L?" V 2719 6350 50  0000 C CNN
F 1 "68u" V 2810 6350 50  0000 C CNN
F 2 "" H 2900 6350 50  0001 C CNN
F 3 "~" H 2900 6350 50  0001 C CNN
	1    2900 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 6350 2650 6350
Wire Wire Line
	2650 6350 2650 6450
Wire Wire Line
	2650 6350 2750 6350
Connection ~ 2650 6350
Wire Wire Line
	2650 6750 2650 6800
Wire Wire Line
	2650 6800 2500 6800
Wire Wire Line
	2500 6900 3150 6900
Wire Wire Line
	3150 6900 3150 6750
Wire Wire Line
	3150 6900 3150 6950
Connection ~ 3150 6900
Wire Wire Line
	3150 6450 3150 6350
Wire Wire Line
	3150 6350 3050 6350
Wire Wire Line
	3450 6700 3450 6350
Wire Wire Line
	3450 6350 3150 6350
Connection ~ 3150 6350
Wire Wire Line
	3450 7300 3300 7300
Wire Wire Line
	3150 7300 3150 7250
$Comp
L power:GND #PWR?
U 1 1 5D91A4E3
P 3300 7350
F 0 "#PWR?" H 3300 7100 50  0001 C CNN
F 1 "GND" H 3305 7177 50  0000 C CNN
F 2 "" H 3300 7350 50  0001 C CNN
F 3 "" H 3300 7350 50  0001 C CNN
	1    3300 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7350 3300 7300
Connection ~ 3300 7300
Wire Wire Line
	3300 7300 3150 7300
$Comp
L power:+12V #PWR?
U 1 1 5D921AD8
P 3450 6300
F 0 "#PWR?" H 3450 6150 50  0001 C CNN
F 1 "+12V" H 3465 6473 50  0000 C CNN
F 2 "" H 3450 6300 50  0001 C CNN
F 3 "" H 3450 6300 50  0001 C CNN
	1    3450 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6300 3450 6350
Connection ~ 3450 6350
Wire Wire Line
	3450 7000 3450 7300
$Comp
L Device:CP1 C?
U 1 1 5D92C3F4
P 3450 6850
F 0 "C?" H 3565 6896 50  0000 L CNN
F 1 "47u" H 3565 6805 50  0000 L CNN
F 2 "" H 3450 6850 50  0001 C CNN
F 3 "~" H 3450 6850 50  0001 C CNN
	1    3450 6850
	1    0    0    -1  
$EndComp
$Comp
L mylib:TPS560430 U?
U 1 1 5D93FCAE
P 4950 6500
F 0 "U?" H 4950 6875 50  0000 C CNN
F 1 "TPS560430" H 4950 6784 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4950 6850 50  0001 C CNN
F 3 "DIGIKEY 296-53224-1-ND" H 4950 6850 50  0001 C CNN
	1    4950 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D94148E
P 4000 6550
F 0 "C?" H 4115 6596 50  0000 L CNN
F 1 "2.2u" H 4115 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4038 6400 50  0001 C CNN
F 3 "~" H 4000 6550 50  0001 C CNN
	1    4000 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D946052
P 6000 6500
F 0 "R?" H 6070 6546 50  0000 L CNN
F 1 "51k" H 6070 6455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5930 6500 50  0001 C CNN
F 3 "~" H 6000 6500 50  0001 C CNN
	1    6000 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D9494A7
P 6000 6850
F 0 "R?" H 6070 6896 50  0000 L CNN
F 1 "22.1k" H 6070 6805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5930 6850 50  0001 C CNN
F 3 "~" H 6000 6850 50  0001 C CNN
	1    6000 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D94CF0B
P 6350 6700
F 0 "C?" H 6465 6746 50  0000 L CNN
F 1 "22u" H 6465 6655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6388 6550 50  0001 C CNN
F 3 "~" H 6350 6700 50  0001 C CNN
	1    6350 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D9502C5
P 5450 6350
F 0 "C?" H 5565 6396 50  0000 L CNN
F 1 "0.1u" H 5565 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5488 6200 50  0001 C CNN
F 3 "~" H 5450 6350 50  0001 C CNN
	1    5450 6350
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5D953B33
P 4000 6300
F 0 "#PWR?" H 4000 6150 50  0001 C CNN
F 1 "+12V" H 4015 6473 50  0000 C CNN
F 2 "" H 4000 6300 50  0001 C CNN
F 3 "" H 4000 6300 50  0001 C CNN
	1    4000 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D9573D9
P 6350 6300
F 0 "#PWR?" H 6350 6150 50  0001 C CNN
F 1 "+3V3" H 6365 6473 50  0000 C CNN
F 2 "" H 6350 6300 50  0001 C CNN
F 3 "" H 6350 6300 50  0001 C CNN
	1    6350 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D95ACE6
P 4950 6900
F 0 "#PWR?" H 4950 6650 50  0001 C CNN
F 1 "GND" H 4955 6727 50  0000 C CNN
F 2 "" H 4950 6900 50  0001 C CNN
F 3 "" H 4950 6900 50  0001 C CNN
	1    4950 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6850 4950 6900
Wire Wire Line
	4000 6300 4000 6350
Wire Wire Line
	4000 6350 4500 6350
Connection ~ 4000 6350
Wire Wire Line
	4000 6350 4000 6400
Wire Wire Line
	4500 6350 4500 6500
Wire Wire Line
	4500 6500 4650 6500
Connection ~ 4500 6350
Wire Wire Line
	4500 6350 4650 6350
$Comp
L power:GND #PWR?
U 1 1 5D97456F
P 4000 6750
F 0 "#PWR?" H 4000 6500 50  0001 C CNN
F 1 "GND" H 4005 6577 50  0000 C CNN
F 2 "" H 4000 6750 50  0001 C CNN
F 3 "" H 4000 6750 50  0001 C CNN
	1    4000 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6700 4000 6750
Wire Wire Line
	5250 6350 5300 6350
$Comp
L Device:L L?
U 1 1 5D9851FB
P 5800 6350
F 0 "L?" V 5619 6350 50  0000 C CNN
F 1 "12u" V 5710 6350 50  0000 C CNN
F 2 "" H 5800 6350 50  0001 C CNN
F 3 "~" H 5800 6350 50  0001 C CNN
	1    5800 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 6500 5600 6500
Wire Wire Line
	5600 6500 5600 6350
Wire Wire Line
	5600 6350 5650 6350
Connection ~ 5600 6350
$Comp
L power:GND #PWR?
U 1 1 5D9C4882
P 6200 7000
F 0 "#PWR?" H 6200 6750 50  0001 C CNN
F 1 "GND" H 6205 6827 50  0000 C CNN
F 2 "" H 6200 7000 50  0001 C CNN
F 3 "" H 6200 7000 50  0001 C CNN
	1    6200 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6700 6000 6700
Wire Wire Line
	6000 6650 6000 6700
Connection ~ 6000 6700
Wire Wire Line
	6000 6350 5950 6350
Wire Wire Line
	6350 6350 6350 6300
Connection ~ 6000 6350
Wire Wire Line
	6000 6350 6350 6350
Wire Wire Line
	6350 6550 6350 6350
Connection ~ 6350 6350
Wire Wire Line
	6350 6850 6350 7000
Wire Wire Line
	6350 7000 6200 7000
Connection ~ 6200 7000
Wire Wire Line
	6200 7000 6000 7000
$Comp
L mylib:PM8841 U?
U 1 1 5DA1BB7B
P 8950 1400
F 0 "U?" H 8950 1881 50  0000 C CNN
F 1 "PM8841" H 8950 1790 50  0000 C CNN
F 2 "" H 8800 1750 50  0001 C CNN
F 3 "" H 8800 1750 50  0001 C CNN
	1    8950 1400
	1    0    0    -1  
$EndComp
$Comp
L mylib:STB16NF06L U?
U 1 1 5D87E7D9
P 10300 1400
F 0 "U?" H 10406 1446 50  0000 L CNN
F 1 "STB16NF06L" H 10406 1355 50  0000 L CNN
F 2 "" H 9950 1700 50  0001 C CNN
F 3 "" H 9950 1700 50  0001 C CNN
	1    10300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1300 10000 1400
Connection ~ 10000 1400
Wire Wire Line
	10000 1400 10000 1500
$Comp
L power:GND #PWR?
U 1 1 5D89D670
P 10900 1350
F 0 "#PWR?" H 10900 1100 50  0001 C CNN
F 1 "GND" H 10905 1177 50  0000 C CNN
F 2 "" H 10900 1350 50  0001 C CNN
F 3 "" H 10900 1350 50  0001 C CNN
	1    10900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1400 9400 1300
Wire Wire Line
	9400 1300 9500 1300
Wire Wire Line
	9400 1400 9400 1500
Wire Wire Line
	9400 1500 9500 1500
Connection ~ 9400 1400
$Comp
L power:GND #PWR?
U 1 1 5D8D0ABF
P 10300 2550
F 0 "#PWR?" H 10300 2300 50  0001 C CNN
F 1 "GND" H 10305 2377 50  0000 C CNN
F 2 "" H 10300 2550 50  0001 C CNN
F 3 "" H 10300 2550 50  0001 C CNN
	1    10300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 2300 10900 2250
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5D8D0AC6
P 11100 2150
F 0 "J?" H 11050 2250 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 11150 1700 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05502HBWC_1x02_P5.00mm_Horizontal" H 11100 2150 50  0001 C CNN
F 3 "~" H 11100 2150 50  0001 C CNN
	1    11100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 2150 10900 2150
$Comp
L Device:R R?
U 1 1 5D8D0ACD
P 9650 2250
F 0 "R?" V 9550 2150 50  0000 L CNN
F 1 "R" V 9650 2200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 2250 50  0001 C CNN
F 3 "~" H 9650 2250 50  0001 C CNN
	1    9650 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8D0AD3
P 9650 2450
F 0 "R?" V 9550 2350 50  0000 L CNN
F 1 "R" V 9650 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 2450 50  0001 C CNN
F 3 "~" H 9650 2450 50  0001 C CNN
	1    9650 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 2450 10000 2450
Wire Wire Line
	10000 2250 9800 2250
$Comp
L mylib:PM8841 U?
U 1 1 5D8D0ADB
P 8950 2350
F 0 "U?" H 8950 2831 50  0000 C CNN
F 1 "PM8841" H 8950 2740 50  0000 C CNN
F 2 "" H 8800 2700 50  0001 C CNN
F 3 "" H 8800 2700 50  0001 C CNN
	1    8950 2350
	1    0    0    -1  
$EndComp
$Comp
L mylib:STB16NF06L U?
U 1 1 5D8D0AE1
P 10300 2350
F 0 "U?" H 10406 2396 50  0000 L CNN
F 1 "STB16NF06L" H 10406 2305 50  0000 L CNN
F 2 "" H 9950 2650 50  0001 C CNN
F 3 "" H 9950 2650 50  0001 C CNN
	1    10300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2250 10000 2350
Connection ~ 10000 2350
Wire Wire Line
	10000 2350 10000 2450
$Comp
L power:GND #PWR?
U 1 1 5D8D0AEA
P 10900 2300
F 0 "#PWR?" H 10900 2050 50  0001 C CNN
F 1 "GND" H 10905 2127 50  0000 C CNN
F 2 "" H 10900 2300 50  0001 C CNN
F 3 "" H 10900 2300 50  0001 C CNN
	1    10900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2350 9400 2250
Wire Wire Line
	9400 2250 9500 2250
Wire Wire Line
	9400 2350 9400 2450
Wire Wire Line
	9400 2450 9500 2450
Connection ~ 9400 2350
$Comp
L power:GND #PWR?
U 1 1 5D8DA17F
P 10300 3450
F 0 "#PWR?" H 10300 3200 50  0001 C CNN
F 1 "GND" H 10305 3277 50  0000 C CNN
F 2 "" H 10300 3450 50  0001 C CNN
F 3 "" H 10300 3450 50  0001 C CNN
	1    10300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 3200 10900 3150
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5D8DA186
P 11100 3050
F 0 "J?" H 11050 3150 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 11150 2600 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05502HBWC_1x02_P5.00mm_Horizontal" H 11100 3050 50  0001 C CNN
F 3 "~" H 11100 3050 50  0001 C CNN
	1    11100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3050 10900 3050
$Comp
L Device:R R?
U 1 1 5D8DA18D
P 9650 3150
F 0 "R?" V 9550 3050 50  0000 L CNN
F 1 "R" V 9650 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 3150 50  0001 C CNN
F 3 "~" H 9650 3150 50  0001 C CNN
	1    9650 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8DA193
P 9650 3350
F 0 "R?" V 9550 3250 50  0000 L CNN
F 1 "R" V 9650 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 3350 50  0001 C CNN
F 3 "~" H 9650 3350 50  0001 C CNN
	1    9650 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 3350 10000 3350
Wire Wire Line
	10000 3150 9800 3150
$Comp
L mylib:PM8841 U?
U 1 1 5D8DA19B
P 8950 3250
F 0 "U?" H 8950 3731 50  0000 C CNN
F 1 "PM8841" H 8950 3640 50  0000 C CNN
F 2 "" H 8800 3600 50  0001 C CNN
F 3 "" H 8800 3600 50  0001 C CNN
	1    8950 3250
	1    0    0    -1  
$EndComp
$Comp
L mylib:STB16NF06L U?
U 1 1 5D8DA1A1
P 10300 3250
F 0 "U?" H 10406 3296 50  0000 L CNN
F 1 "STB16NF06L" H 10406 3205 50  0000 L CNN
F 2 "" H 9950 3550 50  0001 C CNN
F 3 "" H 9950 3550 50  0001 C CNN
	1    10300 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3150 10000 3250
Connection ~ 10000 3250
Wire Wire Line
	10000 3250 10000 3350
$Comp
L power:GND #PWR?
U 1 1 5D8DA1AA
P 10900 3200
F 0 "#PWR?" H 10900 2950 50  0001 C CNN
F 1 "GND" H 10905 3027 50  0000 C CNN
F 2 "" H 10900 3200 50  0001 C CNN
F 3 "" H 10900 3200 50  0001 C CNN
	1    10900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3250 9400 3150
Wire Wire Line
	9400 3150 9500 3150
Wire Wire Line
	9400 3250 9400 3350
Wire Wire Line
	9400 3350 9500 3350
Connection ~ 9400 3250
$Comp
L power:GND #PWR?
U 1 1 5D8E3A10
P 10300 4400
F 0 "#PWR?" H 10300 4150 50  0001 C CNN
F 1 "GND" H 10305 4227 50  0000 C CNN
F 2 "" H 10300 4400 50  0001 C CNN
F 3 "" H 10300 4400 50  0001 C CNN
	1    10300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 4150 10900 4100
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5D8E3A17
P 11100 4000
F 0 "J?" H 11050 4100 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 11150 3550 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05502HBWC_1x02_P5.00mm_Horizontal" H 11100 4000 50  0001 C CNN
F 3 "~" H 11100 4000 50  0001 C CNN
	1    11100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4000 10900 4000
$Comp
L Device:R R?
U 1 1 5D8E3A1E
P 9650 4100
F 0 "R?" V 9550 4000 50  0000 L CNN
F 1 "R" V 9650 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 4100 50  0001 C CNN
F 3 "~" H 9650 4100 50  0001 C CNN
	1    9650 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8E3A24
P 9650 4300
F 0 "R?" V 9550 4200 50  0000 L CNN
F 1 "R" V 9650 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 4300 50  0001 C CNN
F 3 "~" H 9650 4300 50  0001 C CNN
	1    9650 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 4300 10000 4300
Wire Wire Line
	10000 4100 9800 4100
$Comp
L mylib:PM8841 U?
U 1 1 5D8E3A2C
P 8950 4200
F 0 "U?" H 8950 4681 50  0000 C CNN
F 1 "PM8841" H 8950 4590 50  0000 C CNN
F 2 "" H 8800 4550 50  0001 C CNN
F 3 "" H 8800 4550 50  0001 C CNN
	1    8950 4200
	1    0    0    -1  
$EndComp
$Comp
L mylib:STB16NF06L U?
U 1 1 5D8E3A32
P 10300 4200
F 0 "U?" H 10406 4246 50  0000 L CNN
F 1 "STB16NF06L" H 10406 4155 50  0000 L CNN
F 2 "" H 9950 4500 50  0001 C CNN
F 3 "" H 9950 4500 50  0001 C CNN
	1    10300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4100 10000 4200
Connection ~ 10000 4200
Wire Wire Line
	10000 4200 10000 4300
$Comp
L power:GND #PWR?
U 1 1 5D8E3A3B
P 10900 4150
F 0 "#PWR?" H 10900 3900 50  0001 C CNN
F 1 "GND" H 10905 3977 50  0000 C CNN
F 2 "" H 10900 4150 50  0001 C CNN
F 3 "" H 10900 4150 50  0001 C CNN
	1    10900 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4200 9400 4100
Wire Wire Line
	9400 4100 9500 4100
Wire Wire Line
	9400 4200 9400 4300
Wire Wire Line
	9400 4300 9500 4300
Connection ~ 9400 4200
$Comp
L power:GND #PWR?
U 1 1 5D8EFBA2
P 8950 4500
F 0 "#PWR?" H 8950 4250 50  0001 C CNN
F 1 "GND" H 8955 4327 50  0000 C CNN
F 2 "" H 8950 4500 50  0001 C CNN
F 3 "" H 8950 4500 50  0001 C CNN
	1    8950 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8F57F2
P 8950 3550
F 0 "#PWR?" H 8950 3300 50  0001 C CNN
F 1 "GND" H 8955 3377 50  0000 C CNN
F 2 "" H 8950 3550 50  0001 C CNN
F 3 "" H 8950 3550 50  0001 C CNN
	1    8950 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D8FB2FF
P 8950 2650
F 0 "#PWR?" H 8950 2400 50  0001 C CNN
F 1 "GND" H 8955 2477 50  0000 C CNN
F 2 "" H 8950 2650 50  0001 C CNN
F 3 "" H 8950 2650 50  0001 C CNN
	1    8950 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D900E0C
P 8950 1700
F 0 "#PWR?" H 8950 1450 50  0001 C CNN
F 1 "GND" H 8955 1527 50  0000 C CNN
F 2 "" H 8950 1700 50  0001 C CNN
F 3 "" H 8950 1700 50  0001 C CNN
	1    8950 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5D90787B
P 9100 1100
F 0 "#PWR?" H 9100 950 50  0001 C CNN
F 1 "+12V" H 9115 1273 50  0000 C CNN
F 2 "" H 9100 1100 50  0001 C CNN
F 3 "" H 9100 1100 50  0001 C CNN
	1    9100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5D90D3FA
P 9100 2050
F 0 "#PWR?" H 9100 1900 50  0001 C CNN
F 1 "+12V" H 9115 2223 50  0000 C CNN
F 2 "" H 9100 2050 50  0001 C CNN
F 3 "" H 9100 2050 50  0001 C CNN
	1    9100 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5D913060
P 9100 2950
F 0 "#PWR?" H 9100 2800 50  0001 C CNN
F 1 "+12V" H 9115 3123 50  0000 C CNN
F 2 "" H 9100 2950 50  0001 C CNN
F 3 "" H 9100 2950 50  0001 C CNN
	1    9100 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5D919299
P 9100 3900
F 0 "#PWR?" H 9100 3750 50  0001 C CNN
F 1 "+12V" H 9115 4073 50  0000 C CNN
F 2 "" H 9100 3900 50  0001 C CNN
F 3 "" H 9100 3900 50  0001 C CNN
	1    9100 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D91F6E7
P 8800 3900
F 0 "#PWR?" H 8800 3750 50  0001 C CNN
F 1 "+3V3" H 8815 4073 50  0000 C CNN
F 2 "" H 8800 3900 50  0001 C CNN
F 3 "" H 8800 3900 50  0001 C CNN
	1    8800 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D924FFE
P 8800 2950
F 0 "#PWR?" H 8800 2800 50  0001 C CNN
F 1 "+3V3" H 8815 3123 50  0000 C CNN
F 2 "" H 8800 2950 50  0001 C CNN
F 3 "" H 8800 2950 50  0001 C CNN
	1    8800 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D92AA85
P 8800 2050
F 0 "#PWR?" H 8800 1900 50  0001 C CNN
F 1 "+3V3" H 8815 2223 50  0000 C CNN
F 2 "" H 8800 2050 50  0001 C CNN
F 3 "" H 8800 2050 50  0001 C CNN
	1    8800 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D930B86
P 8800 1100
F 0 "#PWR?" H 8800 950 50  0001 C CNN
F 1 "+3V3" H 8815 1273 50  0000 C CNN
F 2 "" H 8800 1100 50  0001 C CNN
F 3 "" H 8800 1100 50  0001 C CNN
	1    8800 1100
	1    0    0    -1  
$EndComp
Text GLabel 8500 2350 0    50   Input ~ 0
FET2
Text GLabel 8500 3250 0    50   Input ~ 0
FET3
Text GLabel 8500 4200 0    50   Input ~ 0
FET4
$EndSCHEMATC
