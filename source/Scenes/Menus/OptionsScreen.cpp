/*
 * OptionsScreen.cpp
 *
 *  Created on: 26 May 2015
 *      Author: Jamie
 */

#include "Scenes/Menus/OptionsScreen.h"
#include "Scenes/SceneManager.h"
#include "Core/Palettes.h"
#include "Core/Game.h"
#include "Core/BackgroundFunctions.h"
#include "Input/InputManager.h"
#include "Input/Menus/OptionsInputEventHandler.h"
#include "Input/DoNothingInputEventHandler.h"
#include "Scenes/Menus/LoadGameScreen.h"
#include "Scenes/Menus/NewGameScreen.h"
#include "Scenes/Overworld/PrimaryOverworld.h"
#include "Text/TextFunctions.h"

using namespace Input;
using namespace Core;
using namespace Scenes::Overworld;
using namespace Text;

namespace Scenes
{
	namespace Menus
	{

		TEXT_LOCATION char* OptionsScreen::textSpeedStrings[] = { "Slow", "Normal", "Fast" };
		TEXT_LOCATION char* OptionsScreen::battleAnimationStrings[] = { "Off", "On" };
		TEXT_LOCATION char* OptionsScreen::battleSwitchingStrings[] = { "Disallowed", "Allowed" };
		TEXT_LOCATION char* OptionsScreen::soundStrings[] = { "Mono", "Stereo" };
		TEXT_LOCATION char* OptionsScreen::unitsStrings[] = { "Metric", "Imperial" };


		inline void RedrawWindow(u32 menuPosition)
		{
			BackgroundFunctions::SetWindowPosition(0, Core::Rectangle(0xE, 0x28 + (0x10 * menuPosition), 0xE2 - 0xE, 0x10));
		}

		OptionsScreen::OptionsScreen(u32 exitContext, u32 previousMenuPosition)
		{
			// TODO Auto-generated constructor stub
			this->previousMenuPosition = previousMenuPosition;
			this->exitContext = exitContext;
			BackgroundFunctions::ClearAllBackgrounds();
			BackgroundFunctions::EraseWindow(0);
			InputManager::SetEventHandler(new DoNothingInputEventHandler());
			BackgroundFunctions::CreateWindow(0, Core::Rectangle());
			RedrawWindow(menuPosition);
			for (u32 i = 0; i < 5; i++)
			{
				BackgroundFunctions::EnableWindowEffect(0, i);
			}
			BackgroundFunctions::EnableWindowEffect(2, 0);
			BackgroundFunctions::EnableWindowEffect(3, 5);
			BackgroundFunctions::EnableWindowEffect(3, 0);
			BackgroundFunctions::SetFirstTargetPixel(0, 0);
			BackgroundFunctions::SetFirstTargetPixel(6, 0);
			BackgroundFunctions::SetFirstTargetPixel(7, 0);
			BackgroundFunctions::SetEVAAlphaBlend(0x10);
			BackgroundFunctions::SetWindowBrightnessCoefficient(2);
			{
				SmartArrayPointer<u16> newPalette = new u16[512];
				newPalette.Clear(512);
				TextFunctions::LoadPaletteAndTiles(false, newPalette);
				Palettes::FadeToPalette(newPalette, true, HalfSecond, true, false);
			}
			const Options &options = Game::GetConstOptions();
			optionValues[0] = options.textSpeed;
			optionValues[1] = options.playAnimations;
			optionValues[2] = options.battleSwitchStyle;
			optionValues[3] = options.stereoSound;
			optionValues[4] = options.useImperialUnits;
			optionValues[5] = options.boxOutline;
			TextFunctions::DrawMenuBox(0, 1, 0, 28, 4);
			TextFunctions::DrawMenuBox(0, 1, 4, 28, 16);
			TextFunctions::SetTextPaletteSlot(14);
			TextFunctions::SetTextColour(2, 3, 0);
			TextFunctions::DrawString("Options", 8, 0);
			TextFunctions::DrawString("Text Speed", 8, 16);
			TextFunctions::DrawString("Battle Animations", 8, 32);
			TextFunctions::DrawString("Battle Switching", 8, 48);
			TextFunctions::DrawString("Sound", 8, 64);
			TextFunctions::DrawString("Units", 8, 80);
			TextFunctions::DrawString("Text Frame", 8, 96);
			TextFunctions::DrawString("Save Changes", 8, 112);
			TextFunctions::SetTextColour(5, 4, 0);
			TextFunctions::DrawString(textSpeedStrings[options.textSpeed], 150, 16);
			TextFunctions::DrawString(battleAnimationStrings[options.playAnimations], 150, 32);
			TextFunctions::DrawString(battleSwitchingStrings[options.battleSwitchStyle], 150, 48);
			TextFunctions::DrawString(soundStrings[options.stereoSound], 150, 64);
			TextFunctions::DrawString(unitsStrings[options.useImperialUnits], 150, 80);
			String* s = String::ToString(options.boxOutline + 1, 2);
			s->Prepend("Frame ");
			TextFunctions::DrawString(*s, 150, 96);
			delete s;
			TextFunctions::DrawTextAreaToMap(0, Core::Rectangle(2, 1, 26, 2));
			TextFunctions::DrawTextAreaToMap(0, Core::Rectangle(2, 5, 26, 14), Core::Vector2D(0, 2));
		}

