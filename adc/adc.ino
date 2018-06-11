#include <avr/io.h>
#include <util/delay.h>
 
// initialize adc
void adc_init()
{
    // AREF = AVcc
    ADMUX = (1<<REFS0);
 
    // ADC Enable and prescaler of 128
    // 16000000/128 = 125000
    ADCSRA = (1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0);
}

//read ADC
uint16_t adc_read(uint8_t ch)
{
  // select the corresponding channel 0~7
  // ANDing with ’7′ will always keep the value
  // of ‘ch’ between 0 and 7
  ch &= 0b00000111;  // AND operation with 7
  ADMUX = (ADMUX & 0xF8)|ch; // clears the bottom 3 bits before ORing
 
  // start single convertion
  // write ’1′ to ADSC
  ADCSRA |= (1<<ADSC);
 
  // wait for conversion to complete
  // ADSC becomes ’0′ again
  // till then, run loop continuously
  while(ADCSRA & (1<<ADSC));
 
  return (ADC);
}

int main(void) {
    Serial.begin(9600);
    //DDRA &= 0b00000001;
    //DDRA |= 0b00000001;

    //PORTA |= 0b00000000;

    uint16_t adc_result0, adc_result1;

    // initialize adc and lcd
    adc_init();
    _delay_ms(50);
    
    while(1) {
      adc_result0 = adc_read(0);      // read adc value at PA0
      //adc_result1 = adc_read(1);      // read adc value at PA1   
      Serial.println(adc_result0);
      //Serial.print(" / ");
      //Serial.println(adc_result1);
      //_delay_ms(1000);
    }
    return 0;
}
