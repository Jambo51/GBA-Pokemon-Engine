/*
 * AsynchronousTask.h
 *
 *  Created on: 18 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_TASKS_ASYNCHRONOUSTASK_H_
#define INCLUDE_TASKS_ASYNCHRONOUSTASK_H_

#include "Task.h"
#include "GlobalDefinitions.h"
#include "SmartPointer.h"
#include "Callbacks.h"

namespace Tasks
{
	class AsynchronousTask : public Task
	{
		protected:
			u32 currentSubTaskID;
			SmartPointer<Callbacks::Callback> callback;
			AsynchronousTask(SmartPointer<Callbacks::Callback> callback = 0);
		public:
			virtual ~AsynchronousTask();
			bool Update();
			virtual bool SubTaskUpdate() = 0;
	};
}

#endif /* INCLUDE_TASKS_ASYNCHRONOUSTASK_H_ */
