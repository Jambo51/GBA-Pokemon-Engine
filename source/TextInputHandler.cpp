/*
 * TextInputHandler.cpp
 *
 *  Created on: 15 Jul 2015
 *      Author: Jamie
 */

#include "TextInputHandler.h"
#include "TextDrawer.h"

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
	InputEventHandler::OnPressA();
	drawer->ADown(true);
}

void TextInputHandler::OnPressB()
{
	InputEventHandler::OnPressB();
	drawer->BDown(true);
}
