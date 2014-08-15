/*
 * ScriptRunner.h
 *
 *  Created on: 23 Dec 2013
 *      Author: Jamie
 */

#ifndef SCRIPTRUNNER_H_
#define SCRIPTRUNNER_H_

#include "Data/GlobalDefinitions.h"

u32 RunScript(u8** pointer, u8 (*instructionSet[0xFF])(void));
void RunBattleScript();
void RunOverworldScript();
void RunAnimationScript();

#endif /* SCRIPTRUNNER_H_ */
