/*
 * OverworldScriptRunner.cpp
 *
 *  Created on: 12 Jun 2015
 *      Author: Jamie
 */

#include "OverworldScriptRunner.h"

RODATA_LOCATION ALIGN(4) U32FunctionPointerScriptRunner OverworldScriptRunner::overworldCommands[0xFF];

OverworldScriptRunner::OverworldScriptRunner(u8* script) : ScriptRunner(script, (U32FunctionPointerScriptRunner*)&overworldCommands)
{
	// TODO Auto-generated constructor stub
}

OverworldScriptRunner::~OverworldScriptRunner()
{
	// TODO Auto-generated destructor stub
}

