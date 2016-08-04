/*
 * SaveGameStask.h
 *
 *  Created on: 19 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_TASKS_LOADGAMETASK_H_
#define INCLUDE_TASKS_LOADGAMETASK_H_

#include "MemoryTask.h"
#include "SmartPointer.h"
#include "Callbacks.h"

namespace Tasks
{
	namespace Memory
	{
		class LoadGameTask : public MemoryTask
		{
			public:
				LoadGameTask(SmartPointer<Callbacks::Callback> callback = 0);
				~LoadGameTask();
				bool SubTaskUpdate();
		};
	}
}

#endif /* INCLUDE_TASKS_SAVEGAMETASK_H_ */
