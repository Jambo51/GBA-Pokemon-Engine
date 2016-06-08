/*
 * ScriptRunner.c
 *
 *  Created on: 23 Dec 2013
 *      Author: Jamie
 */

#include "Tasks/ScriptRunners/ScriptRunner.h"
#include "Tasks/TaskManager.h"
#include "Text.h"
#include "Input.h"

namespace Tasks
{
	namespace ScriptRunners
	{
		ScriptRunner::ScriptRunner(u8* script, U32FunctionPointerScriptRunner* commands) : Tasks::Task()
		{
			waitFrames = 0;
			scriptPointer = script;
			commandSet = commands;
			status = 0;
			forceTextboxOpen = false;
			memset32((void*)&scriptBanks, 0, (sizeof(u32) * 5 + sizeof(u8*) * 10) >> 2);
		}

		ScriptRunner::~ScriptRunner()
		{
			if (!forceTextboxOpen)
			{
				Text::TextFunctions::ClearTextAreaFromMap(0, 0, 0, 30, 20);
			}
			else
			{
				Text::TextFunctions::ClearTextTileArea();
			}
			Input::InputManager::SetEventHandler(new Input::DoNothingInputEventHandler());
			if (oldPalette)
			{
				delete[] oldPalette;
			}
		}


		void ScriptRunner::Update()
		{
			u32 scriptEnded = NotEnded;
			if (!scriptPointer)
			{
				scriptEnded = Ended;
			}
			while (scriptEnded != Ended)
			{
				u32 commandID = *scriptPointer;
				U32FunctionPointerScriptRunner Command = commandSet[commandID];
				scriptEnded = Command(this);
				if (scriptEnded == WaitForFrames)
				{
					return;
				}
			}
			TaskManager::RemoveTask(this);
		}
	}
}
