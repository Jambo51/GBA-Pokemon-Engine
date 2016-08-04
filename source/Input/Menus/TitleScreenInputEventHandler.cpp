/*
 * TitleScreenInputEventHandler.cpp
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#include "Input/Menus/TitleScreenInputEventHandler.h"
#include "Scenes.h"
#include "Core.h"
#include "Audio.h"
#include "Input/DoNothingInputEventHandler.h"
#include "Input/InputManager.h"

using namespace Core;
using namespace Audio;
using namespace Scenes;

namespace Input
{
	TitleScreenInputEventHandler::TitleScreenInputEventHandler()
	{
		// TODO Auto-generated constructor stub

	}

	TitleScreenInputEventHandler::~TitleScreenInputEventHandler()
	{
		// TODO Auto-generated destructor stub
	}

	void TransitionToLoadGameScreen()
	{
		SmartPointerFunctions::Cast<Scene, Menus::TitleScreen>(SceneManager::GetScene())->SetExitContext(((Game::ValidSaveDetected()) ? LoadGame : NewGame));
		Palettes::FadeToWhite(true, HalfSecond, true);
		SoundEngine::FadeSongToSilence();
		Maths::ReseedRNG();
		InputManager::SetEventHandler(new DoNothingInputEventHandler());
	}

	bool TitleScreenInputEventHandler::OnPressA()
	{
		if (!InputHandler::OnPressA())
		{
			TransitionToLoadGameScreen();
		}
		return false;
	}

	bool TitleScreenInputEventHandler::OnPressStart()
	{
		if (!InputHandler::OnPressStart())
		{
			TransitionToLoadGameScreen();
		}
		return false;
	}
}
