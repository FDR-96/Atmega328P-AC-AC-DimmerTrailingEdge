/*
 * File:   PCINT.c
 * Author: FDPR
 *
 * Created on 25 de marzo de 2021, 05:29
 */
#include <avr/io.h>
#include <xc.h>

void PCINT_init()
{
 //   PCICR |= _BV(PCIE0);
  //   PCIFR |= (1 << PCIF0);
	//PCMSK2 |= _BV(PCINT0);
     
    DDRD &=~ (1<<DDD2);		// Pin 2 del puerto D como entrada
	PORTD |= (1<<PORTD2);	// pull-up activado
    
  /*  DDRD &=~ (1<<DDD3);		// Pin 3 del puerto D como entrada
	PORTD |= (1<<PORTD3);	// pull-up activado
*/
	EICRA &=~ (1<<ISC00);	// INT0 configurado = Flanco de bajada
	EICRA |= (1<<ISC01);
	EIMSK |= (1<<INT0);		// INT0 activado
  /*
    EICRA |= (1<<ISC10);	// INT1 configurado = Cualquier cambio logico
	EICRA &=~ (1<<ISC11);
	EIMSK |= (1<<INT1);		// INT1 activado
    */
}