#include <avr/io.h>
#include <avr/interrupt.h>
#include <inttypes.h>


volatile uint8_t overflow_cont;
volatile uint8_t cor;
//unsigned char
ISR(TIMER1_OVF_vect){
  overflow_cont++;
  Serial.println(overflow_cont);
  if(overflow_cont == 9){
    PORTB &= 0x00;
    PORTB |= 0b00000001;
  }
  if(overflow_cont == 11){
    PORTB &= 0x00;
    PORTB |= 0b00000010;
  }
  if(overflow_cont == 14){
    PORTB &= 0x00;
    PORTB |= 0b00000100;
  }
  if(overflow_cont == 19){
    PORTB &= 0x00;
    PORTB |= 0b00001000;
  }
  if(overflow_cont == 24){
    PORTB &= 0x00;
    PORTB |= 0b00010000;
  }
  if(overflow_cont == 29){
    PORTB &= 0x00;
    PORTB |= 0b00100000;
  }
  
}

int main(void)
{
  Serial.begin(9600);
  DDRB |= 0xFF;
  PORTB |= 0x00;
  PINB &= 0x00;
  
  TCCR1A |= 0x00;
  TCCR1B &= 0x00;
  TCCR1B |= 0b00000100;
  
  TIMSK1 &= 0x00;
  TIMSK1 |= 0b00000001;
  
  sei();      
    while (1) 
    {;}
  return 0;
}
