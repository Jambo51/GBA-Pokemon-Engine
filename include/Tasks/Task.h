/*
 * Callback.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef TASK_H_
#define TASK_H_

#include "SmartPointer.h"
#include "Callbacks.h"

namespace Tasks
{
	class Task
	{
	protected:
		SmartPointer<Callbacks::Callback> callback;
		Task(SmartPointer<Callbacks::Callback> = 0);
	public:
		virtual ~Task()
		{
			if (callback)
			{
				callback->DoCallback();
				callback = 0;
			}
		}
		virtual bool Update() = 0;
		void SetCallback(SmartPointer<Callbacks::Callback> newCallback)
		{
			callback = newCallback;
		}
	};
}

#endif /* TASK_H_ */
