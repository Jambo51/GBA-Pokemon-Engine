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

	void TextInputHandler::OnPressA()
	{
		InputHandler::OnPressA();
		drawer->ADown(true);
	}

	void TextInputHandler::OnPressB()
	{
		InputHandler::OnPressB();
		drawer->BDown(true);
	}
}
