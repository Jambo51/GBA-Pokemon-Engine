/*
 * CallbackSystem.c
 *
 *  Created on: 7 May 2014
 *      Author: Jamie
 */

#include "Data/GlobalDefinitions.h"
#include "Data/MemoryLocations.h"

void AddFunction(void (*Function)(u32), u32 data)
{
	if (callbackSystem.filledEntries < CALLBACKLENGTH)
	{
		u32 i;
		for (i = 0; i < CALLBACKLENGTH; i++)
		{
			if (callbackSystem.entries[i].Function == 0)
			{
				callbackSystem.entries[i].Function = Function;
				callbackSystem.entries[i].data = data;
				callbackSystem.filledEntries++;
				break;
			}
		}
	}
}

void RemoveFunctionByID(u32 functionID)
{
	if (callbackSystem.entries[functionID].Function != 0)
	{
		callbackSystem.filledEntries--;
	}
	callbackSystem.entries[functionID].Function = 0;
	callbackSystem.entries[functionID].data = 0;
}

void RemoveFunctionByPointer(void (*Function)(u32))
{
	u32 i;
	for (i = 0; i < CALLBACKLENGTH; i++)
	{
		if (callbackSystem.entries[i].Function == Function)
		{
			callbackSystem.entries[i].Function = 0;
			callbackSystem.entries[i].data = 0;
			callbackSystem.filledEntries--;
			break;
		}
	}
}

void RunCallbackSystem()
{
	u32 i;
	for (i = 0; i < CALLBACKLENGTH; i++)
	{
		void (*TheFunction)(u32) = callbackSystem.entries[i].Function;
		if (TheFunction != 0)
		{
			TheFunction(callbackSystem.entries[i].data);
		}
	}
}
