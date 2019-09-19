// system includes
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <util/delay.h>
// project includes
#include "fet.h"
#include "btnLedModule.h"
#include "bitmanipulation.h"
#include "softuart/softuart.h"

void main(void){
  initBtn();
  BIT_SET(&DDRA, PA0);
  initFet();
  while(1){
    if(btnIsPressed(1))
      BIT_SET(&PORTA, PA0);
    else{
      BIT_CLEAR(&PORTA, PA0);
      fetOn(1);
      _delay_ms(100);
      fetOff(1);
    }
    if(btnIsPressed(2))
      BIT_SET(&PORTA, PA0);
    else{
      fetOn(1);
      _delay_ms(150);
      fetOff(1);
      }
  }
}
