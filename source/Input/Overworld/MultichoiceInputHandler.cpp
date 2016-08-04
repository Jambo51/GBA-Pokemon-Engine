/*
 * MultichoiceInputHandler.cpp
 *
 *  Created on: 8 Jun 2016
 *      Author: CoolerMaster
 */

#include "Input/Overworld/MultichoiceInputHandler.h"
#include "Input/DoNothingInputEventHandler.h"
#include "Input/InputManager.h"
#include "Tasks.h"
#include "Text.h"
#include "Core.h"

using namespace Text;
using namespace Core::Data;

namespace Input
{
	MultichoiceInputHandler::MultichoiceInputHandler(Tasks::ScriptRunners::ScriptRunner* runner, bool bExitAllowed, u32 maxValue, u32 arrowPosition)
	{
		this->maxValue = maxValue;
		this->runner = runner;
		runner->EventHandlerSet(true);
		this->bExitAllowed = bExitAllowed;
		this->arrowPos = arrowPosition;
		logicalArrowPos = 0;
	}

	MultichoiceInputHandler::~MultichoiceInputHandler()
	{

	}

	bool MultichoiceInputHandler::OnPressA()
	{
		if (!InputHandler::OnPressA())
		{
			runner->SetStatus(arrowPos);
			Variables::SetVar(Var_LastResult, arrowPos);
			runner->KeyPressReceived(true);
			InputManager::SetEventHandler(new DoNothingInputEventHandler());
		}
		return false;
	}

	bool MultichoiceInputHandler::OnPressB()
	{
		if (!InputHandler::OnPressB())
		{
			Variables::SetVar(Var_LastResult, 0x7F);
			runner->SetStatus(0x7F);
			runner->KeyPressReceived(true);
			InputManager::SetEventHandler(new DoNothingInputEventHandler());
		}
		return false;
	}

	bool MultichoiceInputHandler::OnPressDown()
	{
		if (!InputHandler::OnPressDown())
		{
			TextFunctions::SetTextColour(1, 1, 0);
			TextFunctions::DrawCharacter(ARROWCHAR, 0, 0x40 + (0x10 * arrowPos));
			if (arrowPos < maxValue && arrowPos < 6)
			{
				arrowPos++;
			}
			TextFunctions::SetTextColour(2, 3, 0);
			TextFunctions::DrawCharacter(ARROWCHAR, 0, 0x40 + (0x10 * arrowPos));
		}
		return false;
	}

	bool MultichoiceInputHandler::OnPressUp()
	{
		if (!InputHandler::OnPressUp())
		{
			TextFunctions::SetTextColour(1, 1, 0);
			TextFunctions::DrawCharacter(ARROWCHAR, 0, 0x40 + (0x10 * arrowPos));
			if (arrowPos > 0)
			{
				arrowPos--;
			}
			TextFunctions::SetTextColour(2, 3, 0);
			TextFunctions::DrawCharacter(ARROWCHAR, 0, 0x40 + (0x10 * arrowPos));
		}
		return false;
	}

	bool MultichoiceInputHandler::OnPressLeft()
	{
		if (!InputHandler::OnPressLeft())
		{
			TextFunctions::SetTextColour(1, 1, 0);
			TextFunctions::DrawCharacter(ARROWCHAR, 0, 0x40 + (0x10 * arrowPos));
			if (arrowPos < maxValue)
			{
				arrowPos++;
			}
			TextFunctions::SetTextColour(2, 3, 0);
			TextFunctions::DrawCharacter(ARROWCHAR, 0, 0x40 + (0x10 * arrowPos));
		}
		return false;
	}

	bool MultichoiceInputHandler::OnPressRight()
	{
		if (!InputHandler::OnPressRight())
		{
			TextFunctions::SetTextColour(1, 1, 0);
			TextFunctions::DrawCharacter(ARROWCHAR, 0, 0x40 + (0x10 * arrowPos));
			if (arrowPos > 0)
			{
				arrowPos--;
			}
			TextFunctions::SetTextColour(2, 3, 0);
			TextFunctions::DrawCharacter(ARROWCHAR, 0, 0x40 + (0x10 * arrowPos));
		}
		return false;
	}
}
