/*
 * LoadGameScreenInputEventHandler.cpp
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#include "Input/Menus/LoadGameScreenInputEventHandler.h"
#include "Core/Palettes.h"
#include "Scenes/SceneManager.h"
#include "Scenes/Menus/LoadGameScreen.h"
#include "Audio/SoundEngine.h"
#include "Input/InputManager.h"
#include "Input/DoNothingInputEventHandler.h"

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

	bool LoadGameScreenInputEventHandler::OnPressA()
	{
		if (!InputHandler::OnPressA())
		{
			Palettes::FadeToBlack(true, HalfSecond, true, true);
			SmartPointer<LoadGameScreen> sc = SmartPointerFunctions::Cast<Scene, LoadGameScreen>(SceneManager::GetScene());
			if (sc->SetExitContext())
			{
				SoundEngine::FadeSongToSilence();
			}
			InputManager::SetEventHandler(new DoNothingInputEventHandler());
		}
		return false;
	}

	bool LoadGameScreenInputEventHandler::OnPressB()
	{
		if (!InputHandler::OnPressB())
		{
			Palettes::FadeToBlack(true, HalfSecond, true, true);
			SmartPointer<LoadGameScreen> sc = SmartPointerFunctions::Cast<Scene, LoadGameScreen>(SceneManager::GetScene());
			if (sc->SetExitContext(1))
			{
				SoundEngine::FadeSongToSilence();
			}
			InputManager::SetEventHandler(new DoNothingInputEventHandler());
		}
		return false;
	}

	bool LoadGameScreenInputEventHandler::OnPressUp()
	{
		if (!InputHandler::OnPressUp())
		{
			SmartPointer<LoadGameScreen> sc = SmartPointerFunctions::Cast<Scene, LoadGameScreen>(SceneManager::GetScene());
			sc->DecrementMenuPosition();
		}
		return false;
	}

	bool LoadGameScreenInputEventHandler::OnPressDown()
	{
		if (!InputHandler::OnPressDown())
		{
			SmartPointer<LoadGameScreen> sc = SmartPointerFunctions::Cast<Scene, LoadGameScreen>(SceneManager::GetScene());
			sc->IncrementMenuPosition();
		}
		return false;
	}

	bool LoadGameScreenInputEventHandler::OnPressStart()
	{
		if (!InputHandler::OnPressStart())
		{
			Palettes::FadeToBlack(true, HalfSecond, true, true);
			SmartPointer<LoadGameScreen> sc = SmartPointerFunctions::Cast<Scene, LoadGameScreen>(SceneManager::GetScene());
			if (sc->SetExitContext())
			{
				SoundEngine::FadeSongToSilence();
			}
			InputManager::SetEventHandler(new DoNothingInputEventHandler());
		}
		return false;
	}
}
