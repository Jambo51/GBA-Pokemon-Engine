/*
 * AsynchronousTask.cpp
 *
 *  Created on: 18 Jun 2016
 *      Author: CoolerMaster
 */

#include "Tasks/AsynchronousTask.h"

namespace Tasks
{
	AsynchronousTask::AsynchronousTask(SmartPointer<Callbacks::Callback> callback) : Task(callback)
	{
		currentSubTaskID = 0;
	}

	AsynchronousTask::~AsynchronousTask()
	{
	}

	bool AsynchronousTask::Update()
	{
		return SubTaskUpdate();
	}
}
