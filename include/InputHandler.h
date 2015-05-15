/*
 * InputHandler.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef INPUTHANDLER_H_
#define INPUTHANDLER_H_

#include "GlobalDefinitions.h"

class InputEventHandler;

typedef enum Keys { Key_A, Key_B, Key_Select, Key_Start, Key_Right, Key_Left, Key_Up, Key_Down, Key_RightBumper, Key_LeftBumper } Keys;

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
};

#endif /* INPUTHANDLER_H_ */
