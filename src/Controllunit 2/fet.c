#include <avr/io.h>
#include <stdio.h>
#include <stddef.h>
#include "fet.h"

#define FET1_BIT PB6
#define FET1_PORT PORTB
#define FET1_DIR DDRB

#define FET2_BIT PB7
#define FET2_PORT PORTB
#define FET2_DIR DDRB

#define FET3_BIT PC4
#define FET3_PORT PORTC
#define FET3_DIR DDRC

#define FET4_BIT PC5
#define FET4_PORT PORTC
#define FET4_DIR DDRC

void initFet(void){
  // Pull up ausgeschalten
  BIT_SET(&MCUCR, PUD);
  BIT_CLEAR(&FET1_PORT, FET1_BIT);
  BIT_CLEAR(&FET2_PORT, FET2_BIT);
  BIT_CLEAR(&FET3_PORT, FET3_BIT);
  BIT_CLEAR(&FET4_PORT, FET4_BIT);

  BIT_SET(&FET1_DIR, FET1_BIT);
  BIT_SET(&FET2_DIR, FET2_BIT);
  BIT_SET(&FET3_DIR, FET3_BIT);
  BIT_SET(&FET4_DIR, FET4_BIT);

  // alle FET's werden ausgeschalten
};

void fetOn(uint8_t nbr){
  switch(nbr){
    case 1:
      BIT_CLEAR(&FET1_DIR, FET1_BIT);
    break;
    case 2:
      BIT_CLEAR(&FET2_DIR, FET2_BIT);
    break;
    case 3:
      BIT_CLEAR(&FET3_DIR, FET3_BIT);
    break;
    case 4:
      BIT_CLEAR(&FET4_DIR, FET4_BIT);
    break;
  }
}
void fetOff(uint8_t nbr){
  switch(nbr){
    case 1:
      BIT_SET(&FET1_DIR, FET1_BIT);
    break;
    case 2:
      BIT_SET(&FET2_DIR, FET2_BIT);
    break;
    case 3:
      BIT_SET(&FET3_DIR, FET3_BIT);
    break;
    case 4:
      BIT_SET(&FET4_DIR, FET4_BIT);
    break;
  }
}
