/*
 * Callback.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef CALLBACK_H_
#define CALLBACK_H_

#include "GlobalDefinitions.h"

namespace Tasks
{
	class Task
	{
	protected:
		Task();
	public:
		virtual ~Task();
		virtual void Update() = 0;
	};
}

#endif /* CALLBACK_H_ */
