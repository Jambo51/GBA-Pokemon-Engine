/*
 * BattleTransitionScriptRunner.h
 *
 *  Created on: 18 Jul 2015
 *      Author: Jamie
 */

#ifndef BATTLETRANSITIONSCRIPTRUNNER_H_
#define BATTLETRANSITIONSCRIPTRUNNER_H_

#include "ScriptRunner.h"

#define NumPositiveRatios 4
#define NumNegativeRatios 2

class BattleScreen;

class BattleTransitionScriptRunner : public ScriptRunner
{
private:
	static U32FunctionPointerScriptRunner battleTransitionCommands[0xFF];
	static u8* errorScript;
	static u8* negativeScripts[];
	static u8* positiveScripts[];
	static u8** defaultBattleTransitionScripts[2];
public:
	BattleTransitionScriptRunner(u8* script, BattleScreen* battle = NULL);
	~BattleTransitionScriptRunner();
};

#endif /* BATTLETRANSITIONSCRIPTRUNNER_H_ */
