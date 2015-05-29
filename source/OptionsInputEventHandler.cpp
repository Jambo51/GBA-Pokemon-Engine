/*
 * OptionsInputEventHandler.cpp
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#include "OptionsInputEventHandler.h"
#include "Game.h"
#include "GameModeManager.h"
#include "OptionsScreen.h"

OptionsInputEventHandler::OptionsInputEventHandler()
{
	// TODO Auto-generated constructor stub

}

OptionsInputEventHandler::~OptionsInputEventHandler()
{
	// TODO Auto-generated destructor stub
}

void OptionsInputEventHandler::OnPressB()
{
	InputEventHandler::OnPressB();
	Game::FadeToBlack(32, true, true);
}

void OptionsInputEventHandler::OnPressUp()
{
	InputEventHandler::OnPressUp();
	if (!keyHeld[Key_Up])
	{
		OptionsScreen* sc = (OptionsScreen*)GameModeManager::GetScreen();
		sc->DecrementMenuPosition();
	}
}

void OptionsInputEventHandler::OnPressDown()
{
	InputEventHandler::OnPressDown();
	if (!keyHeld[Key_Down])
	{
		OptionsScreen* sc = (OptionsScreen*)GameModeManager::GetScreen();
		sc->IncrementMenuPosition();
	}
}

void OptionsInputEventHandler::OnPressRight()
{
	InputEventHandler::OnPressRight();
	if (!keyHeld[Key_Right])
	{
		OptionsScreen* sc = (OptionsScreen*)GameModeManager::GetScreen();
		sc->IncrementValueAt();
	}
}

void OptionsInputEventHandler::OnPressA()
{
	InputEventHandler::OnPressA();
	if (!keyHeld[Key_A])
	{
		OptionsScreen* sc = (OptionsScreen*)GameModeManager::GetScreen();
		if (sc->GetMenuPosition() == 6)
		{
			sc->Save();
			Game::FadeToBlack(32, true, true);
		}
		else
		{
			sc->IncrementValueAt();
		}
	}
}

void OptionsInputEventHandler::OnPressLeft()
{
	InputEventHandler::OnPressLeft();
	if (!keyHeld[Key_Left])
	{
		OptionsScreen* sc = (OptionsScreen*)GameModeManager::GetScreen();
		sc->DecrementValueAt();
	}
}
