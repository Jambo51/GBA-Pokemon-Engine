/*
 * InputEventHandlere.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "InputEventHandler.h"

InputEventHandler::InputEventHandler()
{
	// TODO Auto-generated constructor stub

}

InputEventHandler::~InputEventHandler()
{
	// TODO Auto-generated destructor stub
}

void InputEventHandler::OnPressA()
{
	keyDown[Key_A] = true;
}

void InputEventHandler::OnPressB()
{
	keyDown[Key_B] = true;
}

void InputEventHandler::OnPressLeft()
{
	keyDown[Key_Left] = true;
}

void InputEventHandler::OnPressRight()
{
	keyDown[Key_Right] = true;
}

void InputEventHandler::OnPressUp()
{
	keyDown[Key_Up] = true;
}

void InputEventHandler::OnPressDown()
{
	keyDown[Key_Down] = true;
}

void InputEventHandler::OnPressStart()
{
	keyDown[Key_Start] = true;
}

void InputEventHandler::OnPressSelect()
{
	keyDown[Key_Select] = true;
}

void InputEventHandler::OnPressL()
{
	keyDown[Key_LeftBumper] = true;
}

void InputEventHandler::OnPressR()
{
	keyDown[Key_RightBumper] = true;
}

void InputEventHandler::Update()
{
	for (int i = 0; i < 10; i++)
	{
		if (!keyDown[i])
		{
			keyPressTimers[i] = 0;
			keyHeld[i] = false;
		}
		else
		{
			keyPressTimers[i]++;
			if (keyPressTimers[i] > 0)
			{
				keyHeld[i] = true;
			}
		}
		keyDown[i] = false;
	}
}

void InputEventHandler::CopyInput(const InputEventHandler &other)
{
	bool* first = other.KeyDownAddress();
	bool* second = other.KeyHeldAddress();
	u8* third = other.KeyPressTimersAddress();
	for (int i = 0; i < 10; i++)
	{
		keyPressTimers[i] = third[i];
		keyDown[i] = first[i];
		keyHeld[i] = second[i];
	}
}
