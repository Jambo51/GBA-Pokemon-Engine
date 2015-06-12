/*
 * OverworldScriptRunner.h
 *
 *  Created on: 12 Jun 2015
 *      Author: Jamie
 */

#ifndef OVERWORLDSCRIPTRUNNER_H_
#define OVERWORLDSCRIPTRUNNER_H_

#include "ScriptRunner.h"

class OverworldScriptRunner : public ScriptRunner
{
private:
	static U32FunctionPointerScriptRunner overworldCommands[0xFF];
public:
	OverworldScriptRunner(u8* script);
	~OverworldScriptRunner();
};

#endif /* OVERWORLDSCRIPTRUNNER_H_ */
