/*
 * OverworldScriptRunner.cpp
 *
 *  Created on: 12 Jun 2015
 *      Author: Jamie
 */

#include "OverworldScriptRunner.h"

RODATA_LOCATION ALIGN(4) U32FunctionPointerScriptRunner OverworldScriptRunner::overworldCommands[0xFF];
RODATA_LOCATION ALIGN(4) u8* OverworldScriptRunner::errorScript = NULL;

OverworldScriptRunner::OverworldScriptRunner(u8* script) : ScriptRunner(script, (U32FunctionPointerScriptRunner*)&overworldCommands)
{
	if (!script)
	{
		scriptPointer = errorScript;
	}
	// TODO Auto-generated constructor stub
}

OverworldScriptRunner::~OverworldScriptRunner()
{
	// TODO Auto-generated destructor stub
}

