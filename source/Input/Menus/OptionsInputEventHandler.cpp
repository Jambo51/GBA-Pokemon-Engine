/*
 * OptionsInputEventHandler.cpp
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#include "Input/Menus/OptionsInputEventHandler.h"
#include "Input/DoNothingInputEventHandler.h"
#include "Input/InputManager.h"
#include "Core/Palettes.h"
#include "Scenes.h"

using namespace Core;
using namespace Scenes;
using namespace Scenes::Menus;
using namespace Scenes::Overworld;

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

	void ReturnToPreviousScreen()
	{
		Palettes::FadeToBlack(true, HalfSecond, true, true);
		InputManager::SetEventHandler(new DoNothingInputEventHandler());
	}

	void OptionsInputEventHandler::OnPressB()
	{
		InputHandler::OnPressB();
		if (!keyHeld[Key_B])
		{
			ReturnToPreviousScreen();
		}
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
				ReturnToPreviousScreen();
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
