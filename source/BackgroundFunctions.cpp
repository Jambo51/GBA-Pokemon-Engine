/*
 * BackgroundFunctions.c
 *
 *  Created on: Aug 20, 2014
 *      Author: Gamer2020
 */

#include "GlobalDefinitions.h"
#include "BackgroundFunctions.h"
#include "Game.h"

#define BG_PRIORITY_THREE 3
#define BG_PRIORITY_TWO 2
#define BG_PRIORITY_ONE 1
#define BG_PRIORITY_ZERO 0
#define MAIN_BG_SETTINGS (BG_CBB(0) | BG_4BPP | BG_REG_32x32 | BG_MOSAIC)
#define TEXT_SETTINGS (BG_CBB(2) | BG_4BPP | BG_REG_32x32 | BG_MOSAIC)
#define LAYER0DEFAULT 31
#define LAYER1DEFAULT 29
#define LAYER2DEFAULT 28
#define LAYER3DEFAULT 30

void BackgroundFunctions::SetBackgroundsToDefault()
{
	SetLayer(0, LAYER0DEFAULT);
	SetLayer(1, LAYER1DEFAULT);
	SetLayer(2, LAYER2DEFAULT);
	SetLayer(3, LAYER3DEFAULT);
	REG_DISPCNT = DCNT_MODE0 | DCNT_BG0 | DCNT_BG1 | DCNT_BG2 | DCNT_BG3 | DCNT_OBJ_1D | DCNT_OBJ;
}

void BackgroundFunctions::ClearBackground(u32 blockID)
{
	void* loc = (void*)(0x06000000 + (0x800 * blockID));
	memset32(loc, 0, 0x200);
}

void BackgroundFunctions::SetLayer(u32 layerID, u32 layerPos, bool isText)
{
	Game::SetLayer(layerID, layerPos);
	switch (layerID)
	{
		case 0:
			if (isText)
			{
				REG_BG0CNT = TEXT_SETTINGS | BG_SBB(layerPos) | BG_PRIORITY_ZERO;
			}
			else
			{
				REG_BG0CNT = MAIN_BG_SETTINGS | BG_SBB(layerPos) | BG_PRIORITY_ZERO;
			}
			break;
		case 1:
			REG_BG1CNT = MAIN_BG_SETTINGS | BG_SBB(layerPos) | BG_PRIORITY_ONE;
			break;
		case 2:
			REG_BG2CNT = MAIN_BG_SETTINGS | BG_SBB(layerPos) | BG_PRIORITY_TWO;
			break;
		case 3:
			REG_BG3CNT = MAIN_BG_SETTINGS | BG_SBB(layerPos) | BG_PRIORITY_THREE;
			break;
		default:
			break;
	}
}

void BackgroundFunctions::CreateWindow(u32 windowID, const Rectangle &dimensions)
{
	CreateWindow(windowID, dimensions.GetUpperLeft(), dimensions.GetLowerRight());
}

void BackgroundFunctions::CreateWindow(u32 windowID, const Vector2D &topLeft, const Vector2D &bottomRight)
{
	if (windowID == 0)
	{
		REG_DISPCNT |= DCNT_WIN0;
		REG_WIN0L = topLeft.GetX();
		REG_WIN0R = bottomRight.GetX();
		REG_WIN0T = topLeft.GetY();
		REG_WIN0B = bottomRight.GetY();
	}
	else if (windowID == 1)
	{
		REG_DISPCNT |= DCNT_WIN1;
		REG_WIN1L = topLeft.GetX();
		REG_WIN1R = bottomRight.GetX();
		REG_WIN1T = topLeft.GetY();
		REG_WIN1B = bottomRight.GetY();
	}
}

void BackgroundFunctions::EnableWindowEffect(u32 windowID, u32 effectID)
{
	if (effectID < 6)
	{
		if (windowID == 0)
		{
			REG_WIN0CNT |= 1 << effectID;
		}
		else if (windowID == 1)
		{
			REG_WIN1CNT |= 1 << effectID;
		}
		else if (windowID == 2)
		{
			REG_WINOBJCNT |= 1 << effectID;
		}
		else if (windowID == 3)
		{
			REG_WINOUTCNT |= 1 << effectID;
		}
	}
}

void BackgroundFunctions::DisableWindowEffect(u32 windowID, u32 effectID)
{
	if (effectID < 6)
	{
		if (windowID == 0)
		{
			REG_WIN0CNT &= ~(1 << effectID);
		}
		else if (windowID == 1)
		{
			REG_WIN1CNT &= ~(1 << effectID);
		}
		else if (windowID == 2)
		{
			REG_WINOBJCNT &= ~(1 << effectID);
		}
		else if (windowID == 3)
		{
			REG_WINOUTCNT &= ~(1 << effectID);
		}
	}
}

void BackgroundFunctions::EraseWindow(u32 windowID)
{
	if (windowID == 0)
	{
		REG_DISPCNT &= ~DCNT_WIN0;
		REG_WIN0H = 0;
		REG_WIN0V = 0;
		REG_WIN0CNT = 0;
	}
	else if (windowID == 1)
	{
		REG_DISPCNT &= ~DCNT_WIN1;
		REG_WIN1H = 0;
		REG_WIN1V = 0;
		REG_WIN1CNT = 0;
	}
	else if (windowID == 2)
	{
		REG_WINOBJCNT = 0;
	}
	else if (windowID == 3)
	{
		REG_WINOUTCNT = 0;
	}
}

void BackgroundFunctions::SetWindowPosition(u32 windowID, const Rectangle &newPosition)
{
	SetWindowPosition(windowID, newPosition.GetUpperLeft(), newPosition.GetLowerRight());
}

void BackgroundFunctions::SetWindowPosition(u32 windowID, const Vector2D &newUpperLeft, const Vector2D &newLowerRight)
{
	if (windowID == 0)
	{
		REG_WIN0L = newUpperLeft.GetX();
		REG_WIN0T = newUpperLeft.GetY();
		REG_WIN0R = newLowerRight.GetX();
		REG_WIN0B = newLowerRight.GetY();
	}
	else if (windowID == 1)
	{
		REG_WIN1L = newUpperLeft.GetX();
		REG_WIN1T = newUpperLeft.GetY();
		REG_WIN1R = newLowerRight.GetX();
		REG_WIN1B = newLowerRight.GetY();
	}
}
