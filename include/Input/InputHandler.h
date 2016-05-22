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
		bool keyDown[10];
		bool keyHeld[10];
		u8 keyPressTimers[10];
		InputHandler();
		bool* KeyDownAddress() const { return (bool*)&keyDown; }
		bool* KeyHeldAddress() const { return (bool*)&keyHeld; }
		u8* KeyPressTimersAddress() const { return (u8*)&keyPressTimers; }
	public:
		virtual ~InputHandler();
		virtual void OnPressA();
		virtual void OnPressB();
		virtual void OnPressUp();
		virtual void OnPressDown();
		virtual void OnPressLeft();
		virtual void OnPressRight();
		virtual void OnPressStart();
		virtual void OnPressSelect();
		virtual void OnPressL();
		virtual void OnPressR();
		virtual void Update();
		void CopyInput(const InputHandler &other);
	};
}

#endif /* INPUTEVENTHANDLER_H_ */
