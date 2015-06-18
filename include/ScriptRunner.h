/*
 * ScriptRunner.h
 *
 *  Created on: 23 Dec 2013
 *      Author: Jamie
 */

#ifndef SCRIPTRUNNER_H_
#define SCRIPTRUNNER_H_

#include "Callback.h"

class ScriptRunner;

typedef u32 (*U32FunctionPointerScriptRunner)(ScriptRunner*);

class ScriptRunner : public Callback
{
protected:
	u16 waitFrames;
	u16 status;
	u32 callStackPosition;
	u8* callStack[10];
	u8* scriptPointer;
	U32FunctionPointerScriptRunner* commandSet;
	ScriptRunner(u8* script, U32FunctionPointerScriptRunner* commands);
public:
	virtual ~ScriptRunner();
	void Update();
	// So the pointer can easily be cast to other formats
	u32* GetStatusPointer() const { return (u32*)&status; }
	u8* GetScriptPointer() const { return scriptPointer; }
	void IncrementScriptPointer(u32 value) { scriptPointer += value; }
	void SetScriptPointer(u8* newPointer) { scriptPointer = newPointer; }
	u16 GetWaitFrames() const { return waitFrames; }
	void SetWaitFrames(u16 value) { waitFrames = value; }
	bool DecrementWaitFrames() { if (waitFrames) { waitFrames--; if (!waitFrames) { return true; } else { return false; } } else { return true; } }
	void Call(u8* newPointer) { if (callStackPosition < 10) { callStack[callStackPosition] = scriptPointer; callStackPosition++; scriptPointer = newPointer; } }
	void Return() { if (callStackPosition > 0) { callStackPosition--; scriptPointer = callStack[callStackPosition]; } }
};

#endif /* SCRIPTRUNNER_H_ */
