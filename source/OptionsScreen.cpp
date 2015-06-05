/*
 * OptionsScreen.cpp
 *
 *  Created on: 26 May 2015
 *      Author: Jamie
 */

#include "OptionsScreen.h"
#include "GameModeManager.h"
#include "Game.h"
#include "InputHandler.h"
#include "OptionsInputEventHandler.h"
#include "DoNothingInputEventHandler.h"
#include "LoadGameScreen.h"
#include "Mapping.h"

OptionsScreen::OptionsScreen(u32 exitContext)
{
	// TODO Auto-generated constructor stub
	this->exitContext = exitContext;
	InputHandler::SetEventHandler(new DoNothingInputEventHandler());
	Game::FadeToWhite(true, HalfSecond, true, false);
	const Options &options = Game::GetConstOptions();
	optionValues[0] = options.textSpeed;
	optionValues[1] = options.playAnimations;
	optionValues[2] = options.battleSwitchStyle;
	optionValues[3] = options.stereoSound;
	optionValues[4] = options.useImperialUnits;
	optionValues[5] = options.boxOutline;
}

OptionsScreen::~OptionsScreen()
{
	// TODO Auto-generated destructor stub
}

void OptionsScreen::Update()
{

}

void OptionsScreen::OnEnterCallback()
{
	InputHandler::SetEventHandler(new OptionsInputEventHandler());
	menuPosition = 0;
	exitContext = 0;
}

void OptionsScreen::OnExitCallback()
{
	switch (exitContext)
	{
		case 0:
			// back to load game menu
			GameModeManager::SetScreen(new LoadGameScreen(0));
			break;
		default:
			// else assume overworld
			GameModeManager::SetScreen(new Overworld());
			break;
	}
}

void OptionsScreen::Save()
{
	Options &opts = Game::GetOptions();
	opts.options = 0;
	opts.textSpeed = optionValues[0];
	opts.playAnimations = optionValues[1];
	opts.battleSwitchStyle = optionValues[2];
	opts.stereoSound = optionValues[3];
	opts.useImperialUnits = optionValues[4];
	opts.boxOutline = optionValues[5];
}

void OptionsScreen::IncrementValueAt()
{
	switch (menuPosition)
	{
		case 0:
			if (optionValues[0] < 2)
			{
				optionValues[0]++;
			}
			break;
		case 1:
			if (optionValues[1] < 1)
			{
				optionValues[1]++;
			}
			break;
		case 2:
			if (optionValues[2] < 1)
			{
				optionValues[2]++;
			}
			break;
		case 3:
			if (optionValues[3] < 1)
			{
				optionValues[3]++;
			}
			break;
		case 4:
			if (optionValues[4] < 1)
			{
				optionValues[4]++;
			}
			break;
		case 5:
			if (optionValues[5] < 15)
			{
				optionValues[5]++;
			}
			break;
	}
}

void OptionsScreen::DecrementValueAt()
{
	switch (menuPosition)
	{
		case 0:
			if (optionValues[0] > 0)
			{
				optionValues[0]--;
			}
			break;
		case 1:
			if (optionValues[1] > 0)
			{
				optionValues[1]--;
			}
			break;
		case 2:
			if (optionValues[2] > 0)
			{
				optionValues[2]--;
			}
			break;
		case 3:
			if (optionValues[3] > 0)
			{
				optionValues[3]--;
			}
			break;
		case 4:
			if (optionValues[4] > 0)
			{
				optionValues[4]--;
			}
			break;
		case 5:
			if (optionValues[5] > 0)
			{
				optionValues[5]--;
			}
			break;
	}
}
