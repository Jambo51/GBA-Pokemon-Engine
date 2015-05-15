/*
 * GameModeManager.cpp
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"
#include "GameModeManager.h"
#include "GameScreen.h"

EWRAM_LOCATION ALIGN(4) GameScreen* GameModeManager::screen = NULL;

GameModeManager::GameModeManager()
{
	// TODO Auto-generated constructor stub

}

GameModeManager::~GameModeManager()
{
	// TODO Auto-generated destructor stub
}

void GameModeManager::SetScreen(GameScreen* newScreen)
{
	if (newScreen)
	{
		if (screen)
		{
			delete screen;
		}
		screen = newScreen;
	}
}

void GameModeManager::Update()
{
	if (screen)
	{
		screen->Update();
	}
}
