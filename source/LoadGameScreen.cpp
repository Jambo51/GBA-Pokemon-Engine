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
#include "Core/Game.h"
#include "Input/InputManager.h"
#include "Input/Menus/LoadGameScreenInputEventHandler.h"
#include "Core/BackgroundFunctions.h"
#include "Text/TextFunctions.h"

using namespace Core;
using namespace Input;
using namespace Scenes::Overworld;
using namespace Scenes::Menus;
using namespace Audio;

namespace Scenes
{
	LoadGameScreen::LoadGameScreen(u32 enterContext)
	{
		BackgroundFunctions::ClearBackground(31);
		Game::FadeToWhite(true, HalfSecond, true, false);
		menuPosition = 0;
		exitContext = enterContext;
	}

	LoadGameScreen::~LoadGameScreen()
	{

	}

	void LoadGameScreen::Update()
	{

	}

	void LoadGameScreen::OnEnter()
	{
		if (exitContext)
		{
			SoundEngine::PlaySong(Song_ContinueMenuTheme, 0);
			exitContext = 0;
		}
		InputManager::SetEventHandler(new LoadGameScreenInputEventHandler());
	}

	void LoadGameScreen::OnExit()
	{
		switch (exitContext)
		{
			case 3:
				// Press B to return to Title Screen
				SceneManager::SetScene(new TitleScreen());
				break;
			case 0:
				// Load Game
				SceneManager::SetScene(new PrimaryOverworld());
				break;
			case 1:
				// New Game
				SceneManager::SetScene(new PrimaryOverworld());
				break;
			case 2:
				// Options Menu
				SceneManager::SetScene(new OptionsScreen(0));
				break;
			default:
				break;

		}
	}

	bool LoadGameScreen::SetExitContext(u32 contextGetType)
	{
		if (!contextGetType)
		{
			exitContext = menuPosition;
			if (menuPosition == 2)
			{
				return false;
			}
		}
		else
		{
			exitContext = 3;
		}
		return true;
	}
}
