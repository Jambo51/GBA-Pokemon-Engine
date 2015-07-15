/*
 * ScriptWaitKeyPressEventHandler.cpp
 *
 *  Created on: 15 Jul 2015
 *      Author: Jamie
 */

#include "ScriptWaitKeyPressEventHandler.h"
#include "ScriptRunner.h"

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
	InputEventHandler::OnPressA();
	runner->KeyPressReceived(true);
}

void ScriptWaitKeyPressEventHandler::OnPressB()
{
	InputEventHandler::OnPressB();
	runner->KeyPressReceived(true);
}
