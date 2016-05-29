/*
 * IRQHandler.cpp
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#include "Core/IRQHandler.h"
#include "GlobalDefinitions.h"

namespace Core
{
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
}
