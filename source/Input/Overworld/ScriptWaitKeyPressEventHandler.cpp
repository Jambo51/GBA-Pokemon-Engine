/*
 * ScriptWaitKeyPressEventHandler.cpp
 *
 *  Created on: 15 Jul 2015
 *      Author: Jamie
 */

#include "Input/Overworld/ScriptWaitKeyPressEventHandler.h"
#include "Tasks/ScriptRunners/ScriptRunner.h"

using namespace Tasks::ScriptRunners;

namespace Input
{
	ScriptWaitKeyPressEventHandler::ScriptWaitKeyPressEventHandler(ScriptRunner* runner)
	{
		// TODO Auto-generated constructor stub
		this->runner = runner;
		runner->EventHandlerSet(true);
	}

	ScriptWaitKeyPressEventHandler::~ScriptWaitKeyPressEventHandler()
	{
		// TODO Auto-generated destructor stub
	}

	bool ScriptWaitKeyPressEventHandler::OnPressA()
	{
		if (!InputHandler::OnPressA())
		{
			runner->KeyPressReceived(true);
		}
		return false;
	}

	bool ScriptWaitKeyPressEventHandler::OnPressB()
	{
		if (!InputHandler::OnPressB())
		{
			runner->KeyPressReceived(true);
		}
		return false;
	}
}
