/*
 * ResetToIntroCallback.cpp
 *
 *  Created on: 26 May 2016
 *      Author: CoolerMaster
 */

#include "Callbacks/ResetToIntroCallback.h"
#include "Core.h"
#include "Input.h"
#include "Audio.h"
#include "Scenes.h"

using namespace Core;
using namespace Audio;
using namespace Input;
using namespace Scenes;

namespace Callbacks
{
	ResetToIntroCallback::ResetToIntroCallback()
	{

	}

	ResetToIntroCallback::~ResetToIntroCallback()
	{

	}

	void ResetToIntroCallback::DoCallback()
	{
		((Menus::TitleScreen*)SceneManager::GetScene())->SetExitContext(ResetToIntro);
		Game::FadeToBlack(true, HalfSecond, true);
		SoundEngine::FadeSongToSilence();
		InputManager::SetEventHandler(new DoNothingInputEventHandler());
	}
}
