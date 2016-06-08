/*
 * InputManager.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "Input/InputManager.h"
#include "Core/Game.h"
#include "GlobalDefinitions.h"

namespace Input
{
	EWRAM_LOCATION ALIGN(4) KeyBuffer InputManager::inputValues;
	EWRAM_LOCATION ALIGN(4) InputHandler* InputManager::handler = NULL;
	EWRAM_LOCATION ALIGN(4) InputHandler* InputManager::newInputHandler = NULL;

	InputManager::InputManager()
	{
		// TODO Auto-generated constructor stub

	}

	InputManager::~InputManager()
	{
		// TODO Auto-generated destructor stub
	}

	bool InputManager::IsKeyDown(Keys keyID)
	{
		return (inputValues.keyBits & (1 << keyID)) != 0;
	}

	void InputManager::KeyPoll()
	{
		if (newInputHandler)
		{
			if (handler)
			{
				newInputHandler->CopyInput(*handler);
				delete handler;
			}
			handler = newInputHandler;
			newInputHandler = NULL;
		}
		inputValues.keyBits = (~(REG_KEYINPUT)) & 0x3FF;
		if (handler)
		{
			if (InputManager::IsKeyDown(Key_A))
			{
				handler->OnPressA();
			}
			if (InputManager::IsKeyDown(Key_B))
			{
				handler->OnPressB();
			}
			if (InputManager::IsKeyDown(Key_Left))
			{
				handler->OnPressLeft();
			}
			if (InputManager::IsKeyDown(Key_Right))
			{
				handler->OnPressRight();
			}
			if (InputManager::IsKeyDown(Key_Up))
			{
				handler->OnPressUp();
			}
			if (InputManager::IsKeyDown(Key_Down))
			{
				handler->OnPressDown();
			}
			if (InputManager::IsKeyDown(Key_Start))
			{
				handler->OnPressStart();
			}
			if (InputManager::IsKeyDown(Key_Select))
			{
				handler->OnPressSelect();
			}
			if (InputManager::IsKeyDown(Key_LeftBumper))
			{
				handler->OnPressL();
			}
			if (InputManager::IsKeyDown(Key_RightBumper))
			{
				handler->OnPressR();
			}
			handler->Update();
		}
	}

	void InputManager::SetEventHandler(InputHandler* newHandler)
	{
		if (Core::Game::IsValidPointer(newHandler))
		{
			newInputHandler = newHandler;
		}
	}
}
