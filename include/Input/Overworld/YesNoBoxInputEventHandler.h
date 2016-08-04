/*
 * YesNoBoxInputEventHandler.h
 *
 *  Created on: 7 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_INPUT_OVERWORLD_YESNOBOXINPUTEVENTHANDLER_H_
#define INCLUDE_INPUT_OVERWORLD_YESNOBOXINPUTEVENTHANDLER_H_

#include "Input/InputHandler.h"

namespace Tasks
{
	namespace ScriptRunners
	{
		class ScriptRunner;
	}
}

namespace Input
{
	class YesNoBoxInputEventHandler : public InputHandler
	{
		private:
			Tasks::ScriptRunners::ScriptRunner* runner;
			u32 selectedIndex;
		public:
			YesNoBoxInputEventHandler(Tasks::ScriptRunners::ScriptRunner* runner);
			~YesNoBoxInputEventHandler();
			bool OnPressA();
			bool OnPressB();
			bool OnPressUp();
			bool OnPressDown();
	};
}

#endif /* INCLUDE_INPUT_OVERWORLD_YESNOBOXINPUTEVENTHANDLER_H_ */
