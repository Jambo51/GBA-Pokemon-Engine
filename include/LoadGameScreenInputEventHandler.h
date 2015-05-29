/*
 * LoadGameScreenInputEventHandler.h
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#ifndef LOADGAMESCREENINPUTEVENTHANDLER_H_
#define LOADGAMESCREENINPUTEVENTHANDLER_H_

#include "InputEventHandler.h"

class LoadGameScreenInputEventHandler : public InputEventHandler
{
public:
	LoadGameScreenInputEventHandler();
	~LoadGameScreenInputEventHandler();
	void OnPressA();
	void OnPressB();
	void OnPressUp();
	void OnPressDown();
	void OnPressStart();
};

#endif /* LOADGAMESCREENINPUTEVENTHANDLER_H_ */
