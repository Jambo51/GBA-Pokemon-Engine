/*
 * TextInputHandler.h
 *
 *  Created on: 15 Jul 2015
 *      Author: Jamie
 */

#ifndef TEXTINPUTHANDLER_H_
#define TEXTINPUTHANDLER_H_

#include "InputEventHandler.h"

class TextDrawer;

class TextInputHandler : public InputEventHandler
{
private:
	TextDrawer* drawer;
public:
	TextInputHandler(TextDrawer* drawer);
	~TextInputHandler();
	void OnPressA();
	void OnPressB();
};

#endif /* TEXTINPUTHANDLER_H_ */
