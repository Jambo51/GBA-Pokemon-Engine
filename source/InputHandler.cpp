/*
 * InputHandler.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "InputHandler.h"
#include "GlobalDefinitions.h"

EWRAM_LOCATION ALIGN(4) KeyBuffer InputHandler::inputValues;
EWRAM_LOCATION ALIGN(4) InputEventHandler* InputHandler::handler = NULL;
EWRAM_LOCATION ALIGN(4) InputEventHandler* InputHandler::newInputHandler = NULL;

InputHandler::InputHandler()
{
	// TODO Auto-generated constructor stub

}

InputHandler::~InputHandler()
{
	// TODO Auto-generated destructor stub
}

bool InputHandler::IsKeyDown(Keys keyID)
{
	return (inputValues.keyBits & (1 << keyID)) != 0;
}

void InputHandler::KeyPoll()
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
		if (InputHandler::IsKeyDown(Key_A))
		{
			handler->OnPressA();
		}
		if (InputHandler::IsKeyDown(Key_B))
		{
			handler->OnPressB();
		}
		if (InputHandler::IsKeyDown(Key_Left))
		{
			handler->OnPressLeft();
		}
		if (InputHandler::IsKeyDown(Key_Right))
		{
			handler->OnPressRight();
		}
		if (InputHandler::IsKeyDown(Key_Up))
		{
			handler->OnPressUp();
		}
		if (InputHandler::IsKeyDown(Key_Down))
		{
			handler->OnPressDown();
		}
		if (InputHandler::IsKeyDown(Key_Start))
		{
			handler->OnPressStart();
		}
		if (InputHandler::IsKeyDown(Key_Select))
		{
			handler->OnPressSelect();
		}
		if (InputHandler::IsKeyDown(Key_LeftBumper))
		{
			handler->OnPressL();
		}
		if (InputHandler::IsKeyDown(Key_RightBumper))
		{
			handler->OnPressR();
		}
		handler->Update();
	}
}

void InputHandler::SetEventHandler(InputEventHandler* newHandler)
{
	newInputHandler = newHandler;
}
