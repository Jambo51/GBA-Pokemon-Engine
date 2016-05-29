/*
 * GlobalScriptingFunctions.cpp
 *
 *  Created on: 15 Jul 2015
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"
#include "Tasks/ScriptRunners/ScriptRunner.h"

void NotifyMessageEnd(u32 value)
{
	Tasks::ScriptRunners::ScriptRunner* runner = (Tasks::ScriptRunners::ScriptRunner*)value;
	runner->Text(false);
	runner->TextWait(true);
}
