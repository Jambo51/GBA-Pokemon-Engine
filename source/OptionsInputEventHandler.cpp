/*
 * OptionsInputEventHandler.cpp
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#include "Input/Menus/OptionsInputEventHandler.h"
#include "Core/Game.h"
#include "Scenes/SceneManager.h"
#include "Scenes/Menus/OptionsScreen.h"

using namespace Core;
using namespace Scenes;

namespace Input
{
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
		InputHandler::OnPressB();
		Game::FadeToBlack(true, HalfSecond, true, true);
	}

	void OptionsInputEventHandler::OnPressUp()
	{
		InputHandler::OnPressUp();
		if (!keyHeld[Key_Up])
		{
			OptionsScreen* sc = (OptionsScreen*)SceneManager::GetScene();
			sc->DecrementMenuPosition();
		}
	}

	void OptionsInputEventHandler::OnPressDown()
	{
		InputHandler::OnPressDown();
		if (!keyHeld[Key_Down])
		{
			OptionsScreen* sc = (OptionsScreen*)SceneManager::GetScene();
			sc->IncrementMenuPosition();
		}
	}

	void OptionsInputEventHandler::OnPressRight()
	{
		InputHandler::OnPressRight();
		if (!keyHeld[Key_Right])
		{
			OptionsScreen* sc = (OptionsScreen*)SceneManager::GetScene();
			sc->IncrementValueAt();
		}
	}

	void OptionsInputEventHandler::OnPressA()
	{
		InputHandler::OnPressA();
		if (!keyHeld[Key_A])
		{
			OptionsScreen* sc = (OptionsScreen*)SceneManager::GetScene();
			if (sc->GetMenuPosition() == 6)
			{
				sc->Save();
				Game::FadeToBlack(true, HalfSecond, true, true);
			}
			else
			{
				sc->IncrementValueAt();
			}
		}
	}

	void OptionsInputEventHandler::OnPressLeft()
	{
		InputHandler::OnPressLeft();
		if (!keyHeld[Key_Left])
		{
			OptionsScreen* sc = (OptionsScreen*)SceneManager::GetScene();
			sc->DecrementValueAt();
		}
	}
}
