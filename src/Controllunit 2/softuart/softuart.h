// Filename: softuart.h
// Autor: Lukas von Däniken
// Date: 14.04.2016
// Description: Softuart
/* This Modul is software UART interface wich is implementet for the Attiny48. It is probably also useable for other microcontroller from this serie but in most cases
you have to adjust the names of the registers etc. */

#ifndef SOFTUART_H_
#define SOFTUART_H_

#define	BAUD 9600 // Here can you choose the baudrate you need for your project. In the file Baudratenrechner.ods can you
// review if your settings are possible.

#define XTAL 8000000 // This define is the timebase frequency who is used to calculate every time depending things.
// It is very important that this frequency is accurate. If you use the internal clock soure its very important to concern about the accuracy and tolerance.
// In that case you have to adjust the internal clock source. Because the internal clock source has a tolerance of +-10%.
// There are some registers where you can correct and adjust the internal clock source. For more information you have to check the datasheet of your microcontroller

//=== TIMER SETTINGS ======================================================================================================
#define TIMER_SIZE 8   // you can choose between 8 and 16 Bit
#define TIMER_PRESCALER 8 // you can choose between 1/8/64/256/1024
//=== RX/TX SETS ==========================================================================================================
#define RXBIT  PB2
#define RXPIN  PINB
#define RXPORT 2    // A/B/C/D

#define TXBIT  PB1
#define TXDIRECTION  DDRB
#define TXPORT PORTB

//=== FUNCTIONS ==========================================================================================================
void suart_init( void );
void suart_send_byte( unsigned char );
unsigned char suart_get_byte ( void );
void suart_send_string( unsigned char* );

#endif /* SOFTUART_H_ */
