#include <avr/io.h>
#include <stdio.h>
#include <stddef.h>

#include "btnLedModule.h"

#define BTN_PIN PC2
#define BTN_PORT PORTC
#define BTN_DIR DDRC
#define BTN_INPUT PINC

#define LED_PIN PC3
#define LED_PORT PORTC
#define LED_DIR DDRC



void initLed(void){};
//
void initBtn(void){
  BIT_CLEAR(&BTN_DIR, BTN_PIN);
};

uint8_t btnIsPressed(uint8_t nbr){
  if(BIT_IS_SET(BTN_INPUT, BTN_PIN))
    return 1;
  else
    return 0;
};

uint8_t btnIsNotPressed(uint8_t nbr){

};
void setLedHight(uint8_t nbr){

};
void setLedLow(uint8_t nbr){

};
