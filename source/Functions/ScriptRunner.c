/*
 * ScriptRunner.c
 *
 *  Created on: 23 Dec 2013
 *      Author: Jamie
 */

#include "Data.h"

u8 RunScript(u8* pointer, u8 (*instructionSet[0xFF])(void))
{
	u8 i;
	u8 scriptEnded = 0;
	for (i = 0; i < 4; i++)
	{
		u8 commandID = pointer[0];
		u8 (*ScriptCommand)(void) = instructionSet[commandID];
		scriptEnded = ScriptCommand();
		if (scriptEnded == 1)
		{
			break;
		}
	}
	return scriptEnded;
}
