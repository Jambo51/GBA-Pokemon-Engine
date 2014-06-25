/*
 * KeyPresses.c

 *
 *  Created on: 20 Dec 2013
 *      Author: Jamie
 */

#include "Data/GlobalDefinitions.h"
#include "Data/MemoryLocations.h"
#define DEFAULTDEADTIME 8

void IgnoreKeyPresses()
{

}

void SetKeyIgnored(u8 keyID, u8 framesOffDefaultDeadTime)
{
	keyStates.Timers[keyID] = DEFAULTDEADTIME - framesOffDefaultDeadTime;
}

u8 IsKeyHeld(u8 keyID)
{
	u8 retValue = (((keyStates.keyBits & (1 << keyID)) != 0) ? true : false);
	if (retValue == true)
	{
		u8 retValueInner = (((keyStates.previousKeyBits & (1 << keyID)) != 0) ? true : false);
		if (retValueInner == true)
		{
			if (keyStates.Timers[keyID] != DEFAULTDEADTIME)
			{
				retValue = false;
			}
		}
		else
		{
			retValue = false;
		}
	}
	return retValue;
}

u8 IsKeyDown(u8 keyID)
{
	return (((keyStates.keyBits & (1 << keyID)) != 0) ? true : false);
}

u8 IsKeyDownButNotHeld(u8 keyID)
{
	u8 value = false;
	if (IsKeyDown(keyID) == true)
	{
		if (IsKeyHeld(keyID) == false)
		{
			value = true;
		}
	}
	return value;
}

u8 IsDPadDown()
{
	u8 retValue = false;
	u8 i;
	for (i = 0; i < 4; i++)
	{
		if (IsKeyDown(i + 4) == 1)
		{
			retValue = true;
			break;
		}
	}
	return retValue;
}

s32 GetHorizontalKeyState()
{
	s32 retValue = 0;
	if (IsKeyDown(Key_Left) == 1)
	{
		retValue = -1;
	}
	else if (IsKeyDown(Key_Right) == 1)
	{
		retValue = 1;
	}
	return retValue;
}

s32 GetVerticalKeyState()
{
	s32 retValue = 0;
	if (IsKeyDown(Key_Up) == 1)
	{
		retValue = -1;
	}
	else if (IsKeyDown(Key_Down) == 1)
	{
		retValue = 1;
	}
	return retValue;
}

void KeyPoll()
{
	U16BitField oldValue = keyStates.keyBitsInterpreted;
	keyStates.previousKeyBitsInterpreted = oldValue;
	keyStates.keyBits = (~(REG_KEYINPUT)) & 0x3FF;
	U16BitField newValue = keyStates.previousKeyBitsInterpreted;
	if (oldValue.bit0 != newValue.bit0)
	{
		keyStates.Timers[0] = 0;
	}
	else
	{
		if (keyStates.Timers[0] < DEFAULTDEADTIME)
		{
			keyStates.Timers[0]++;
		}
	}
	if (oldValue.bit1 != newValue.bit1)
	{
		keyStates.Timers[1] = 0;
	}
	else
	{
		if (keyStates.Timers[1] < DEFAULTDEADTIME)
		{
			keyStates.Timers[1]++;
		}
	}
	if (oldValue.bit2 != newValue.bit2)
	{
		keyStates.Timers[2] = 0;
	}
	else
	{
		if (keyStates.Timers[2] < DEFAULTDEADTIME)
		{
			keyStates.Timers[2]++;
		}
	}
	if (oldValue.bit3 != newValue.bit3)
	{
		keyStates.Timers[3] = 0;
	}
	else
	{
		if (keyStates.Timers[3] < DEFAULTDEADTIME)
		{
			keyStates.Timers[3]++;
		}
	}
	if (oldValue.bit4 != newValue.bit4)
	{
		keyStates.Timers[4] = 0;
	}
	else
	{
		if (keyStates.Timers[4] < DEFAULTDEADTIME)
		{
			keyStates.Timers[4]++;
		}
	}
	if (oldValue.bit5 != newValue.bit5)
	{
		keyStates.Timers[5] = 0;
	}
	else
	{
		if (keyStates.Timers[5] < DEFAULTDEADTIME)
		{
			keyStates.Timers[5]++;
		}
	}
	if (oldValue.bit6 != newValue.bit6)
	{
		keyStates.Timers[6] = 0;
	}
	else
	{
		if (keyStates.Timers[6] < DEFAULTDEADTIME)
		{
			keyStates.Timers[6]++;
		}
	}
	if (oldValue.bit7 != newValue.bit7)
	{
		keyStates.Timers[7] = 0;
	}
	else
	{
		if (keyStates.Timers[7] < DEFAULTDEADTIME)
		{
			keyStates.Timers[7]++;
		}
	}
	if (oldValue.bit8 != newValue.bit8)
	{
		keyStates.Timers[8] = 0;
	}
	else
	{
		if (keyStates.Timers[8] < DEFAULTDEADTIME)
		{
			keyStates.Timers[8]++;
		}
	}
	if (oldValue.bit9 != newValue.bit9)
	{
		keyStates.Timers[9] = 0;
	}
	else
	{
		if (keyStates.Timers[9] < DEFAULTDEADTIME)
		{
			keyStates.Timers[9]++;
		}
	}
}