		OptionsScreen::~OptionsScreen()
		{
			// TODO Auto-generated destructor stub
		}

		void OptionsScreen::Update()
		{

		}

		void OptionsScreen::OnEnter()
		{
			InputManager::SetEventHandler(new OptionsInputEventHandler());
			menuPosition = 0;
		}

		void OptionsScreen::OnExit()
		{
			Scene* scene = 0;
			switch (exitContext)
			{
				case 0:
					// back to load game menu
					scene = new LoadGameScreen(previousMenuPosition);
					break;
				case 1:
					scene = new NewGameScreen(previousMenuPosition);
					break;
				default:
					// else assume overworld
					scene = new PrimaryOverworld();
					break;
			}
			SceneManager::SetScene(scene);
		}

		void OptionsScreen::Save()
		{
			Options &opts = Game::GetOptions();
			opts.options = 0;
			opts.optionsSet = 1;
			opts.textSpeed = optionValues[0];
			opts.playAnimations = optionValues[1];
			opts.battleSwitchStyle = optionValues[2];
			opts.stereoSound = optionValues[3];
			opts.useImperialUnits = optionValues[4];
			opts.boxOutline = optionValues[5];
		}

		void OptionsScreen::IncrementMenuPosition()
		{
			if (menuPosition < 6)
			{
				menuPosition++;
			}
			RedrawWindow(menuPosition);
		}

		void OptionsScreen::DecrementMenuPosition()
		{
			if (menuPosition > 0)
			{
				menuPosition--;
			}
			RedrawWindow(menuPosition);
		}

