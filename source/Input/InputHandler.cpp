/*
 * InputHandlere.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "Input/InputHandler.h"

namespace Input
{
	InputHandler::InputHandler()
	{
		// TODO Auto-generated constructor stub

	}

	InputHandler::~InputHandler()
	{
		// TODO Auto-generated destructor stub
	}

	void InputHandler::OnPressA()
	{
		keyDown[Key_A] = true;
	}

	void InputHandler::OnPressB()
	{
		keyDown[Key_B] = true;
	}

	void InputHandler::OnPressLeft()
	{
		keyDown[Key_Left] = true;
	}

	void InputHandler::OnPressRight()
	{
		keyDown[Key_Right] = true;
	}

	void InputHandler::OnPressUp()
	{
		keyDown[Key_Up] = true;
	}

	void InputHandler::OnPressDown()
	{
		keyDown[Key_Down] = true;
	}

	void InputHandler::OnPressStart()
	{
		keyDown[Key_Start] = true;
	}

	void InputHandler::OnPressSelect()
	{
		keyDown[Key_Select] = true;
	}

	void InputHandler::OnPressL()
	{
		keyDown[Key_LeftBumper] = true;
	}

	void InputHandler::OnPressR()
	{
		keyDown[Key_RightBumper] = true;
	}

	void InputHandler::Update()
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

	void InputHandler::CopyInput(const InputHandler &other)
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
}
