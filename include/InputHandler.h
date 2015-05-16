/*
 * InputHandler.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef INPUTHANDLER_H_
#define INPUTHANDLER_H_

#include "GlobalDefinitions.h"
#include "InputEventHandler.h"

typedef struct KeyBuffer {
	union
	{
		u16 keyBits;
		U16BitField keyBitsInterpreted;
	};
} KeyBuffer;

class InputHandler
{
private:
	static KeyBuffer inputValues;
	static InputEventHandler* handler;
	InputHandler();
	~InputHandler();
	static bool IsKeyDown(Keys keyID);
public:
	static void KeyPoll();
	static void SetEventHandler(InputEventHandler* newHandler);
};

#endif /* INPUTHANDLER_H_ */