		void OptionsScreen::IncrementValueAt()
		{
			switch (menuPosition)
			{
				case 0:
					if (optionValues[0] < 2)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						TextFunctions::DrawString(textSpeedStrings[optionValues[0]], 150, 16);
						optionValues[0]++;
						TextFunctions::SetTextColour(5, 4, 0);
						TextFunctions::DrawString(textSpeedStrings[optionValues[0]], 150, 16);
					}
					break;
				case 1:
					if (optionValues[1] < 1)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						TextFunctions::DrawString(battleAnimationStrings[optionValues[1]], 150, 32);
						optionValues[1]++;
						TextFunctions::SetTextColour(5, 4, 0);
						TextFunctions::DrawString(battleAnimationStrings[optionValues[1]], 150, 32);
					}
					break;
				case 2:
					if (optionValues[2] < 1)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						TextFunctions::DrawString(battleSwitchingStrings[optionValues[2]], 150, 48);
						optionValues[2]++;
						TextFunctions::SetTextColour(5, 4, 0);
						TextFunctions::DrawString(battleSwitchingStrings[optionValues[2]], 150, 48);
					}
					break;
				case 3:
					if (optionValues[3] < 1)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						TextFunctions::DrawString(soundStrings[optionValues[3]], 150, 64);
						optionValues[3]++;
						TextFunctions::SetTextColour(5, 4, 0);
						TextFunctions::DrawString(soundStrings[optionValues[3]], 150, 64);
					}
					break;
				case 4:
					if (optionValues[4] < 1)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						TextFunctions::DrawString(unitsStrings[optionValues[4]], 150, 80);
						optionValues[4]++;
						TextFunctions::SetTextColour(5, 4, 0);
						TextFunctions::DrawString(unitsStrings[optionValues[4]], 150, 80);
					}
					break;
				case 5:
					if (optionValues[5] < 15)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						String* s = String::ToString(optionValues[5] + 1, 2);
						s->Prepend("Frame ");
						TextFunctions::DrawString(*s, 150, 96);
						delete s;
						optionValues[5]++;
						TextFunctions::SetTextColour(5, 4, 0);
						s = String::ToString(optionValues[5] + 1, 2);
						s->Prepend("Frame ");
						TextFunctions::DrawString(*s, 150, 96);
						delete s;
					}
					break;
			}
		}

		void OptionsScreen::DecrementValueAt()
		{
			switch (menuPosition)
			{
				case 0:
					if (optionValues[0] > 0)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						TextFunctions::DrawString(textSpeedStrings[optionValues[0]], 150, 16);
						optionValues[0]--;
						TextFunctions::SetTextColour(5, 4, 0);
						TextFunctions::DrawString(textSpeedStrings[optionValues[0]], 150, 16);
					}
					break;
				case 1:
					if (optionValues[1] > 0)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						TextFunctions::DrawString(battleAnimationStrings[optionValues[1]], 150, 32);
						optionValues[1]--;
						TextFunctions::SetTextColour(5, 4, 0);
						TextFunctions::DrawString(battleAnimationStrings[optionValues[1]], 150, 32);
					}
					break;
				case 2:
					if (optionValues[2] > 0)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						TextFunctions::DrawString(battleSwitchingStrings[optionValues[2]], 150, 48);
						optionValues[2]--;
						TextFunctions::SetTextColour(5, 4, 0);
						TextFunctions::DrawString(battleSwitchingStrings[optionValues[2]], 150, 48);
					}
					break;
				case 3:
					if (optionValues[3] > 0)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						TextFunctions::DrawString(soundStrings[optionValues[3]], 150, 64);
						optionValues[3]--;
						TextFunctions::SetTextColour(5, 4, 0);
						TextFunctions::DrawString(soundStrings[optionValues[3]], 150, 64);
					}
					break;
				case 4:
					if (optionValues[4] > 0)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						TextFunctions::DrawString(unitsStrings[optionValues[4]], 150, 80);
						optionValues[4]--;
						TextFunctions::SetTextColour(5, 4, 0);
						TextFunctions::DrawString(unitsStrings[optionValues[4]], 150, 80);
					}
					break;
				case 5:
					if (optionValues[5] > 0)
					{
						TextFunctions::SetTextColour(1, 1, 0);
						String* s = String::ToString(optionValues[5] + 1, 2);
						s->Prepend("Frame ");
						TextFunctions::DrawString(*s, 150, 96);
						delete s;
						optionValues[5]--;
						TextFunctions::SetTextColour(5, 4, 0);
						s = String::ToString(optionValues[5] + 1, 2);
						s->Prepend("Frame ");
						TextFunctions::DrawString(*s, 150, 96);
						delete s;
					}
					break;
				}
		}
	}
}
