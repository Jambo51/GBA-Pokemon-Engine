/*
 * BattleTransitionScriptRunner.cpp
 *
 *  Created on: 18 Jul 2015
 *      Author: Jamie
 */

#include "BattleTransitionScriptRunner.h"
#include "Battles.h"
#include "Game.h"
#include "Maths.h"

RODATA_LOCATION ALIGN(4) U32FunctionPointerScriptRunner BattleTransitionScriptRunner::battleTransitionCommands[0xFF];
RODATA_LOCATION ALIGN(4) u8* BattleTransitionScriptRunner::errorScript = NULL;
RODATA_LOCATION ALIGN(4) u8* BattleTransitionScriptRunner::negativeScripts[NumNegativeRatios] = {

};
RODATA_LOCATION ALIGN(4) u8* BattleTransitionScriptRunner::positiveScripts[NumPositiveRatios] = {

};
RODATA_LOCATION ALIGN(4) u8** BattleTransitionScriptRunner::defaultBattleTransitionScripts[2] = {
		(u8**)&positiveScripts,
		(u8**)&negativeScripts
};

BattleTransitionScriptRunner::BattleTransitionScriptRunner(u8* script, BattleScreen* battle) : ScriptRunner(script, (U32FunctionPointerScriptRunner*)&battleTransitionCommands)
{
	if (!script)
	{
		if (!battle)
		{
			scriptPointer = errorScript;
		}
		else
		{
			const Pokemon &enemy = *battle->GetEnemyBattlerByIndex(0);
			const Pokemon &friendly = *Game::GetPartyPokemon(0);
			u32 tableID = 0;
			u32 scriptID = 0;
			u32 ratio;
			{
				s32 levelDifference = enemy.Decrypt(Level) - friendly.Decrypt(Level);
				if (levelDifference < 0)
				{
					ratio = Maths::UnsignedDivide(friendly.Decrypt(Level) * 1000, enemy.Decrypt(Level));
					tableID = 1;
				}
				else
				{
					ratio = Maths::UnsignedDivide(enemy.Decrypt(Level) * 1000, friendly.Decrypt(Level));
				}
			}
			scriptPointer = defaultBattleTransitionScripts[tableID][scriptID];
		}
	}
	else
	{
		scriptPointer = script;
	}
}

BattleTransitionScriptRunner::~BattleTransitionScriptRunner()
{
	// TODO Auto-generated destructor stub
}
