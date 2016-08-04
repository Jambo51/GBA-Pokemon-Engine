/*
 * SelectGenderInputHandler.h
 *
 *  Created on: 7 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_INPUT_MISC_SELECTGENDERINPUTHANDLER_H_
#define INCLUDE_INPUT_MISC_SELECTGENDERINPUTHANDLER_H_

#include "Input/InputHandler.h"

namespace Input
{
	class SelectGenderInputHandler : public InputHandler
	{
		private:
			u32 currentGender;
		public:
			SelectGenderInputHandler();
			~SelectGenderInputHandler();
			bool OnPressLeft();
			bool OnPressRight();
			bool OnPressA();
			bool OnPressStart();
	};
}

#endif /* INCLUDE_INPUT_MISC_SELECTGENDERINPUTHANDLER_H_ */
