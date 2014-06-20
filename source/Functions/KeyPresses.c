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

void SetKeyIgnored(u8 keyID, u8 length)
{
	if (length == 0)
	{
		length = 0xFF;
	}
	switch (keyID)
	{
		case 0:
			keyStates.IsAIgnored = 1;
			keyStates.ATimer = length;
			break;
		case 1:
			keyStates.IsBIgnored = 1;
			keyStates.BTimer = length;
			break;
		case 2:
			keyStates.IsSelectIgnored = 1;
			keyStates.SelectTimer = length;
			break;
		case 3:
			keyStates.IsStartIgnored = 1;
			keyStates.StartTimer = length;
			break;
		case 4:
			keyStates.IsRightIgnored = 1;
			keyStates.RightTimer = length;
			break;
		case 5:
			keyStates.IsLeftIgnored = 1;
			keyStates.LeftTimer = length;
			break;
		case 6:
			keyStates.IsUpIgnored = 1;
			keyStates.UpTimer = length;
			break;
		case 7:
			keyStates.IsDownIgnored = 1;
			keyStates.DownTimer = length;
			break;
		case 8:
			keyStates.IsRBIgnored = 1;
			keyStates.RBTimer = length;
			break;
		case 9:
			keyStates.IsLBIgnored = 1;
			keyStates.LBTimer = length;
			break;
	}
}

void SetDPadKeysIgnored(u8 length)
{
	u8 i;
	for (i = 0; i < 4; i++)
	{
		SetKeyIgnored(i + 4, length);
	}
}

u8 IsKeyHeld(u8 keyID)
{
	u8 retValue = 0;
	switch (keyID)
	{
		case 0:
			if (keyStates.IsAIgnored == 0)
			{
				retValue = (keyStates.keyBitsInterpreted.bit0 == 1 && keyStates.previousKeyBitsInterpreted.bit0 == 1) ? 1 : 0;
			}
			else
			{
				retValue = 0;
			}
			break;
		case 1:
			if (keyStates.IsBIgnored == 0)
			{
				retValue = (keyStates.keyBitsInterpreted.bit1 == 1 && keyStates.previousKeyBitsInterpreted.bit1 == 1) ? 1 : 0;
			}
			else
			{
				retValue = 0;
			}
			break;
		case 2:
			if (keyStates.IsSelectIgnored == 0)
			{
				retValue = (keyStates.keyBitsInterpreted.bit2 == 1 && keyStates.previousKeyBitsInterpreted.bit2 == 1) ? 1 : 0;
			}
			else
			{
				retValue = 0;
			}
			break;
		case 3:
			if (keyStates.IsStartIgnored == 0)
			{
				retValue = (keyStates.keyBitsInterpreted.bit3 == 1 && keyStates.previousKeyBitsInterpreted.bit3 == 1) ? 1 : 0;
			}
			else
			{
				retValue = 0;
			}
			break;
		case 4:
			if (keyStates.IsRightIgnored == 0)
			{
				retValue = (keyStates.keyBitsInterpreted.bit4 == 1 && keyStates.previousKeyBitsInterpreted.bit4 == 1) ? 1 : 0;
			}
			else
			{
				retValue = 0;
			}
			break;
		case 5:
			if (keyStates.IsLeftIgnored == 0)
			{
				retValue = (keyStates.keyBitsInterpreted.bit5 == 1 && keyStates.previousKeyBitsInterpreted.bit5 == 1) ? 1 : 0;
			}
			else
			{
				retValue = 0;
			}
			break;
		case 6:
			if (keyStates.IsUpIgnored == 0)
			{
				retValue = (keyStates.keyBitsInterpreted.bit6 == 1 && keyStates.previousKeyBitsInterpreted.bit6 == 1) ? 1 : 0;
			}
			else
			{
				retValue = 0;
			}
			break;
		case 7:
			if (keyStates.IsDownIgnored == 0)
			{
				retValue = (keyStates.keyBitsInterpreted.bit7 == 1 && keyStates.previousKeyBitsInterpreted.bit7 == 1) ? 1 : 0;
			}
			else
			{
				retValue = 0;
			}
			break;
		case 8:
			if (keyStates.IsRBIgnored == 0)
			{
				retValue = (keyStates.keyBitsInterpreted.bit8 == 1 && keyStates.previousKeyBitsInterpreted.bit8 == 1) ? 1 : 0;
			}
			else
			{
				retValue = 0;
			}
			break;
		case 9:
			if (keyStates.IsLBIgnored == 0)
			{
				retValue = (keyStates.keyBitsInterpreted.bit9 == 1 && keyStates.previousKeyBitsInterpreted.bit9 == 1) ? 1 : 0;
			}
			else
			{
				retValue = 0;
			}
			break;
	}
	return retValue;
}

