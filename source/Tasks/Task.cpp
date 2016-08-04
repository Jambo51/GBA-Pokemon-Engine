/*
 * Task.cpp
 *
 *  Created on: 18 Jun 2016
 *      Author: CoolerMaster
 */

#include "Tasks/Task.h"
#include "Tasks/TaskManager.h"

namespace Tasks
{
	Task::Task(SmartPointer<Callbacks::Callback> callback)
	{
		this->callback = callback;
		TaskManager::AddTask(this);
	}
}
