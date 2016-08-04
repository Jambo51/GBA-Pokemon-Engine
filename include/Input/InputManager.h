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
#include "SmartPointer.h"

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
		static SmartPointer<InputHandler> handler;
		static SmartPointer<InputHandler> newInputHandler;
		InputManager();
		~InputManager();
	public:
		static void KeyPoll();
		static void SetEventHandler(SmartPointer<InputHandler> newHandler);
		static SmartPointer<InputHandler> GetHandler();
		static bool IsKeyDown(Keys keyID);
		static bool IsKeyHeld(Keys keyID);
		static bool IsKeyDownAndNotHeld(Keys keyID);
	};
}

#endif /* INPUTHANDLER_H_ */
