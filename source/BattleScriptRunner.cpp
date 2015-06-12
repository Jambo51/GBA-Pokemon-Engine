/*
 * BattleScriptRunner.cpp
 *
 *  Created on: 12 Jun 2015
 *      Author: Jamie
 */

#include "BattleScriptRunner.h"

RODATA_LOCATION ALIGN(4) U32FunctionPointerScriptRunner BattleScriptRunner::battleCommands[0xFF];

BattleScriptRunner::BattleScriptRunner(u8* script) : ScriptRunner(script, (U32FunctionPointerScriptRunner*)&battleCommands)
{
	// TODO Auto-generated constructor stub
}

BattleScriptRunner::~BattleScriptRunner()
{
	// TODO Auto-generated destructor stub
}

