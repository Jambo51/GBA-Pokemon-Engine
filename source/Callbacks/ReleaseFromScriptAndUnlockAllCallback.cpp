/*
 * ReleaseFromScriptCallback.cpp
 *
 *  Created on: 3 Aug 2016
 *      Author: CoolerMaster
 */

#include "Callbacks/ReleaseFromScriptAndUnlockAllCallback.h"
#include "Input.h"
#include "Core.h"

namespace Callbacks
{
	void ReleaseFromScriptAndUnlockAllCallback::DoCallback()
	{
		Input::InputManager::SetEventHandler(new Input::OverworldInputEventHandler());
		Core::Game::EnableNPCMovement();
	}
}


