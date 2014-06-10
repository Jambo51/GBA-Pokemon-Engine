/*
 * ScriptRunner.h
 *
 *  Created on: 23 Dec 2013
 *      Author: Jamie
 */

#ifndef SCRIPTRUNNER_H_
#define SCRIPTRUNNER_H_

#include "Data/GlobalDefinitions.h"

extern u8 (*overworldScriptingCommands[0xFF])(void);
extern u8 (*battleScriptingCommands[0xFF])(void);
extern u8 (*animationScriptingCommands[0xFF])(void);

u8 RunScript(u8* pointer, void* instructionSet);

#endif /* SCRIPTRUNNER_H_ */
