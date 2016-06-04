/*
 * NewGameScreen.cpp
 *
 *  Created on: 25 May 2015
 *      Author: Jamie
 */

#include "Scenes/Menus/NewGameScreen.h"

#include "../../../include/Scenes/Misc/WelcomeToTheWorldOfPokemon.h"
#include "Scenes/Menus/TitleScreen.h"
#include "Audio/SoundEngine.h"
#include "Scenes/Menus/OptionsScreen.h"
#include "Scenes/SceneManager.h"
#include "Core/Palettes.h"
#include "Input/InputManager.h"
#include "Input/Menus/NewGameScreenInputEventHandler.h"
#include "Core/BackgroundFunctions.h"
#include "Text/TextFunctions.h"

using namespace Core;
using namespace Input;
using namespace Scenes::Misc;
using namespace Scenes::Menus;
using namespace Audio;
using namespace Text;

namespace Scenes
{

	inline void RedrawWindow(u32 menuPosition)
	{
		switch (menuPosition)
		{
			case 0:
				BackgroundFunctions::SetWindowPosition(0, Core::Rectangle(0x1A, 0x1, 0xD6 - 0x1A, 0x1E));
				break;
			case 1:
				BackgroundFunctions::SetWindowPosition(0, Core::Rectangle(0x1A, 0x21, 0xD6 - 0x1A, 0x1E));
				break;
		}
	}

	NewGameScreen::NewGameScreen(u32 previousMenuPosition)
	{
		menuPosition = previousMenuPosition;
		BackgroundFunctions::CreateWindow(0, Core::Rectangle());
		BackgroundFunctions::ClearAllBackgrounds();
		u16* newPalette = new u16[512];
		memset32(newPalette, 0, 0x100);
		Colour c = { 0 };
		c.colour = 0x7E51;
		Palettes::SetColour(0, 0, c, newPalette);
		TextFunctions::LoadPaletteAndTiles(false, newPalette);
		Palettes::FadeToPalette(newPalette, true, HalfSecond, true, false);
		RedrawWindow(menuPosition);
		for (u32 i = 0; i < 5; i++)
		{
			BackgroundFunctions::EnableWindowEffect(0, i);
		}
		BackgroundFunctions::EnableWindowEffect(2, 0);
		BackgroundFunctions::EnableWindowEffect(3, 5);
		BackgroundFunctions::EnableWindowEffect(3, 0);
		BackgroundFunctions::SetAllFirstTargetPixel(0);
		BackgroundFunctions::SetWindowBrightnessCoefficient(7);
		BackgroundFunctions::SetEVAAlphaBlend(0);
		BackgroundFunctions::SetEVBAlphaBlend(0);
		TextFunctions::ClearTextTileArea();
		TextFunctions::SetTextPaletteSlot(14);
		TextFunctions::SetTextColour(2, 3, 0);
		TextFunctions::DrawString("New Game", 3, 0);
		TextFunctions::DrawString("Options", 3, 16);
		TextFunctions::DrawTextAreaToMap(0, Core::Rectangle(4, 1, 22, 2));
		TextFunctions::DrawTextAreaToMap(0, Core::Rectangle(4, 5, 22, 2), Core::Vector2D(0, 2));
		TextFunctions::DrawMenuBox(0, 3, 0, 24, 4);
		TextFunctions::DrawMenuBox(0, 3, 4, 24, 4);
		exitContext = 0;
	}

	NewGameScreen::~NewGameScreen()
	{

	}

	void NewGameScreen::Update()
	{

	}

	void NewGameScreen::OnEnter()
	{
		SoundEngine::PlaySongIfNotStarted(Song_ContinueMenuTheme, 0);
		InputManager::SetEventHandler(new NewGameScreenInputEventHandler());
	}

	void NewGameScreen::OnExit()
	{
		BackgroundFunctions::EraseWindow(0);
		BackgroundFunctions::ClearAllFirstTargetPixel(0);
		BackgroundFunctions::SetWindowBrightnessCoefficient(0);
		TextFunctions::ClearTextTileArea();
		for (u32 i = 0; i < 5; i++)
		{
			BackgroundFunctions::DisableWindowEffect(0, i);
		}
		BackgroundFunctions::DisableWindowEffect(2, 0);
		BackgroundFunctions::DisableWindowEffect(3, 5);
		BackgroundFunctions::DisableWindowEffect(3, 0);
		switch (exitContext)
		{
			case 1:
				// Press B to return to Title Screen
				SceneManager::SetScene(new TitleScreen());
				break;
			case 0:
			{
				Scene* scene = 0;
				if (menuPosition == 0)
				{
					scene = new WelcomeToTheWorldOfPokemon();
				}
				else
				{
					scene = new OptionsScreen(1, menuPosition);
				}
				SceneManager::SetScene(scene);
				break;
			}
			default:
				break;

		}
	}

	void NewGameScreen::IncrementMenuPosition()
	{
		if (menuPosition < 1)
		{
			menuPosition++;
		}
		RedrawWindow(menuPosition);
	}

	void NewGameScreen::DecrementMenuPosition()
	{
		if (menuPosition > 0)
		{
			menuPosition--;
		}
		RedrawWindow(menuPosition);
	}

	bool NewGameScreen::SetExitContext(u32 contextGetType)
	{
		if (contextGetType == 0)
		{
			exitContext = contextGetType;
			if (menuPosition == 1)
			{
				return false;
			}
		}
		else
		{
			exitContext = 1;
		}
		return true;
	}
}
