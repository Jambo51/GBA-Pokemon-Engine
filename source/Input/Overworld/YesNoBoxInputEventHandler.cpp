/*
 * YesNoBoxInputEventHandler.cpp
 *
 *  Created on: 7 Jun 2016
 *      Author: CoolerMaster
 */

#include "Input/Overworld/YesNoBoxInputEventHandler.h"
#include "Tasks.h"
#include "Text.h"
#include "Core.h"

namespace Input
{
	YesNoBoxInputEventHandler::YesNoBoxInputEventHandler(Tasks::ScriptRunners::ScriptRunner* runner)
	{
		this->runner = runner;
		runner->EventHandlerSet(true);
		selectedIndex = 0;
	}

	YesNoBoxInputEventHandler::~YesNoBoxInputEventHandler()
	{

	}

	bool YesNoBoxInputEventHandler::OnPressA()
	{
		if (!InputHandler::OnPressA())
		{
			runner->KeyPressReceived(true);
			Core::Data::Variables::SetVar(Var_LastResult, selectedIndex);
		}
		return false;
	}

	bool YesNoBoxInputEventHandler::OnPressB()
	{
		if (!InputHandler::OnPressB())
		{
			runner->KeyPressReceived(true);
			Core::Data::Variables::SetVar(Var_LastResult, 1);
		}
		return false;
	}

	inline void RedrawArrowCharacter(u32 index)
	{
		Text::TextFunctions::SetTextColour(1, 1, 0);
		Text::TextFunctions::DrawCharacter(ARROWCHAR, 0, ((index + 1) & 1) * 0x10 + 0x20);
		Text::TextFunctions::SetTextColour(2, 3, 0);
		Text::TextFunctions::DrawCharacter(ARROWCHAR, 0, index * 0x10 + 0x20);
	}

	bool YesNoBoxInputEventHandler::OnPressUp()
	{
		if (!InputHandler::OnPressUp())
		{
			selectedIndex--;
			selectedIndex &= 1;
			RedrawArrowCharacter(selectedIndex);
		}
		return false;
	}

	bool YesNoBoxInputEventHandler::OnPressDown()
	{
		if (!InputHandler::OnPressDown())
		{
			selectedIndex++;
			selectedIndex &= 1;
			RedrawArrowCharacter(selectedIndex);
		}
		return false;
	}
}
