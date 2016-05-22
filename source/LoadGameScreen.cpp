/*
 * LoadGameScreen.cpp
 *
 *  Created on: 25 May 2015
 *      Author: Jamie
 */

#include "LoadGameScreen.h"
#include "TitleScreen.h"
#include "PrimaryOverworld.h"
#include "SoundEngine.h"
#include "OptionsScreen.h"
#include "SceneManager.h"
#include "Game.h"
#include "InputHandler.h"
#include "LoadGameScreenInputEventHandler.h"
#include "BackgroundFunctions.h"
#include "TextFunctions.h"

using namespace Core;
using namespace Input;
using namespace Scenes;
using namespace Scenes::Overworld;

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

void LoadGameScreen::OnEnterCallback()
{
	if (exitContext)
	{
		SoundEngine::PlaySong(Song_ContinueMenuTheme, 0);
		exitContext = 0;
	}
	InputManager::SetEventHandler(new LoadGameScreenInputEventHandler());
}

void LoadGameScreen::OnExitCallback()
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
