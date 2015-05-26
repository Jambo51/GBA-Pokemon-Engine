/*
 * LoadGameScreen.cpp
 *
 *  Created on: 25 May 2015
 *      Author: Jamie
 */

#include "LoadGameScreen.h"
#include "TitleScreen.h"
#include "Mapping.h"
#include "SoundEngine.h"
#include "OptionsScreen.h"
#include "GameModeManager.h"
#include "Game.h"

LoadGameScreen::LoadGameScreen()
{
	Game::FadeToWhite(32, true, false);
	menuPosition = 0;
	exitContext = 0;
}

LoadGameScreen::~LoadGameScreen()
{

}

void LoadGameScreen::Update()
{

}

void LoadGameScreen::OnEnterCallback()
{
	SoundEngine::PlaySong(Song_ContinueMenuTheme, 0);
}

void LoadGameScreen::OnExitCallback()
{
	switch (exitContext)
	{
		case 3:
			// Press B to return to Title Screen
			GameModeManager::SetScreen(new TitleScreen());
			break;
		case 0:
			// Load Game
			GameModeManager::SetScreen(new Overworld());
			break;
		case 1:
			// New Game
			GameModeManager::SetScreen(new Overworld());
			break;
		case 2:
			// Options Menu
			GameModeManager::SetScreen(new OptionsScreen());
			break;
		default:
			break;

	}
}
