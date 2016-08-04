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

	bool InputHandler::OnPressA()
	{
		keyDown[Key_A] = true;
		return previousKeyDown[Key_A];
	}

	bool InputHandler::OnPressB()
	{
		keyDown[Key_B] = true;
		return previousKeyDown[Key_B];
	}

	bool InputHandler::OnPressLeft()
	{
		keyDown[Key_Left] = true;
		return previousKeyDown[Key_Left];
	}

	bool InputHandler::OnPressRight()
	{
		keyDown[Key_Right] = true;
		return previousKeyDown[Key_Right];
	}

	bool InputHandler::OnPressUp()
	{
		keyDown[Key_Up] = true;
		return previousKeyDown[Key_Up];
	}

	bool InputHandler::OnPressDown()
	{
		keyDown[Key_Down] = true;
		return previousKeyDown[Key_Down];
	}

	bool InputHandler::OnPressStart()
	{
		keyDown[Key_Start] = true;
		return previousKeyDown[Key_Start];
	}

	bool InputHandler::OnPressSelect()
	{
		keyDown[Key_Select] = true;
		return previousKeyDown[Key_Select];
	}

	bool InputHandler::OnPressL()
	{
		keyDown[Key_LeftBumper] = true;
		return previousKeyDown[Key_LeftBumper];
	}

	bool InputHandler::OnPressR()
	{
		keyDown[Key_RightBumper] = true;
		return previousKeyDown[Key_RightBumper];
	}

	bool InputHandler::IsKeyHeld(Keys keyID)
	{
		return keyDown[keyID] && previousKeyDown[keyID];
	}

	bool InputHandler::IsKeyDown(Keys keyID)
	{
		return keyDown[keyID];
	}

	bool InputHandler::IsKeyDownAndNotHeld(Keys keyID)
	{
		return keyDown[keyID] && !previousKeyDown[keyID];
	}

	void InputHandler::Update()
	{
		memcpy16(PreviousKeyDownAddress(), KeyDownAddress(), 5);
		memset16(KeyDownAddress(), 0, 5);
	}

	void InputHandler::CopyInput(const InputHandler &other)
	{
		memcpy16(PreviousKeyDownAddress(), other.PreviousKeyDownAddress(), 5);
		memcpy16(KeyDownAddress(), other.KeyDownAddress(), 5);
	}
}
