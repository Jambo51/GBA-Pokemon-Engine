/*
 * MemoryTask.h
 *
 *  Created on: 19 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_TASKS_MEMORY_MEMORYTASK_H_
#define INCLUDE_TASKS_MEMORY_MEMORYTASK_H_

#include "Tasks/AsynchronousTask.h"
#include "SmartPointer.h"
#include "Callbacks.h"

namespace Tasks
{
	namespace Memory
	{
		class MemoryTask : public AsynchronousTask
		{
			protected:
				static SaveLocationStruct saveData[];
				MemoryTask(SmartPointer<Callbacks::Callback> callback = 0) : AsynchronousTask(callback) { }
			public:
				virtual ~MemoryTask() { if (callback) { callback = 0; } }
		};
	}
}

#endif /* INCLUDE_TASKS_MEMORY_MEMORYTASK_H_ */
