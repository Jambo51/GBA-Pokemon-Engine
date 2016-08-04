/*
 * SaveGameStask.h
 *
 *  Created on: 19 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_TASKS_SAVEGAMETASK_H_
#define INCLUDE_TASKS_SAVEGAMETASK_H_

#include "MemoryTask.h"
#include "SmartPointer.h"
#include "Callbacks.h"

namespace Tasks
{
	namespace Memory
	{
		class SaveGameTask : public MemoryTask
		{
			public:
				SaveGameTask(SmartPointer<Callbacks::Callback> callback = 0);
				~SaveGameTask();
				bool SubTaskUpdate();
		};
	}
}

#endif /* INCLUDE_TASKS_SAVEGAMETASK_H_ */
