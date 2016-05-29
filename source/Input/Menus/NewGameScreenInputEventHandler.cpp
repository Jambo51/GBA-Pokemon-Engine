/*
 * LoadGameScreenInputEventHandler.cpp
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#include "Input/Menus/NewGameScreenInputEventHandler.h"
#include "Core/Game.h"
#include "Scenes/SceneManager.h"
#include "Scenes/Menus/NewGameScreen.h"
#include "Audio/SoundEngine.h"

using namespace Audio;
using namespace Core;
using namespace Scenes;

namespace Input
{
	NewGameScreenInputEventHandler::NewGameScreenInputEventHandler()
	{
		// TODO Auto-generated constructor stub

	}

	NewGameScreenInputEventHandler::~NewGameScreenInputEventHandler()
	{
		// TODO Auto-generated destructor stub
	}

	void NewGameScreenInputEventHandler::OnPressA()
	{
		InputHandler::OnPressA();
		Game::FadeToBlack(true, HalfSecond, true, true);
		NewGameScreen* sc = (NewGameScreen*)SceneManager::GetScene();
		if (sc->SetExitContext())
		{
			SoundEngine::FadeSongToSilence();
		}
	}

	void NewGameScreenInputEventHandler::OnPressB()
	{
		InputHandler::OnPressB();
		Game::FadeToBlack(true, HalfSecond, true, true);
		NewGameScreen* sc = (NewGameScreen*)SceneManager::GetScene();
		if (sc->SetExitContext(1))
		{
			SoundEngine::FadeSongToSilence();
		}
	}

	void NewGameScreenInputEventHandler::OnPressUp()
	{
		InputHandler::OnPressUp();
		if (!keyHeld[Key_Up])
		{
			NewGameScreen* sc = (NewGameScreen*)SceneManager::GetScene();
			sc->DecrementMenuPosition();
		}
	}

	void NewGameScreenInputEventHandler::OnPressDown()
	{
		InputHandler::OnPressDown();
		if (!keyHeld[Key_Down])
		{
			NewGameScreen* sc = (NewGameScreen*)SceneManager::GetScene();
			sc->IncrementMenuPosition();
		}
	}

	void NewGameScreenInputEventHandler::OnPressStart()
	{
		InputHandler::OnPressStart();
		Game::FadeToBlack(true, HalfSecond, true, true);
		NewGameScreen* sc = (NewGameScreen*)SceneManager::GetScene();
		if (sc->SetExitContext())
		{
			SoundEngine::FadeSongToSilence();
		}
	}
}
