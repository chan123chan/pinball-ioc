// Filename: softuart.c
// Autor: Lukas von Däniken
// Date: 31.03.2016
// Description: read softuart.h
#include <avr/interrupt.h>
#include <avr/io.h>
#include "../bitmanipulation.h"

// Headerfile
#include "softuart.h"

//=== TIMER SETTINGS ====================================================================================================
#if TIMER_SIZE == 8
#define TIMER_COMP_TRANSMIT_INTERRUPT_VECTOR  TIMER0_COMPA_vect
#define TIMER_COMP_RECEIVE_INTERRUPT_VECTOR    TIMER0_COMPB_vect
#define TIMER_PRESCALER_REGISTER             TCCR0A
#define TIMER_MASK                                          TIMSK0
#define TIMER_VALUE                                         TCNT0
#define TIMER_INTERRUPT_FLAG_REG               TIFR0 
#define OUTPUT_COMPARE_TRANSMIT              OCR0A
#define OUTPUT_COMPARE_RECEIVE                OCR0B
#define OUTPUT_COMPARE_RECEIVE_FLAG      OCF0B

#elif TIMER_SIZE == 16
#define TIMER_COMP_TRANSMIT_INTERRUPT_VECTOR  TIMER1_COMPA_vect
#define TIMER_COMP_RECEIVE_INTERRUPT_VECTOR    TIMER1_COMPB_vect
#define TIMER_PRESCALER_REGISTER             TCCR1B
#define TIMER_MASK                                          TIMSK1
#define TIMER_VALUE                                         TCNT1
#define TIMER_INTERRUPT_FLAG_REG               TIFR1
#define OUTPUT_COMPARE_TRANSMIT              OCR1A
#define OUTPUT_COMPARE_RECEIVE                OCR1B
#define OUTPUT_COMPARE_RECEIVE_FLAG     OCF1B
#endif
//=== RX/TX SETS ========================================================================================================
#if RXPORT == 1 
#define PIN_CHANGE_INTERRUPT_VECTOR      PCINT3_vect
#define PIN_CHANGE_ENABLE_BIT                   PCIE3
#define PIN_CHANGE_MASK                              PCMSK3

#elif RXPORT == 2
#define PIN_CHANGE_INTERRUPT_VECTOR      PCINT0_vect
#define PIN_CHANGE_ENABLE_BIT                   PCIE0
#define PIN_CHANGE_MASK                              PCMSK0

#elif RXPORT == 3
#define PIN_CHANGE_INTERRUPT_VECTOR      PCINT1_vect
#define PIN_CHANGE_ENABLE_BIT                   PCIE1
#define PIN_CHANGE_MASK                             PCMSK1

#elif RXPORT == 4 
#define PIN_CHANGE_INTERRUPT_VECTOR      PCINT2_vect
#define PIN_CHANGE_ENABLE_BIT                   PCIE2
#define PIN_CHANGE_MASK                             PCMSK2
#endif

//=== PRESCALER ========================================================================================================
#if TIMER_PRESCALER == 1
#define PRESCALER_REGISTER_VALUE 1

#elif TIMER_PRESCALER == 8
#define PRESCALER_REGISTER_VALUE 2

#elif TIMER_PRESCALER == 64
#define PRESCALER_REGISTER_VALUE 3
 
#elif TIMER_PRESCALER == 256
#define PRESCALER_REGISTER_VALUE 4

#elif TIMER_PRESCALER == 1024
#define PRESCALER_REGISTER_VALUE 5
#endif



#define BIT_TICKS	((XTAL/TIMER_PRESCALER + BAUD/2) / BAUD)  // Number of timer ticks to get the bit duration
#define INITIAL_SAMPLE_TICKS (int)(1.5*BIT_TICKS)


//=== transmit variables =====================================================================================================
volatile unsigned char  stx_count;
volatile unsigned char  stx_data;
volatile unsigned char dout;
//=== receiv variables ======================================================================================================
volatile unsigned char  srx_done;
unsigned char srx_data;
unsigned char  srx_mask;
unsigned char  srx_tmp;

