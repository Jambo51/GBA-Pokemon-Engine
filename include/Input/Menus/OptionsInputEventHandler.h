/*
 * OptionsInputEventHandler.h
 *
 *  Created on: 28 May 2015
 *      Author: Jamie
 */

#ifndef OPTIONSINPUTEVENTHANDLER_H_
#define OPTIONSINPUTEVENTHANDLER_H_

#include "InputEventHandler.h"

class OptionsInputEventHandler : public InputEventHandler
{
public:
	OptionsInputEventHandler();
	~OptionsInputEventHandler();
	void OnPressA();
	void OnPressB();
	void OnPressUp();
	void OnPressDown();
	void OnPressRight();
	void OnPressLeft();
};

#endif /* OPTIONSINPUTEVENTHANDLER_H_ */