u8 IsKeyDown(u8 keyID)
{
	u8 retValue = (((keyStates.keyBits & (1 << keyID)) != 0) ? 1 : 0);
	if (retValue == 1)
	{
		switch (keyID)
		{
			case 0:
				if (keyStates.IsAIgnored != 0)
				{
					retValue = 0;
				}
				break;
			case 1:
				if (keyStates.IsBIgnored != 0)
				{
					retValue = 0;
				}
				break;
			case 2:
				if (keyStates.IsSelectIgnored != 0)
				{
					retValue = 0;
				}
				break;
			case 3:
				if (keyStates.IsStartIgnored != 0)
				{
					retValue = 0;
				}
				break;
			case 4:
				if (keyStates.IsRightIgnored != 0)
				{
					retValue = 0;
				}
				break;
			case 5:
				if (keyStates.IsLeftIgnored != 0)
				{
					retValue = 0;
				}
				break;
			case 6:
				if (keyStates.IsUpIgnored != 0)
				{
					retValue = 0;
				}
				break;
			case 7:
				if (keyStates.IsDownIgnored != 0)
				{
					retValue = 0;
				}
				break;
			case 8:
				if (keyStates.IsRBIgnored != 0)
				{
					retValue = 0;
				}
				break;
			case 9:
				if (keyStates.IsLBIgnored != 0)
				{
					retValue = 0;
				}
				break;
		}
	}
	return retValue;
}

