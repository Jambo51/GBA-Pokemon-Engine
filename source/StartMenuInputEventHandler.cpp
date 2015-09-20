/*
 * StartMenuInputEventHandler.cpp
 *
 *  Created on: 17 Jul 2015
 *      Author: Jamie
 */

#include "StartMenuInputEventHandler.h"
#include "InputHandler.h"
#include "OverworldInputEventHandler.h"
//#include "PauseMenuSwitchFunctions.h"
#include "DoNothingInputEventHandler.h"
#include "Flags.h"
#include "TextFunctions.h"
#include "Game.h"

TEXT_LOCATION ALIGN(1) char StartMenuInputEventHandler::nameString[] = { 0xFB, 0x10, '\0' };
TEXT_LOCATION ALIGN(4) StringAndFunctionPointerStruct StartMenuInputEventHandler::baseMenuOptions[NumOptions] = {
		{ "Bag", NULL },
		{ "Jambo51", NULL },
		{ "Save", NULL },
		{ "Options", NULL },
		{ "Close", NULL }
};
TEXT_LOCATION ALIGN(4) StringAndFunctionPointerWithFlagIDStruct StartMenuInputEventHandler::additionalMenuOptions[NumAdditionalOptions] = {
		{ "Pokédex", NULL, Flag_Pokedex, 0 },
		{ "Pokégear", NULL, Flag_Pokegear, 0 },
		{ "Pokémon", NULL, Flag_PokemonMenu, 0 }
};

StartMenuInputEventHandler::StartMenuInputEventHandler()
{
	numMenuItems = 0;
	for (u32 i = 0; i < NumAdditionalOptions; i++)
	{
		if (Flags::CheckFlag(additionalMenuOptions[i].flagID))
		{
			numMenuItems++;
		}
	}
	TextFunctions::SetTextColourFromInkColour(3);
	TextFunctions::ClearTextTileArea();
	TextFunctions::LoadPaletteAndTiles();
	numMenuItems += NumOptions;
	menuPosition = Game::GetMenuPosition();
	u32 currentMenuPos = 0;
	menu = new VoidFunctionPointerVoid[numMenuItems];
	for (u32 i = 0; i < NumAdditionalOptions; i++)
	{
		if (Flags::CheckFlag(additionalMenuOptions[i].flagID))
		{
			TextFunctions::DrawString(additionalMenuOptions[i].string, 8, currentMenuPos << 4);
			menu[currentMenuPos] = additionalMenuOptions[i].function;
			currentMenuPos++;
		}
	}
	for (u32 i = 0; i < NumOptions; i++)
	{
		TextFunctions::DrawString(baseMenuOptions[i].string, 8, currentMenuPos << 4);
		menu[currentMenuPos] = baseMenuOptions[i].function;
		currentMenuPos++;
	}
	TextFunctions::DrawCharacter(ARROWCHAR, 0, menuPosition << 4);
	TextFunctions::DrawTextAreaToMap(0, 21, 1, 8, numMenuItems << 1);
	TextFunctions::DrawMenuBoxTop(0, 20, 0, 10);
	TextFunctions::DrawMenuBoxBottom(0, 20, (numMenuItems << 1) + 1, 10);
	TextFunctions::DrawMenuBoxSides(0, 20, 1, (numMenuItems << 1), 10);
}

StartMenuInputEventHandler::~StartMenuInputEventHandler()
{
	// TODO Auto-generated destructor stub
	delete[] menu;
	TextFunctions::ClearTextAreaFromMap(0, 20, 0, 10, (numMenuItems + 1) << 1);
	TextFunctions::ClearTextTileArea();
}

void StartMenuInputEventHandler::OnPressA()
{
	InputEventHandler::OnPressA();
	if (!keyHeld[Key_A])
	{
		if (menu[menuPosition])
		{
			// Transitions need to be handled by the function
			// This includes changing input handler and game screen
			// mode - it is not within the remit of THIS input handler
			// to switch game modes due to the way the menu works
			menu[menuPosition]();
		}
	}
}

void StartMenuInputEventHandler::OnPressB()
{
	InputEventHandler::OnPressB();
	if (!keyHeld[Key_B])
	{
		InputHandler::SetEventHandler(new OverworldInputEventHandler());
	}
}

void StartMenuInputEventHandler::OnPressStart()
{
	InputEventHandler::OnPressStart();
	if (!keyHeld[Key_Start])
	{
		InputHandler::SetEventHandler(new OverworldInputEventHandler());
	}
}

void StartMenuInputEventHandler::OnPressUp()
{
	InputEventHandler::OnPressUp();
	if (!keyHeld[Key_Up])
	{
		TextFunctions::ClearTile(0, menuPosition);
		if (menuPosition > 0)
		{
			menuPosition--;
		}
		else
		{
			menuPosition = numMenuItems - 1;
		}
		TextFunctions::DrawCharacter(ARROWCHAR, 0, menuPosition << 4);
		Game::SetMenuPosition(menuPosition);
	}
}

void StartMenuInputEventHandler::OnPressDown()
{
	InputEventHandler::OnPressDown();
	if (!keyHeld[Key_Down])
	{
		TextFunctions::ClearTile(0, menuPosition);
		if (menuPosition < numMenuItems - 1)
		{
			menuPosition++;
		}
		else
		{
			menuPosition = 0;
		}
		TextFunctions::DrawCharacter(ARROWCHAR, 0, menuPosition << 4);
		Game::SetMenuPosition(menuPosition);
	}
}
