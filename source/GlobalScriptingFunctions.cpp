/*
 * GlobalScriptingFunctions.cpp
 *
 *  Created on: 15 Jul 2015
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"
#include "ScriptRunner.h"

void NotifyMessageEnd(u32 value)
{
	ScriptRunner* runner = (ScriptRunner*)value;
	runner->Text(false);
	runner->TextWait(true);
}
