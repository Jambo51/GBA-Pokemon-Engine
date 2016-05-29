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

	void ScriptWaitKeyPressEventHandler::OnPressA()
	{
		InputHandler::OnPressA();
		runner->KeyPressReceived(true);
	}

	void ScriptWaitKeyPressEventHandler::OnPressB()
	{
		InputHandler::OnPressB();
		runner->KeyPressReceived(true);
	}
}
