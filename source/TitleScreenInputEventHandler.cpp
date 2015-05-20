/*
 * TitleScreenInputEventHandler.cpp
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#include "TitleScreenInputEventHandler.h"
#include "GameModeManager.h"
#include "Mapping.h"
#include "Maths.h"
#include "Game.h"
#include "SoundEngine.h"
#include "DoNothingInputEventHandler.h"
#include "InputHandler.h"

TitleScreenInputEventHandler::TitleScreenInputEventHandler()
{
	// TODO Auto-generated constructor stub

}

TitleScreenInputEventHandler::~TitleScreenInputEventHandler()
{
	// TODO Auto-generated destructor stub
}

void TransitionToOverworld()
{
	Game::FadeToBlack(32);
	SoundEngine::FadeSongToSilence();
	Maths::ReseedRNG();
	InputHandler::SetEventHandler(new DoNothingInputEventHandler());
}

void TitleScreenInputEventHandler::OnPressA()
{
	InputEventHandler::OnPressA();
	if (!keyHeld[Key_A])
	{
		TransitionToOverworld();
	}
}

void TitleScreenInputEventHandler::OnPressStart()
{
	InputEventHandler::OnPressStart();
	if (!keyHeld[Key_Start])
	{
		TransitionToOverworld();
	}
}
