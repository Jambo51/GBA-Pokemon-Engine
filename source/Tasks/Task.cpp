/*
 * Task.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "Task.h"
#include "TaskManager.h"
namespace Tasks
{
	Task::Task()
	{
		// TODO Auto-generated constructor stub
		TaskManager::AddTask(this);
	}

	Task::~Task()
	{
		// TODO Auto-generated destructor stub
	}
}
