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

	bool SelectGenderInputHandler::OnPressA()
	{
		if (!InputHandler::OnPressA())
		{
			SelectGender(currentGender);
		}
		return false;
	}

	bool SelectGenderInputHandler::OnPressStart()
	{
		if (!InputHandler::OnPressStart())
		{
			SelectGender(currentGender);
		}
		return false;
	}

	bool SelectGenderInputHandler::OnPressLeft()
	{
		if (!InputHandler::OnPressLeft())
		{
			if (currentGender > 0)
			{
				currentGender--;
				RedrawWindow(currentGender);
			}
		}
		return false;
	}

	bool SelectGenderInputHandler::OnPressRight()
	{
		if (!InputHandler::OnPressRight())
		{
			if (currentGender < 1)
			{
				currentGender++;
				RedrawWindow(currentGender);
			}
		}
		return false;
	}
}
