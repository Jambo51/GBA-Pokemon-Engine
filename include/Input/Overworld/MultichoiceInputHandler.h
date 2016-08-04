/*
 * MultichoiceInputHandler.h
 *
 *  Created on: 8 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_INPUT_OVERWORLD_MULTICHOICEINPUTHANDLER_H_
#define INCLUDE_INPUT_OVERWORLD_MULTICHOICEINPUTHANDLER_H_

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
	class MultichoiceInputHandler : public InputHandler
	{
		private:
			Tasks::ScriptRunners::ScriptRunner* runner;
			u32 maxValue;
			u32 arrowPos;
			u32 logicalArrowPos;
			bool bExitAllowed;
		public:
			MultichoiceInputHandler(Tasks::ScriptRunners::ScriptRunner* runner, bool bExitAllowed, u32 maxValue = 6, u32 arrowPosition = 0);
			~MultichoiceInputHandler();
			bool OnPressA();
			bool OnPressDown();
			bool OnPressUp();
			bool OnPressLeft();
			bool OnPressRight();
			bool OnPressB();
			u32 GetArrowPosition() { return arrowPos; }
			u32 GetLogicalArrowPosition() { return logicalArrowPos; }
	};
}

#endif /* INCLUDE_INPUT_OVERWORLD_MULTICHOICEINPUTHANDLER_H_ */
