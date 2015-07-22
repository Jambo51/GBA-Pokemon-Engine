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

TEXT_LOCATION ALIGN(1) char playerNameOption[] = { 0xFB, 0x10, '\0' };
TEXT_LOCATION ALIGN(4) StringAndFunctionPointerStruct StartMenuInputEventHandler::baseMenuOptions[NumOptions] = {
		{ "Bag", NULL },
		{ (char*)&playerNameOption, NULL },
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
	// TODO Auto-generated constructor stub
	numMenuItems = 0;
	for (u32 i = 0; i < NumAdditionalOptions; i++)
	{
		if (Flags::CheckFlag(additionalMenuOptions[i].flagID))
		{
			numMenuItems++;
		}
	}
	numMenuItems += NumOptions;
	u32 currentMenuPos = 0;
	menu = new VoidFunctionPointerVoid[numMenuItems];
	for (u32 i = 0; i < NumAdditionalOptions; i++)
	{
		if (Flags::CheckFlag(additionalMenuOptions[i].flagID))
		{
			menu[currentMenuPos] = additionalMenuOptions[i].function;
			currentMenuPos++;
		}
	}
	for (u32 i = 0; i < NumOptions; i++)
	{
		menu[currentMenuPos] = baseMenuOptions[i].function;
		currentMenuPos++;
	}
}

StartMenuInputEventHandler::~StartMenuInputEventHandler()
{
	// TODO Auto-generated destructor stub
	delete[] menu;
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
		if (menuPosition > 0)
		{
			menuPosition--;
		}
		else
		{
			menuPosition = numMenuItems - 1;
		}
	}
}

void StartMenuInputEventHandler::OnPressDown()
{
	InputEventHandler::OnPressDown();
	if (!keyHeld[Key_Down])
	{
		if (menuPosition < numMenuItems - 1)
		{
			menuPosition++;
		}
		else
		{
			menuPosition = 0;
		}
	}
}
