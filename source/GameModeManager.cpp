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
EWRAM_LOCATION ALIGN(4) GameScreen* GameModeManager::newScreenStatic = NULL;

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
		newScreenStatic = newScreen;
	}
}

void GameModeManager::Update()
{
	if (newScreenStatic)
	{
		if (screen)
		{
			delete screen;
		}
		screen = newScreenStatic;
		newScreenStatic = NULL;
	}
	if (screen)
	{
		screen->Update();
	}
}

void GameModeManager::RunExitCallback()
{
	if (screen)
	{
		screen->OnExitCallback();
	}
}

void GameModeManager::RunEnterCallback()
{
	if (screen)
	{
		screen->OnEnterCallback();
	}
}
