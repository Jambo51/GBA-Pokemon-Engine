/*
 * BattleScriptRunner.h
 *
 *  Created on: 12 Jun 2015
 *      Author: Jamie
 */

#ifndef BattleScriptRunner_H_
#define BattleScriptRunner_H_

#include "ScriptRunner.h"

class BattleScriptRunner : public ScriptRunner
{
private:
	static U32FunctionPointerScriptRunner battleCommands[0xFF];
	static u8* errorScript;
public:
	BattleScriptRunner(u8* script);
	~BattleScriptRunner();
};

#endif /* BattleScriptRunner_H_ */
