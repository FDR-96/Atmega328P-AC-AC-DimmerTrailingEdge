/*
 * File:   main.c
 * Author: FDR-96
 *
 * Created on 26 de octubre de 2021, 21:27
 */

#define __DELAY_BACKWARD_COMPATIBLE__
#include <xc.h>
#define F_CPU 16000000
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "libs/PCINT.h"
#include "libs/ADC.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "libs/USARTAtmega328P.h"
unsigned char Tx;
unsigned char data[3];
unsigned char _char_dimmer[1];
float dimmer = 0.0f;
float trueRms;
int i = 2;
int contador = 0;
int _temp = 0;
int _temp2 = 0;
float duty, tiempo;
bool encender = false;
bool bandera = false;
bool local = true;


volatile unsigned int riseTime = 0; // time when rising edge takes place
volatile unsigned int fallTime = 0; // time when falling edge takes place
volatile int pulseWidth = 0; // width of sonar signal pulse - translate to distance
volatile float range = 0.00;

int main(void) {
   
    cli();
    PCINT_init();
    ADC_init();
    USART_init();
 
      //Set Initial Timer value
  TCNT1 = 0;
  //First capture on rising edge
  TCCR1B |= (1 << ICES1);
  //Enable input capture and overflow interrupts
  TIMSK1 |= (1 << ICIE1) | (1 << TOIE1);
  //Start timer without prescaler
  TCCR1B |= (1 << CS10);
  //Enable global interrutps
    
    
    
    DDRD |= (1<<DDD4);
    sei();
    while (1) 
    {

       range = 0; // reset range
		pulseWidth = 0; // reset pulsewidth to 0.
		riseTime = 0;	//reset risetime to 0
		fallTime = 0; // reset falltime to 0
        
        TCCR1B = (1 << CS00); // use clock frequency as-is

        pulseWidth = fallTime - riseTime; // calculate pulsewidth in timer ticks - 1 tick = 1us
		range = ((pulseWidth/1000000));
        
         USART_SetData('s'); 
        
      trueRms = ADC_GetData(0)*24.0f/1024.0f;
      switch(USART_GetData())
        {
            case 'V':
                _temp = trueRms / 100;
                data[3] = _temp + '0';
                _temp2 = (trueRms - (_temp * 100))/10;
                data[2] = _temp2 + '0';
                _temp2 = trueRms - (_temp * 100) - (_temp2 * 10);
                data[1] = _temp2 + '0';
                data[0] = 'V';
                for(int i = 3; i >= 0; i--){
                    USART_SetData(data[i]); 
                }
                break;
            case 'O':
                local = !local;
                encender = !encender;
                dimmer = 1.0f; 
                break;
            case 'S':       
                dimmer = 0.0f; 
                int temporal = 0;
                for(int i = 1; i >= 0; i--){
                    _char_dimmer[i] = USART_GetData();
                    temporal = _char_dimmer[i] - '0';
                    dimmer += (temporal + 9 * i)+ dimmer;
                }
                Tx = dimmer + '0';
                USART_SetData( Tx);      
                break;
            default:
                break;
        }
    }

}

ISR(INT0_vect)
{       
    if(local){
        dimmer = ADC_GetData(0)*10.0f/1024.0f;
        PORTD |= (1<<PORTD4);
        _delay_ms(dimmer);
        
        PORTD &=~ (1<<PORTD4);
	}else{
            PORTD |= (1<<PORTD4);
            _delay_ms(dimmer);
            PORTD &=~ (1<<PORTD4);
    }
}

ISR(TIMER1_CAPT_vect) {
  if(ICES1) // rising edge detected
	{
		riseTime = ICR1; // record time at which rising edge occurs
		fallTime = 0; // in case overflow happened before rising edge of Ultrasound return pulse
		TCCR1B = ~(1 << ICES1); // toggle edge capture to detect falling edge on next pass
		//PORTC |= (1<<3); // when uncommented, LED is flickering and dim - this line must be executing.
	}
	else if(!ICES1) // falling edge detected
	{
		fallTime = ICR1; // record time at which falling edge occurs
		TCCR1B |= (1 << ICES1); // toggle edge capture to detect rising edge on next pass
		TCCR1B &= ~(1 << CS00); // stop timer
		TCNT1 = 0; // clear the timer counter
		//PORTC |= (1<<3); // when only such line in code, the LED is never on - this line never executes.
	}
}
ISR(USART_RX_vect)
{
	USART_GetData();
}