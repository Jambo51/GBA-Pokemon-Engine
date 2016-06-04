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
		((Menus::TitleScreen*)SceneManager::GetScene())->SetExitContext(((Game::ValidSaveDetected()) ? LoadGame : NewGame));
		Palettes::FadeToWhite(true, HalfSecond, true);
		SoundEngine::FadeSongToSilence();
		Maths::ReseedRNG();
		InputManager::SetEventHandler(new DoNothingInputEventHandler());
	}

	void TitleScreenInputEventHandler::OnPressA()
	{
		InputHandler::OnPressA();
		if (!keyHeld[Key_A])
		{
			TransitionToLoadGameScreen();
		}
	}

	void TitleScreenInputEventHandler::OnPressStart()
	{
		InputHandler::OnPressStart();
		if (!keyHeld[Key_Start])
		{
			TransitionToLoadGameScreen();
		}
	}
}
