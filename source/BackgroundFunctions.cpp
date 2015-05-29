/*
 * BackgroundFunctions.c
 *
 *  Created on: Aug 20, 2014
 *      Author: Gamer2020
 */

#include "GlobalDefinitions.h"
#include "BackgroundFunctions.h"

#define BG_PRIORITY_THREE 3
#define BG_PRIORITY_TWO 2
#define BG_PRIORITY_ONE 1
#define BG_PRIORITY_ZERO 0
#define MAIN_BG_SETTINGS (BG_CBB(0) | BG_4BPP | BG_REG_32x32 | BG_MOSAIC)

void BackgroundFunctions::SetBackgroundsToDefault()
{
	REG_BG0CNT = MAIN_BG_SETTINGS | BG_SBB(31) | BG_PRIORITY_ZERO;
	REG_BG1CNT = MAIN_BG_SETTINGS | BG_SBB(29) | BG_PRIORITY_ONE;
	REG_BG2CNT = MAIN_BG_SETTINGS | BG_SBB(28) | BG_PRIORITY_TWO;
	REG_BG3CNT = MAIN_BG_SETTINGS | BG_SBB(30) | BG_PRIORITY_THREE;
	REG_DISPCNT = DCNT_MODE0 | DCNT_BG0 | DCNT_BG1 | DCNT_BG2 | DCNT_BG3 | DCNT_OBJ_1D | DCNT_OBJ;
}

void BackgroundFunctions::ClearBackground(u32 blockID)
{
	void* loc = (void*)(0x06000000 + (0x800 * blockID));
	memset32(loc, 0, 0x200);
}
