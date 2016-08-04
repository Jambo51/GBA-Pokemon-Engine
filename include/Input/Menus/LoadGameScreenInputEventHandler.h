/*
 * LoadGameScreenInputEventHandler.h
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#ifndef LOADGAMESCREENINPUTEVENTHANDLER_H_
#define LOADGAMESCREENINPUTEVENTHANDLER_H_

#include "Input/InputHandler.h"

namespace Input
{
	class LoadGameScreenInputEventHandler : public InputHandler
	{
	public:
		LoadGameScreenInputEventHandler();
		~LoadGameScreenInputEventHandler();
		bool OnPressA();
		bool OnPressB();
		bool OnPressUp();
		bool OnPressDown();
		bool OnPressStart();
	};
}

#endif /* LOADGAMESCREENINPUTEVENTHANDLER_H_ */
