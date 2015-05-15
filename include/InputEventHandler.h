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

class InputEventHandler
{
protected:
	bool keyDown[10];
	bool keyHeld[10];
	u8 keyPressTimers[10];
	InputEventHandler();
	~InputEventHandler();
public:
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
};

#endif /* INPUTEVENTHANDLER_H_ */
