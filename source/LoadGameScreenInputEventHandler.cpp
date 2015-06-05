/*
 * LoadGameScreenInputEventHandler.cpp
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#include "LoadGameScreenInputEventHandler.h"
#include "Game.h"
#include "GameModeManager.h"
#include "LoadGameScreen.h"
#include "SoundEngine.h"

LoadGameScreenInputEventHandler::LoadGameScreenInputEventHandler()
{
	// TODO Auto-generated constructor stub

}

LoadGameScreenInputEventHandler::~LoadGameScreenInputEventHandler()
{
	// TODO Auto-generated destructor stub
}

void LoadGameScreenInputEventHandler::OnPressA()
{
	InputEventHandler::OnPressA();
	Game::FadeToBlack(true, HalfSecond, true, true);
	LoadGameScreen* sc = (LoadGameScreen*)GameModeManager::GetScreen();
	if (sc->SetExitContext())
	{
		SoundEngine::FadeSongToSilence();
	}
}

void LoadGameScreenInputEventHandler::OnPressB()
{
	InputEventHandler::OnPressB();
	Game::FadeToBlack(true, HalfSecond, true, true);
	LoadGameScreen* sc = (LoadGameScreen*)GameModeManager::GetScreen();
	if (sc->SetExitContext(1))
	{
		SoundEngine::FadeSongToSilence();
	}
}

void LoadGameScreenInputEventHandler::OnPressUp()
{
	InputEventHandler::OnPressUp();
	if (!keyHeld[Key_Up])
	{
		LoadGameScreen* sc = (LoadGameScreen*)GameModeManager::GetScreen();
		sc->DecrementMenuPosition();
	}
}

void LoadGameScreenInputEventHandler::OnPressDown()
{
	InputEventHandler::OnPressDown();
	if (!keyHeld[Key_Down])
	{
		LoadGameScreen* sc = (LoadGameScreen*)GameModeManager::GetScreen();
		sc->IncrementMenuPosition();
	}
}

void LoadGameScreenInputEventHandler::OnPressStart()
{
	InputEventHandler::OnPressStart();
	Game::FadeToBlack(true, HalfSecond, true, true);
	LoadGameScreen* sc = (LoadGameScreen*)GameModeManager::GetScreen();
	if (sc->SetExitContext())
	{
		SoundEngine::FadeSongToSilence();
	}
}
