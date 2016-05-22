/*
 * InputHandler.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef INPUTHANDLER_H_
#define INPUTHANDLER_H_

#include "GlobalDefinitions.h"
#include "InputHandler.h"

typedef struct KeyBuffer {
	union
	{
		u16 keyBits;
		U16BitField keyBitsInterpreted;
	};
} KeyBuffer;

namespace Input
{
	class InputManager
	{
	private:
		static KeyBuffer inputValues;
		static InputHandler* handler;
		static InputHandler* newInputHandler;
		InputManager();
		~InputManager();
		static bool IsKeyDown(Keys keyID);
	public:
		static void KeyPoll();
		static void SetEventHandler(InputHandler* newHandler);
	};
}

#endif /* INPUTHANDLER_H_ */
