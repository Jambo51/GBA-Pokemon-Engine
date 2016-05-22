/*
 * DoNothingInputEventHandler.h
 *
 *  Created on: 16 May 2015
 *      Author: Jamie
 */

#ifndef SOURCE_DONOTHINGINPUTEVENTHANDLER_H_
#define SOURCE_DONOTHINGINPUTEVENTHANDLER_H_

#include "InputHandler.h"

namespace Input
{
	class DoNothingInputEventHandler : public InputHandler
	{
	public:
		DoNothingInputEventHandler();
		~DoNothingInputEventHandler();
	};
}

#endif /* SOURCE_DONOTHINGINPUTEVENTHANDLER_H_ */
