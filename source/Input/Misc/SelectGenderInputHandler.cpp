#include "Input/Misc/SelectGenderInputHandler.h"
#include "Input/InputManager.h"
#include "Input/DoNothingInputEventHandler.h"
#include "Core/Game.h"
#include "Core/Data/Variables.h"

using namespace Core;

namespace Input
{

	inline void RedrawWindow(u32 currentGender)
	{

	}

	SelectGenderInputHandler::SelectGenderInputHandler()
	{
		currentGender = 0;
		RedrawWindow(currentGender);
	}

	SelectGenderInputHandler::~SelectGenderInputHandler()
	{

	}

	inline void SelectGender(u32 currentGender)
	{
		Player &p = Game::GetPlayer();
		p.gender = currentGender;
		InputManager::SetEventHandler(new DoNothingInputEventHandler());
		Data::Variables::SetVar(0x801F, 9);
	}

	void SelectGenderInputHandler::OnPressA()
	{
		InputHandler::OnPressA();
		if (!keyHeld[Key_A])
		{
			SelectGender(currentGender);
		}
	}

	void SelectGenderInputHandler::OnPressStart()
	{
		InputHandler::OnPressStart();
		if (!keyHeld[Key_Start])
		{
			SelectGender(currentGender);
		}
	}

	void SelectGenderInputHandler::OnPressLeft()
	{
		InputHandler::OnPressLeft();
		if (!keyHeld[Key_Left])
		{
			if (currentGender > 0)
			{
				currentGender--;
				RedrawWindow(currentGender);
			}
		}
	}

	void SelectGenderInputHandler::OnPressRight()
	{
		InputHandler::OnPressRight();
		if (!keyHeld[Key_Right])
		{
			if (currentGender < 1)
			{
				currentGender++;
				RedrawWindow(currentGender);
			}
		}
	}
}
