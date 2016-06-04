/*
 * LoadGameScreenInputEventHandler.cpp
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#include "Input/Menus/NewGameScreenInputEventHandler.h"
#include "Input/DoNothingInputEventHandler.h"
#include "Input/InputManager.h"
#include "Core/Palettes.h"
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
		if (!keyHeld[Key_A])
		{
			Palettes::FadeToBlack(true, HalfSecond, true, true);
			NewGameScreen* sc = (NewGameScreen*)SceneManager::GetScene();
			if (sc->SetExitContext())
			{
				SoundEngine::FadeSongToSilence();
			}
		}
		InputManager::SetEventHandler(new DoNothingInputEventHandler());
	}

	void NewGameScreenInputEventHandler::OnPressB()
	{
		InputHandler::OnPressB();
		if (!keyHeld[Key_B])
		{
			Palettes::FadeToBlack(true, HalfSecond, true, true);
			NewGameScreen* sc = (NewGameScreen*)SceneManager::GetScene();
			if (sc->SetExitContext(1))
			{
				SoundEngine::FadeSongToSilence();
			}
		}
		InputManager::SetEventHandler(new DoNothingInputEventHandler());
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
		if (!keyHeld[Key_Start])
		{
			Palettes::FadeToBlack(true, HalfSecond, true, true);
			NewGameScreen* sc = (NewGameScreen*)SceneManager::GetScene();
			if (sc->SetExitContext())
			{
				SoundEngine::FadeSongToSilence();
			}
		}
		InputManager::SetEventHandler(new DoNothingInputEventHandler());
	}
}
