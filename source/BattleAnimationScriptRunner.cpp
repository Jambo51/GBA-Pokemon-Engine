/*
 * BattleAnimationScriptRunner.cpp
 *
 *  Created on: 12 Jun 2015
 *      Author: Jamie
 */

#include "Tasks/ScriptRunners/BattleAnimationScriptRunner.h"

namespace Tasks
{
	namespace ScriptRunners
	{
		RODATA_LOCATION ALIGN(4) U32FunctionPointerScriptRunner BattleAnimationScriptRunner::battleAnimationCommands[0xFF];
		RODATA_LOCATION ALIGN(4) u8* BattleAnimationScriptRunner::errorScript = NULL;

		BattleAnimationScriptRunner::BattleAnimationScriptRunner(u8* script) : ScriptRunner(script, (U32FunctionPointerScriptRunner*)&battleAnimationCommands)
		{
			if (!script)
			{
				scriptPointer = errorScript;
			}
			// TODO Auto-generated constructor stub
		}

		BattleAnimationScriptRunner::~BattleAnimationScriptRunner()
		{
			// TODO Auto-generated destructor stub
		}
	}
}
