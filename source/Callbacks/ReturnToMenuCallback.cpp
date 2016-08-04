/*
 * ReturnToMenuCallback.cpp
 *
 *  Created on: 3 Aug 2016
 *      Author: CoolerMaster
 */

#include "Callbacks/ReturnToMenuCallback.h"
#include "Input.h"

namespace Callbacks
{
	void ReturnToMenuCallback::DoCallback()
	{
		Input::InputManager::SetEventHandler(new Input::StartMenuInputEventHandler());
	}
}
