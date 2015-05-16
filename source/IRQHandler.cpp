/*
 * IRQHandler.cpp
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#include "IRQHandler.h"
#include "GlobalDefinitions.h"

IRQHandler::IRQHandler()
{
	// TODO Auto-generated constructor stub

}

IRQHandler::~IRQHandler()
{
	// TODO Auto-generated destructor stub
}

void IRQHandler::Initialise()
{
	irq_init((VoidFunctionPointerVoid)NULL);
}

void IRQHandler::PrimeIRQ(enum eIrqIndex irqID)
{
	irq_add(II_VBLANK, (VoidFunctionPointerVoid)NULL);
}
