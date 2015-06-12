/*
 * BattleAnimationScriptRunner.h
 *
 *  Created on: 12 Jun 2015
 *      Author: Jamie
 */

#ifndef BattleAnimationScriptRUNNER_H_
#define BattleAnimationScriptRUNNER_H_

#include "ScriptRunner.h"

class BattleAnimationScriptRunner : public ScriptRunner
{
private:
	static U32FunctionPointerScriptRunner battleAnimationCommands[0xFF];
public:
	BattleAnimationScriptRunner(u8* script);
	~BattleAnimationScriptRunner();
};

#endif /* BattleAnimationScriptRUNNER_H_ */