//=== Initialisieren =========================================================================================================
void suart_init( void )             // initialize the soft uart
{
	stx_count = 0;
	srx_done = 0;
    dout=0;                     // output buffer is set to zero because the first bit is the startbit wich is always zero
   
    BIT_SET(&TXDIRECTION, TXBIT);  // Transmitter set as output 
    BIT_SET(&TXPORT, TXBIT);           // Transmitter logic one
    
    TIMER_PRESCALER_REGISTER = PRESCALER_REGISTER_VALUE; // set prescaler
    
    BIT_SET(&PIN_CHANGE_MASK, RXBIT);
    BIT_SET(&PCICR, PIN_CHANGE_ENABLE_BIT);     // enable the interrupt to be ready to reiceive data
}

//=== receive  ============================================================================================================
unsigned char suart_get_byte( void )
{
	while( !srx_done );			            // warten bis vollständiges Byte empfangen wurde
    srx_done = 0;
	return srx_data;
}

ISR(PIN_CHANGE_INTERRUPT_VECTOR)		 // start receiving with pin change interrupt
{
	OUTPUT_COMPARE_RECEIVE = TIMER_VALUE+INITIAL_SAMPLE_TICKS;	        // first time to sample is 1.5*Bittime after the start
	srx_tmp = 0;				                                // delete old data
	srx_mask = 1;				                            // set bitmask on the first bit
    BIT_CLEAR(&PCICR, PIN_CHANGE_ENABLE_BIT);      // disable the pinchange interrupt while receiving data 
    BIT_SET(&TIMER_INTERRUPT_FLAG_REG, OUTPUT_COMPARE_RECEIVE_FLAG);      // clear flag
    BIT_SET(&TIMER_MASK, 2);	                    // Enable timer compare interrupt who receivs the data 
}


ISR(TIMER_COMP_RECEIVE_INTERRUPT_VECTOR)      // scan rx
{
	unsigned char in = RXPIN;		   // copy the state of the input register
	if(srx_mask)                             // check if there are anymore bits to receive   
    {                                           
		if (BIT_IS_SET(in, RXBIT))     // sample rx line 
        {
            srx_tmp |= srx_mask;         // save the received bit in the temporary storage
        }
		srx_mask <<= 1;                   // set the mask to the next bit
        OUTPUT_COMPARE_RECEIVE += BIT_TICKS;			// set the Output compare Register  on the next sample time
	}
    else
    {
		srx_done = 1;
		srx_data = srx_tmp;
        BIT_CLEAR(&TIMER_MASK, 2);      // stop scanning the rx line
        BIT_SET(&PCICR, PIN_CHANGE_ENABLE_BIT); // enable the pin change interrupt to make it possible to receive data again
	}
}



//=== transmit ============================================================================================================
void suart_send_byte( unsigned char val )
{
	while(stx_count);	                     // wait until the last byte is completely 
    BIT_CLEAR(&PCICR, PIN_CHANGE_ENABLE_BIT);  // disable the interrupt whos used to receive data to make sure that the transmitting cannot getting interjected
    BIT_CLEAR(&TIMER_MASK, 2); // also disable the compare interrupt from the receiving part because of the same reason above
	stx_data = val;
	stx_count = 10;			                // 10 bits: 1 Start + 8 data + 1 stopbit
    OUTPUT_COMPARE_TRANSMIT = TIMER_VALUE+10;	   // transmitting interrupt executes then ticks later
    BIT_SET(&TIMER_MASK, 1);     // enable transmitting interrupt
}


void suart_send_string(unsigned char *txt )			// String senden
{
	while( *txt )                                   // String Terminierung abfragen um zu wissen wann der String fertig ist
        suart_send_byte( *txt++ );
}


ISR(TIMER_COMP_TRANSMIT_INTERRUPT_VECTOR)		// send bit
{
    if(dout)    // write Buffer to PORT
    {
        BIT_SET(&TXPORT, TXBIT);
    }
	else
    {
        BIT_CLEAR(&TXPORT, TXBIT);
    }
    
    // prepare for next interrupt execute
    OUTPUT_COMPARE_TRANSMIT += BIT_TICKS;   // interrupt will execute 1 bittime later
    dout=0;
   
    if(stx_data&1 || stx_count == 2 || stx_count == 1)              // check next bit and set the output buffer
    {
        dout=1;
    }
    stx_data >>= 1;             // shift the byte one to the left (to LSB)
    if(stx_count == 0)
    {
        dout = 0;
        BIT_CLEAR(&TIMER_MASK, 1); // finish transmitting by disabling the transmitting interrupt
        BIT_SET(&PCICR, PIN_CHANGE_ENABLE_BIT); // enable the pin change interrupt to make it possible to receive data
    }
    else
    {
     stx_count--;
    }
}
