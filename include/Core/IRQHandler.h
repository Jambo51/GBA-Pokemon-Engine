/*
 * IRQHandler.h
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#ifndef IRQHANDLER_H_
#define IRQHANDLER_H_

#ifdef __cplusplus
extern "C" {
#endif
#include <tonc_irq.h>
#ifdef __cplusplus
}
#endif
namespace Core
{
	class IRQHandler
	{
	private:
		IRQHandler();
		~IRQHandler();
	public:
		static void Initialise();
		static void PrimeIRQ(enum eIrqIndex irqID);
	};
}

#endif /* IRQHANDLER_H_ */
