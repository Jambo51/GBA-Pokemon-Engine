/*
 * NewGameScreenInputEventHandler.h
 *
 *  Created on: 26 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_INPUT_MENUS_NEWGAMESCREENINPUTEVENTHANDLER_H_
#define INCLUDE_INPUT_MENUS_NEWGAMESCREENINPUTEVENTHANDLER_H_

#include "Input/InputHandler.h"

namespace Input
{
	class NewGameScreenInputEventHandler : public InputHandler
	{
	public:
		NewGameScreenInputEventHandler();
		~NewGameScreenInputEventHandler();
		bool OnPressA();
		bool OnPressB();
		bool OnPressUp();
		bool OnPressDown();
		bool OnPressStart();
	};
}





#endif /* INCLUDE_INPUT_MENUS_NEWGAMESCREENINPUTEVENTHANDLER_H_ */
