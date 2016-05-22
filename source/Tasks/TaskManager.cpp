/*
 * TaskManager.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "TaskManager.h"
#include "Task.h"

namespace Tasks
{
	EWRAM_LOCATION ALIGN(4) LinkedList TaskManager::tasks = LinkedList();
	EWRAM_LOCATION ALIGN(4) LinkedList TaskManager::tasksToRemove = LinkedList();

	TaskManager::TaskManager()
	{
		// TODO Auto-generated constructor stub

	}

	TaskManager::~TaskManager()
	{
		// TODO Auto-generated destructor stub
	}

	void TaskManager::AddTask(Task* Task)
	{
		tasks.PushBack((void*)Task);
	}

	void TaskManager::RemoveTask(Task* Task)
	{
		tasksToRemove.PushBack((void*)Task);
	}

	void TaskManager::Update()
	{
		for (int i = 0; i < tasks.Size(); i++)
		{
			((Task*)tasks[i])->Update();
		}
		for (int i = 0; i < tasksToRemove.Size(); i++)
		{
			Task* cb = (Task*)tasksToRemove[i];
			tasks.Remove(cb);
			delete cb;
		}
		if (tasksToRemove.Size())
		{
			tasksToRemove.Clear();
		}
	}
}
