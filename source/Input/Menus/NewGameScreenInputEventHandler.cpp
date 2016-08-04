/*
 * NewGameScreenInputEventHandler.cpp
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

	bool NewGameScreenInputEventHandler::OnPressA()
	{
		if (!InputHandler::OnPressA())
		{
			Palettes::FadeToBlack(true, HalfSecond, true, true);
			SmartPointer<NewGameScreen> sc = SmartPointerFunctions::Cast<Scene, NewGameScreen>(SceneManager::GetScene());
			if (sc->SetExitContext())
			{
				SoundEngine::FadeSongToSilence();
			}
			InputManager::SetEventHandler(new DoNothingInputEventHandler());
		}
		return false;
	}

	bool NewGameScreenInputEventHandler::OnPressB()
	{
		if (!InputHandler::OnPressB())
		{
			Palettes::FadeToBlack(true, HalfSecond, true, true);
			SmartPointer<NewGameScreen> sc = SmartPointerFunctions::Cast<Scene, NewGameScreen>(SceneManager::GetScene());
			if (sc->SetExitContext(1))
			{
				SoundEngine::FadeSongToSilence();
			}
			InputManager::SetEventHandler(new DoNothingInputEventHandler());
		}
		return false;
	}

	bool NewGameScreenInputEventHandler::OnPressUp()
	{
		if (!InputHandler::OnPressUp())
		{
			SmartPointer<NewGameScreen> sc = SmartPointerFunctions::Cast<Scene, NewGameScreen>(SceneManager::GetScene());
			sc->DecrementMenuPosition();
		}
		return false;
	}

	bool NewGameScreenInputEventHandler::OnPressDown()
	{
		if (!InputHandler::OnPressDown())
		{
			SmartPointer<NewGameScreen> sc = SmartPointerFunctions::Cast<Scene, NewGameScreen>(SceneManager::GetScene());
			sc->IncrementMenuPosition();
		}
		return false;
	}

	bool NewGameScreenInputEventHandler::OnPressStart()
	{
		if (!InputHandler::OnPressStart())
		{
			Palettes::FadeToBlack(true, HalfSecond, true, true);
			SmartPointer<NewGameScreen> sc = SmartPointerFunctions::Cast<Scene, NewGameScreen>(SceneManager::GetScene());
			if (sc->SetExitContext())
			{
				SoundEngine::FadeSongToSilence();
			}
			InputManager::SetEventHandler(new DoNothingInputEventHandler());
		}
		return false;
	}
}
