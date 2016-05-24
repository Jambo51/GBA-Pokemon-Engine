/*
 * LoadGameScreenInputEventHandler.cpp
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#include "Input/Menus/LoadGameScreenInputEventHandler.h"
#include "Core/Game.h"
#include "Scenes/SceneManager.h"
#include "Scenes/Menus/LoadGameScreen.h"
#include "Audio/SoundEngine.h"

using namespace Audio;
using namespace Core;
using namespace Scenes;

namespace Input
{
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
		InputHandler::OnPressA();
		Game::FadeToBlack(true, HalfSecond, true, true);
		LoadGameScreen* sc = (LoadGameScreen*)SceneManager::GetScene();
		if (sc->SetExitContext())
		{
			SoundEngine::FadeSongToSilence();
		}
	}

	void LoadGameScreenInputEventHandler::OnPressB()
	{
		InputHandler::OnPressB();
		Game::FadeToBlack(true, HalfSecond, true, true);
		LoadGameScreen* sc = (LoadGameScreen*)SceneManager::GetScene();
		if (sc->SetExitContext(1))
		{
			SoundEngine::FadeSongToSilence();
		}
	}

	void LoadGameScreenInputEventHandler::OnPressUp()
	{
		InputHandler::OnPressUp();
		if (!keyHeld[Key_Up])
		{
			LoadGameScreen* sc = (LoadGameScreen*)SceneManager::GetScene();
			sc->DecrementMenuPosition();
		}
	}

	void LoadGameScreenInputEventHandler::OnPressDown()
	{
		InputHandler::OnPressDown();
		if (!keyHeld[Key_Down])
		{
			LoadGameScreen* sc = (LoadGameScreen*)SceneManager::GetScene();
			sc->IncrementMenuPosition();
		}
	}

	void LoadGameScreenInputEventHandler::OnPressStart()
	{
		InputHandler::OnPressStart();
		Game::FadeToBlack(true, HalfSecond, true, true);
		LoadGameScreen* sc = (LoadGameScreen*)SceneManager::GetScene();
		if (sc->SetExitContext())
		{
			SoundEngine::FadeSongToSilence();
		}
	}
}
