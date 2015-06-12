/*
 * ScriptRunner.c
 *
 *  Created on: 23 Dec 2013
 *      Author: Jamie
 */

#include "ScriptRunner.h"

ScriptRunner::ScriptRunner(u8* script, U32FunctionPointerScriptRunner* commands)
{
	scriptPointer = script;
	commandSet = commands;
	status = 0;
	callStackPosition = 0;
	for (int i = 0; i < 10; i++)
	{
		callStack[i] = NULL;
	}
}

ScriptRunner::~ScriptRunner()
{

}


void ScriptRunner::Update()
{
	u32 scriptEnded = NotEnded;
	while (scriptEnded != Ended)
	{
		u32 commandID = *scriptPointer;
		U32FunctionPointerScriptRunner Command = commandSet[commandID];
		scriptEnded = Command(this);
		if (scriptEnded == WaitForFrames)
		{
			break;
		}
	}
}
