/*
 * InputEventHandlere.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef INPUTEVENTHANDLER_H_
#define INPUTEVENTHANDLER_H_

#include "GlobalDefinitions.h"
#define NumWaitFrames 8

enum Keys { Key_A, Key_B, Key_Select, Key_Start, Key_Right, Key_Left, Key_Up, Key_Down, Key_RightBumper, Key_LeftBumper };
namespace Input
{
	class InputHandler
	{
	protected:
		bool previousKeyDown[10];
		bool keyDown[10];
		InputHandler();
		bool* KeyDownAddress() const { return (bool*)&keyDown; }
		bool* PreviousKeyDownAddress() const { return (bool*)&previousKeyDown; }
		void UpdateKeyStatus(Keys key);
	public:
		virtual ~InputHandler();
		virtual bool OnPressA();
		virtual bool OnPressB();
		virtual bool OnPressUp();
		virtual bool OnPressDown();
		virtual bool OnPressLeft();
		virtual bool OnPressRight();
		virtual bool OnPressStart();
		virtual bool OnPressSelect();
		virtual bool OnPressL();
		virtual bool OnPressR();
		virtual void Update();
		bool IsKeyHeld(Keys keyID);
		bool IsKeyDown(Keys keyID);
		bool IsKeyDownAndNotHeld(Keys keyID);
		void CopyInput(const InputHandler &other);
	};
}

#endif /* INPUTEVENTHANDLER_H_ */
