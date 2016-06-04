/*
 * Callback.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef TASK_H_
#define TASK_H_

#include "TaskManager.h"

namespace Tasks
{
	class Task
	{
	protected:
		Task()
		{
			// TODO Auto-generated constructor stub
			TaskManager::AddTask(this);
		}
	public:
		virtual ~Task()
		{

		}
		virtual void Update() = 0;
	};
}

#endif /* TASK_H_ */
