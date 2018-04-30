#include <avr/io.h>
#include <avr/interrupt.h>
#include <inttypes.h>


volatile uint8_t overflow_cont;
volatile uint8_t cor;
//unsigned char
ISR(TIMER1_OVF_vect){
  
  overflow_cont++;
  //Serial.println(OCR0A);
  if(overflow_cont < 41){
    OCR0A = OCR0A + 3;
  }
  else if( overflow_cont > 48 && overflow_cont < 61){
    OCR0A = OCR0A - 4;
  }
  else if(overflow_cont > 80 && overflow_cont < 101){
    OCR0A = OCR0A + 6;
  }
  else if(overflow_cont > 101 && overflow_cont < 120){
    OCR0A = OCR0A - 10;
  }
  else if(255 > overflow_cont && overflow_cont > 120){
    OCR0A = 0;
  }
  Serial.println(OCR0A);
}

int main(void)
{
  Serial.begin(9600);
  //DDRB |= 0xFF;
  PORTB &= 0x00;
  DDRD &= 0x00;
  DDRD |= 0b01001100;
  PORTD &= 0x00;
  //DDRD |= _BV(PD6);
  
  TCCR1A |= 0x00;
  TCCR1B &= 0x00;
  TCCR1B |= 0b00000011;

  
  TCCR0A |= 0b10000011;
  TCCR0B |= 0b00000100;
  
  TIMSK1 &= 0x00;
  TIMSK1 |= 0b00000001;

  OCR0A = 0x00;

  //ligando motor
  PORTD |= 0b00000100;
  sei();      
    while (1) 
    {
      
      if(overflow_cont < 41){
        PORTB &= 0x00;
        PORTB |= 0b00100000;
      }
      else if(overflow_cont < 49){
        PORTB &= 0x00;
        PORTB |= 0b00010000;
      }
      else if(overflow_cont < 61){
        PORTB &= 0x00;
        PORTB |= 0b00001000;
      }
      else if(overflow_cont < 81){
        PORTB &= 0x00;
        PORTB |= 0b00000100;
      }
      else if(overflow_cont < 101){
        PORTB &= 0x00;
        PORTB |= 0b00000010;
      }
      else if(overflow_cont < 120){
        PORTB &= 0x00;
        PORTB |= 0b00000001;
      }    
    }
  return 0;
}
