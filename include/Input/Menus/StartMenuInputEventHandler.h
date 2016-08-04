/*
 * StartMenuInputEventHandler.h
 *
 *  Created on: 17 Jul 2015
 *      Author: Jamie
 */

#ifndef STARTMENUINPUTEVENTHANDLER_H_
#define STARTMENUINPUTEVENTHANDLER_H_

#include "Input/InputHandler.h"
#include "GlobalDefinitions.h"

#define NumOptions 5
#define NumAdditionalOptions 3

namespace Input
{
	class StartMenuInputEventHandler : public InputHandler
	{
	private:
		static char nameString[];
		static StringAndFunctionPointerStruct baseMenuOptions[];
		static StringAndFunctionPointerWithFlagIDStruct additionalMenuOptions[NumAdditionalOptions];
		VoidFunctionPointerVoid* menu;
		u32 menuPosition;
		u32 numMenuItems;
	public:
		StartMenuInputEventHandler();
		~StartMenuInputEventHandler();
		bool OnPressA();
		bool OnPressB();
		bool OnPressStart();
		bool OnPressUp();
		bool OnPressDown();
	};
}

#endif /* STARTMENUINPUTEVENTHANDLER_H_ */
