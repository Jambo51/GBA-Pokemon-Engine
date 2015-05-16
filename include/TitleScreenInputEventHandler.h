/*
 * TitleScreenInputEventHandler.h
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#ifndef TITLESCREENINPUTEVENTHANDLER_H_
#define TITLESCREENINPUTEVENTHANDLER_H_

#include "InputEventHandler.h"

class TitleScreenInputEventHandler : public InputEventHandler
{
public:
	TitleScreenInputEventHandler();
	~TitleScreenInputEventHandler();
	void OnPressA();
	void OnPressStart();
};

#endif /* TITLESCREENINPUTEVENTHANDLER_H_ */
