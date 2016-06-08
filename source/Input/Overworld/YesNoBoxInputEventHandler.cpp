/*
 * YesNoBoxInputEventHandler.cpp
 *
 *  Created on: 7 Jun 2016
 *      Author: CoolerMaster
 */

#include "Input/Overworld/YesNoBoxInputEventHandler.h"
#include "Tasks.h"
#include "Text.h"

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

	void YesNoBoxInputEventHandler::OnPressA()
	{
		InputHandler::OnPressA();
		if (!keyHeld[Key_A])
		{
			runner->KeyPressReceived(true);
			runner->SetStatus(selectedIndex);
		}
	}

	void YesNoBoxInputEventHandler::OnPressB()
	{
		InputHandler::OnPressB();
		if (!keyHeld[Key_B])
		{
			runner->KeyPressReceived(true);
			runner->SetStatus(1);
		}
	}

	inline void RedrawArrowCharacter(u32 index)
	{
		Text::TextFunctions::SetTextColour(1, 1, 0);
		Text::TextFunctions::DrawCharacter(ARROWCHAR, 0, ((index + 1) & 1) * 0x10 + 0x20);
		Text::TextFunctions::SetTextColour(2, 3, 0);
		Text::TextFunctions::DrawCharacter(ARROWCHAR, 0, index * 0x10 + 0x20);
	}

	void YesNoBoxInputEventHandler::OnPressUp()
	{
		InputHandler::OnPressUp();
		if (!keyHeld[Key_Up])
		{
			selectedIndex--;
			selectedIndex &= 1;
			RedrawArrowCharacter(selectedIndex);
		}
	}

	void YesNoBoxInputEventHandler::OnPressDown()
	{
		InputHandler::OnPressDown();
		if (!keyHeld[Key_Down])
		{
			selectedIndex++;
			selectedIndex &= 1;
			RedrawArrowCharacter(selectedIndex);
		}
	}
}
