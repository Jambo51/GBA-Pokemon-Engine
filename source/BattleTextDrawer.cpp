/*
 * BattleTextDrawer.cpp
 *
 *  Created on: 4 Aug 2015
 *      Author: Jamie
 */

#include "BattleTextDrawer.h"
#include "TextFunctions.h"

BattleTextDrawer::BattleTextDrawer(char* newString, u8 x, u8 y, u32 speed, void (*endFunction)(u32), u32 functionData, u32 inkColour) : TextDrawer(newString, x, y, speed, endFunction, inkColour)
{
	// TODO Auto-generated constructor stub

}

BattleTextDrawer::~BattleTextDrawer()
{
	// TODO Auto-generated destructor stub
	if (string)
	{
		delete[] string;
	}
}

void BattleTextDrawer::Initialise()
{
	TextFunctions::LoadPaletteAndTiles(true);
	TextFunctions::DrawTextAreaToMap(0, 1, 15, 28, 4);
}
