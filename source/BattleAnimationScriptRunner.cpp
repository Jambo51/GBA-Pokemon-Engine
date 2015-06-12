/*
 * BattleAnimationScriptRunner.cpp
 *
 *  Created on: 12 Jun 2015
 *      Author: Jamie
 */

#include "BattleAnimationScriptRunner.h"

RODATA_LOCATION ALIGN(4) U32FunctionPointerScriptRunner BattleAnimationScriptRunner::battleAnimationCommands[0xFF];

BattleAnimationScriptRunner::BattleAnimationScriptRunner(u8* script) : ScriptRunner(script, (U32FunctionPointerScriptRunner*)&battleAnimationCommands)
{
	// TODO Auto-generated constructor stub
}

BattleAnimationScriptRunner::~BattleAnimationScriptRunner()
{
	// TODO Auto-generated destructor stub
}

