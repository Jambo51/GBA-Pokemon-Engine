/*
 * ScriptRunner.h
 *
 *  Created on: 23 Dec 2013
 *      Author: Jamie
 */

#ifndef SCRIPTRUNNER_H_
#define SCRIPTRUNNER_H_

#include "Task.h"

namespace Tasks
{
	namespace ScriptRunners
	{
		class ScriptRunner;

		typedef u32 (*U32FunctionPointerScriptRunner)(ScriptRunner*);

		class ScriptRunner : public Task
		{
		protected:
			u16 waitFrames;
			u16 status;
			u32 scriptBanks[4];
			u32 callStackPosition;
			u8* callStack[10];
			u8* scriptPointer;
			U32FunctionPointerScriptRunner* commandSet;
			bool text;
			bool keyPressReceived;
			bool textWait;
			bool eventHandlerSet;
			ScriptRunner(u8* script, U32FunctionPointerScriptRunner* commands);
		public:
			virtual ~ScriptRunner();
			void Update();
			// So the pointer can easily be cast to other formats
			u16* GetStatusPointer() const { return (u16*)&status; }
			u8* GetScriptPointer() const { return scriptPointer; }
			void IncrementScriptPointer(u32 value) { scriptPointer += value; }
			void SetScriptPointer(u8* newPointer) { scriptPointer = newPointer; }
			u16 GetStatus() const { return status; }
			void SetStatus(u32 value) { status = value; }
			u16 GetWaitFrames() const { return waitFrames; }
			void SetWaitFrames(u16 value) { waitFrames = value; }
			bool DecrementWaitFrames() { if (waitFrames) { waitFrames--; if (!waitFrames) { return true; } else { return false; } } else { return true; } }
			void Call(u8* newPointer) { if (callStackPosition < 10) { callStack[callStackPosition] = scriptPointer; callStackPosition++; scriptPointer = newPointer; } }
			void Return() { if (callStackPosition > 0) { callStackPosition--; scriptPointer = callStack[callStackPosition]; } }
			void SetBank(u32 bankID, u32 value) { if (bankID < 4) { scriptBanks[bankID] = value; } }
			u32 GetBank(u32 bankID) const { if (bankID < 4) { return scriptBanks[bankID]; } return 0; }
			bool KeyPressReceived() const { return keyPressReceived; }
			void KeyPressReceived(bool value) { keyPressReceived = value; }
			bool Text() const { return text; }
			void Text(bool value) { text = value; }
			bool TextWait() const { return textWait; }
			void TextWait(bool value) { textWait = value; }
			bool EventHandlerSet() const { return eventHandlerSet; }
			void EventHandlerSet(bool value) { eventHandlerSet = value; }
			const void* GetBankPointer(u32 bankID) const { return &scriptBanks[bankID]; }
		};
	}
}

#endif /* SCRIPTRUNNER_H_ */
