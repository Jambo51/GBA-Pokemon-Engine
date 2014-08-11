/*
 * ScriptRunner.h
 *
 *  Created on: 23 Dec 2013
 *      Author: Jamie
 */

#ifndef SCRIPTRUNNER_H_
#define SCRIPTRUNNER_H_

#include "Data/GlobalDefinitions.h"

u8 RunScript(u8* pointer, void* instructionSet);
void RunBattleScript();
void RunOverworldScript();

#endif /* SCRIPTRUNNER_H_ */
