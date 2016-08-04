/*
 * StartMenuInputEventHandler.cpp
 *
 *  Created on: 17 Jul 2015
 *      Author: Jamie
 */

#include "Input/Menus/StartMenuInputEventHandler.h"
#include "Input/InputManager.h"
#include "Input/Overworld/OverworldInputEventHandler.h"
#include "Input/DoNothingInputEventHandler.h"
#include "Core.h"
#include "Text.h"
#include "Tasks.h"
#include "LibraryHeaders/liboverworldscripts.h"
#include "Callbacks.h"

using namespace Text;
using namespace Core;
using namespace Core::Data;

namespace Input
{
	void StartSaveFunction(void);
	void CloseMenuFunction(void);

	TEXT_LOCATION ALIGN(1) char StartMenuInputEventHandler::nameString[] = { 0xFB, 0x10, '\0' };
	TEXT_LOCATION ALIGN(4) StringAndFunctionPointerStruct StartMenuInputEventHandler::baseMenuOptions[NumOptions] = {
			{ "Bag", NULL },
			{ (char*)&nameString, NULL },
			{ "Save", &StartSaveFunction },
			{ "Options", NULL },
			{ "Close", &CloseMenuFunction }
	};
	TEXT_LOCATION ALIGN(4) StringAndFunctionPointerWithFlagIDStruct StartMenuInputEventHandler::additionalMenuOptions[NumAdditionalOptions] = {
			{ "Pokédex", NULL, Flag_Pokedex, 0 },
			{ "Pokégear", NULL, Flag_Pokegear, 0 },
			{ "Pokémon", NULL, Flag_PokemonMenu, 0 }
	};

	void StartSaveFunction()
	{
		InputManager::SetEventHandler(new DoNothingInputEventHandler());
		Tasks::ScriptRunners::OverworldScriptRunner* runner = new Tasks::ScriptRunners::OverworldScriptRunner((u8*)&SaveScript);
		runner->SetCallback(new Callbacks::ReturnToMenuCallback());
	}

	void CloseMenuFunction()
	{
		InputManager::SetEventHandler(new OverworldInputEventHandler());
	}

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
			char* string = baseMenuOptions[i].string;
			u32 length = 0;
			if (i == 1)
			{
				string = TextFunctions::GetBufferAddress(0x10);
				length = TextFunctions::GetBufferLength(0x10);
			}
			TextFunctions::DrawString(string, 8, currentMenuPos << 4, length);
			menu[currentMenuPos] = baseMenuOptions[i].function;
			currentMenuPos++;
		}
		TextFunctions::DrawCharacter(ARROWCHAR, 0, menuPosition << 4);
		TextFunctions::DrawTextAreaToMap(0, Core::Rectangle(21, 1, 8, numMenuItems << 1));
		TextFunctions::DrawMenuBox(0, 20, 0, 10, (numMenuItems << 1) + 2);
	}

	StartMenuInputEventHandler::~StartMenuInputEventHandler()
	{
		// TODO Auto-generated destructor stub
		delete[] menu;
		TextFunctions::ClearTextAreaFromMap(0, 20, 0, 10, (numMenuItems + 1) << 1);
		TextFunctions::ClearTextTileArea();
	}

	bool StartMenuInputEventHandler::OnPressA()
	{
		if (!InputHandler::OnPressA())
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
		return false;
	}

	bool StartMenuInputEventHandler::OnPressB()
	{
		if (!InputHandler::OnPressB())
		{
			InputManager::SetEventHandler(new OverworldInputEventHandler());
		}
		return false;
	}

	bool StartMenuInputEventHandler::OnPressStart()
	{
		if (!InputHandler::OnPressStart())
		{
			InputManager::SetEventHandler(new OverworldInputEventHandler());
		}
		return false;
	}

	bool StartMenuInputEventHandler::OnPressUp()
	{
		if (!InputHandler::OnPressUp())
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
		return false;
	}

	bool StartMenuInputEventHandler::OnPressDown()
	{
		if (!InputHandler::OnPressDown())
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
		return false;
	}
}
