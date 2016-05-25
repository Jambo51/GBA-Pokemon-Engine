/*
 * Callback.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef CALLBACK_H_
#define CALLBACK_H_

#include "GlobalDefinitions.h"
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

#endif /* CALLBACK_H_ */
