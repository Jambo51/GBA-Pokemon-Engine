/*
 * TextInputHandler.cpp
 *
 *  Created on: 15 Jul 2015
 *      Author: Jamie
 */

#include "Input/Overworld/TextInputHandler.h"
#include "Text/TextDrawer.h"

using namespace Text;

namespace Input
{
	TextInputHandler::TextInputHandler(TextDrawer* drawer)
	{
		// TODO Auto-generated constructor stub
		this->drawer = drawer;
	}

	TextInputHandler::~TextInputHandler()
	{
		// TODO Auto-generated destructor stub
	}

	bool TextInputHandler::OnPressA()
	{
		InputHandler::OnPressA();
		drawer->SetADown(true);
		drawer->SetAHeld(InputHandler::IsKeyHeld(Key_A));
		return false;
	}

	bool TextInputHandler::OnPressB()
	{
		InputHandler::OnPressB();
		drawer->SetBDown(true);
		drawer->SetBHeld(InputHandler::IsKeyHeld(Key_B));
		return false;
	}
}
