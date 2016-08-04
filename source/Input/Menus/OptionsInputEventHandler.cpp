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

	bool OptionsInputEventHandler::OnPressB()
	{
		if (!InputHandler::OnPressB())
		{
			ReturnToPreviousScreen();
		}
		return false;
	}

	bool OptionsInputEventHandler::OnPressUp()
	{
		if (!InputHandler::OnPressUp())
		{
			SmartPointer<OptionsScreen> sc = SmartPointerFunctions::Cast<Scene, OptionsScreen>(SceneManager::GetScene());
			sc->DecrementMenuPosition();
		}
		return false;
	}

	bool OptionsInputEventHandler::OnPressDown()
	{
		if (!InputHandler::OnPressDown())
		{
			SmartPointer<OptionsScreen> sc = SmartPointerFunctions::Cast<Scene, OptionsScreen>(SceneManager::GetScene());
			sc->IncrementMenuPosition();
		}
		return false;
	}

	bool OptionsInputEventHandler::OnPressRight()
	{
		if (!InputHandler::OnPressRight())
		{
			SmartPointer<OptionsScreen> sc = SmartPointerFunctions::Cast<Scene, OptionsScreen>(SceneManager::GetScene());
			sc->IncrementValueAt();
		}
		return false;
	}

	bool OptionsInputEventHandler::OnPressA()
	{
		if (!InputHandler::OnPressA())
		{
			SmartPointer<OptionsScreen> sc = SmartPointerFunctions::Cast<Scene, OptionsScreen>(SceneManager::GetScene());
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
		return false;
	}

	bool OptionsInputEventHandler::OnPressLeft()
	{
		if (!InputHandler::OnPressLeft())
		{
			SmartPointer<OptionsScreen> sc = SmartPointerFunctions::Cast<Scene, OptionsScreen>(SceneManager::GetScene());
			sc->DecrementValueAt();
		}
		return false;
	}
}
