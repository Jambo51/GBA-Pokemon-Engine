/*
 * ReleaseFromScriptCallback.cpp
 *
 *  Created on: 3 Aug 2016
 *      Author: CoolerMaster
 */

#include "Callbacks/ReleaseFromScriptCallback.h"
#include "Input.h"

namespace Callbacks
{
	void ReleaseFromScriptCallback::DoCallback()
	{
		Input::InputManager::SetEventHandler(new Input::OverworldInputEventHandler());
	}
}


