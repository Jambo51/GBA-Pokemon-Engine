/*
 * LoadGameScreen.cpp
 *
 *  Created on: 25 May 2015
 *      Author: Jamie
 */

#include "Scenes/Menus/LoadGameScreen.h"
#include "Scenes/Menus/TitleScreen.h"
#include "Scenes/Overworld/PrimaryOverworld.h"
#include "Audio/SoundEngine.h"
#include "Scenes/Menus/OptionsScreen.h"
#include "Scenes/SceneManager.h"
#include "Core/Palettes.h"
#include "Input/InputManager.h"
#include "Input/Menus/LoadGameScreenInputEventHandler.h"
#include "Core/BackgroundFunctions.h"
#include "Text/TextFunctions.h"
#include "Core/Game.h"
#include "Core/Data/Flags.h"
#include "Scenes/Menus/Pokedex.h"
#include "Scenes/Misc/WelcomeToTheWorldOfPokemon.h"

using namespace Core;
using namespace Core::Data;
using namespace Input;
using namespace Scenes::Overworld;
using namespace Scenes::Menus;
using namespace Scenes::Misc;
using namespace Audio;
using namespace Text;

namespace Scenes
{

	inline void RedrawWindow(u32 menuPosition)
	{
		switch (menuPosition)
		{
			case 0:
				BackgroundFunctions::SetWindowPosition(0, Core::Rectangle(0x1A, 0x1, 0xD6 - 0x1A, 0x5E));
				break;
			case 1:
				BackgroundFunctions::SetWindowPosition(0, Core::Rectangle(0x1A, 0x61, 0xD6 - 0x1A, 0x1E));
				break;
			case 2:
				BackgroundFunctions::SetWindowPosition(0, Core::Rectangle(0x1A, 0x81, 0xD6 - 0x1A, 0x1E));
				break;
		}
	}

	LoadGameScreen::LoadGameScreen(u32 previousMenuPosition)
	{
		menuPosition = previousMenuPosition;
		BackgroundFunctions::CreateWindow(0, Core::Rectangle());
		Flags::SetFlag(Flag_Pokedex);
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
		TextFunctions::ClearTextTileArea();
		TextFunctions::SetTextPaletteSlot(14);
		TextFunctions::SetTextColour(2, 3, 0);
		BackgroundFunctions::SetEVAAlphaBlend(0);
		BackgroundFunctions::SetEVBAlphaBlend(0);
		u32 height = 0;
		TextFunctions::DrawString("Continue", 3, height);
		height += 0x10;
		TextFunctions::DrawString("Player:", 3, height);
		height += 0x10;
		TextFunctions::DrawString("Play Time:", 3, height);
		height += 0x10;
		if (Flags::CheckFlag(Flag_Pokedex))
		{
			TextFunctions::DrawString("Pokédex:", 3, height);
			height += 0x10;
		}
		TextFunctions::DrawString("Badges:", 3, height);
		TextFunctions::DrawString("New Game", 3, 0x50);
		TextFunctions::DrawString("Options", 3, 0x60);
		const Player &player = Game::GetPlayer();
		if (player.gender)
		{
			TextFunctions::SetTextColour(4, 3, 0);
		}
		else
		{
			TextFunctions::SetTextColour(8, 3, 0);
		}
		height = 0x10;
		TextFunctions::DrawString(TextFunctions::playerNameLoc, 70, height);
		height += 0x10;
		String* s = String::ToString(player.hoursPlayed);
		s->Append(':');
		String* s2 = String::ToString(player.minutesPlayed, 2);
		s->Append(s2);
		delete s2;
		TextFunctions::DrawString(*s, 70, height);
		delete s;
		height += 0x10;
		if (Flags::CheckFlag(Flag_Pokedex))
		{
			if (Flags::CheckFlag(Flag_NationalDex))
			{
				s = String::ToString(Pokedex::GetNationalCaught());
			}
			else
			{
				s = String::ToString(Pokedex::GetRegionalCaught());
			}
			TextFunctions::DrawString(*s, 70, height);
			delete s;
			height += 0x10;
		}
		s = String::ToString(Flags::CountAcquiredBadges());
		TextFunctions::DrawString(*s, 70, height);
		delete s;
		TextFunctions::DrawTextAreaToMap(0, Core::Rectangle(4, 1, 22, 10));
		TextFunctions::DrawTextAreaToMap(0, Core::Rectangle(4, 13, 22, 2), Core::Vector2D(0, 10));
		TextFunctions::DrawTextAreaToMap(0, Core::Rectangle(4, 17, 22, 2), Core::Vector2D(0, 12));
		TextFunctions::DrawMenuBox(0, 3, 0, 24, 12);
		TextFunctions::DrawMenuBox(0, 3, 12, 24, 4);
		TextFunctions::DrawMenuBox(0, 3, 16, 24, 4);
		exitContext = 0;
	}

	LoadGameScreen::~LoadGameScreen()
	{

	}

	void LoadGameScreen::Update()
	{

	}

	void LoadGameScreen::OnEnter()
	{
		SoundEngine::PlaySongIfNotStarted(Song_ContinueMenuTheme, 0);
		InputManager::SetEventHandler(new LoadGameScreenInputEventHandler());
	}

	void LoadGameScreen::OnExit()
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
				// Load Game
				scene = new PrimaryOverworld();
			}
			else if (menuPosition == 1)
			{
				// New Game
				// Not implemented, so loads overworld right now
				scene = new WelcomeToTheWorldOfPokemon();
			}
			else
			{
				scene = new OptionsScreen(0, menuPosition);
			}
			SceneManager::SetScene(scene);
			break;
		}
		default:
			break;

		}
	}

	bool LoadGameScreen::SetExitContext(u32 contextGetType)
	{
		if (contextGetType == 0)
		{
			exitContext = contextGetType;
			if (menuPosition == 2)
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

	void LoadGameScreen::IncrementMenuPosition()
	{
		if (menuPosition < 2)
		{
			menuPosition++;
		}
		RedrawWindow(menuPosition);
	}

	void LoadGameScreen::DecrementMenuPosition()
	{
		if (menuPosition > 0)
		{
			menuPosition--;
		}
		RedrawWindow(menuPosition);
	}
}
