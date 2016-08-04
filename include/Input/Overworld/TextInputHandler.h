/*
 * TextInputHandler.h
 *
 *  Created on: 15 Jul 2015
 *      Author: Jamie
 */

#ifndef TEXTINPUTHANDLER_H_
#define TEXTINPUTHANDLER_H_

#include "Input/InputHandler.h"

namespace Text
{
	class TextDrawer;
}

namespace Input
{
	class TextInputHandler : public InputHandler
	{
	private:
		Text::TextDrawer* drawer;
	public:
		TextInputHandler(Text::TextDrawer* drawer);
		~TextInputHandler();
		bool OnPressA();
		bool OnPressB();
	};
}

#endif /* TEXTINPUTHANDLER_H_ */