u8 IsDPadDown()
{
	u8 retValue = 0;
	u8 i;
	for (i = 0; i < 4; i++)
	{
		if (IsKeyDown(i + 4) == 1)
		{
			retValue = 1;
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
		if (newValue.bit0 != 0)
		{
			keyStates.ATimer = DEFAULTDEADTIME;
		}
		else
		{
			keyStates.ATimer = 0;
			keyStates.IsAIgnored = 0;
		}
	}
	else if (newValue.bit0 != 0)
	{
		u8 timer = keyStates.ATimer;
		if (timer != 0xFF)
		{
			if ((timer != 0))
			{
				keyStates.ATimer--;
			}
		}
	}
	if (oldValue.bit1 != newValue.bit1)
		{
		if (newValue.bit1 != 0)
		{
			keyStates.BTimer = DEFAULTDEADTIME;
		}
		else
		{
			keyStates.BTimer = 0;
			keyStates.IsBIgnored = 0;
		}
	}
	else if (newValue.bit1 != 0)
	{
		u8 timer = keyStates.BTimer;
		if (timer != 0xFF)
		{
			if ((timer != 0))
			{
				keyStates.BTimer--;
			}
		}
	}
	if (oldValue.bit2 != newValue.bit2)
		{
		if (newValue.bit2 != 0)
		{
			keyStates.SelectTimer = DEFAULTDEADTIME;
		}
		else
		{
			keyStates.SelectTimer = 0;
			keyStates.IsSelectIgnored = 0;
		}
	}
	else if (newValue.bit2 != 0)
	{
		u8 timer = keyStates.SelectTimer;
		if (timer != 0xFF)
		{
			if ((timer != 0))
			{
				keyStates.SelectTimer--;
			}
		}
	}
	if (oldValue.bit3 != newValue.bit3)
	{
		if (newValue.bit3 != 0)
		{
			keyStates.StartTimer = DEFAULTDEADTIME;
		}
		else
		{
			keyStates.StartTimer = 0;
			keyStates.IsStartIgnored = 0;
		}
	}
	else if (newValue.bit3 != 0)
	{
		u8 timer = keyStates.StartTimer;
		if (timer != 0xFF)
		{
			if ((timer != 0))
			{
				keyStates.StartTimer--;
			}
		}
	}
	if (oldValue.bit4 != newValue.bit4)
	{
		if (newValue.bit4 != 0)
		{
			keyStates.RightTimer = DEFAULTDEADTIME;
		}
		else
		{
			keyStates.RightTimer = 0;
			keyStates.IsRightIgnored = 0;
		}
	}
	else if (newValue.bit4 != 0)
	{
		u8 timer = keyStates.RightTimer;
		if (timer != 0xFF)
		{
			if ((timer != 0))
			{
				keyStates.RightTimer--;
			}
			else
			{
				keyStates.IsRightIgnored = 0;
			}
		}
	}
	if (oldValue.bit5 != newValue.bit5)
	{
		if (newValue.bit5 != 0)
		{
			keyStates.LeftTimer = DEFAULTDEADTIME;
		}
		else
		{
			keyStates.LeftTimer = 0;
			keyStates.IsLeftIgnored = 0;
		}
	}
	else if (newValue.bit5 != 0)
	{
		u8 timer = keyStates.LeftTimer;
		if (timer != 0xFF)
		{
			if ((timer != 0))
			{
				keyStates.LeftTimer--;
			}
			else
			{
				keyStates.IsLeftIgnored = 0;
			}
		}
	}
	if (oldValue.bit6 != newValue.bit6)
	{
		if (newValue.bit6 != 0)
		{
			keyStates.UpTimer = DEFAULTDEADTIME;
		}
		else
		{
			keyStates.UpTimer = 0;
			keyStates.IsUpIgnored = 0;
		}
	}
	else if (newValue.bit6 != 0)
	{
		u8 timer = keyStates.UpTimer;
		if (timer != 0xFF)
		{
			if ((timer != 0))
			{
				keyStates.UpTimer--;
			}
			else
			{
				keyStates.IsUpIgnored = 0;
			}
		}
	}
	if (oldValue.bit7 != newValue.bit7)
	{
		if (newValue.bit7 != 0)
		{
			keyStates.DownTimer = DEFAULTDEADTIME;
		}
		else
		{
			keyStates.DownTimer = 0;
			keyStates.IsDownIgnored = 0;
		}
	}
	else if (newValue.bit7 != 0)
	{
		u8 timer = keyStates.DownTimer;
		if (timer != 0xFF)
		{
			if ((timer != 0))
			{
				keyStates.DownTimer--;
			}
			else
			{
				keyStates.IsDownIgnored = 0;
			}
		}
	}
	if (oldValue.bit8 != newValue.bit8)
	{
		if (newValue.bit8 != 0)
		{
			keyStates.RBTimer = DEFAULTDEADTIME;
		}
		else
		{
			keyStates.RBTimer = 0;
			keyStates.IsRBIgnored = 0;
		}
	}
	else if (newValue.bit8 != 0)
	{
		u8 timer = keyStates.RBTimer;
		if (timer != 0xFF)
		{
			if ((timer != 0))
			{
				keyStates.RBTimer--;
			}
		}
	}
	if (oldValue.bit9 != newValue.bit9)
	{
		if (newValue.bit9 != 0)
		{
			keyStates.LBTimer = DEFAULTDEADTIME;
		}
		else
		{
			keyStates.LBTimer = 0;
			keyStates.IsLBIgnored = 0;
		}
	}
	else if (newValue.bit9 != 0)
	{
		u8 timer = keyStates.LBTimer;
		if (timer != 0xFF)
		{
			if ((timer != 0))
			{
				keyStates.LBTimer--;
			}
		}
	}
}
