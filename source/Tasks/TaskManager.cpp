/*
 * TaskManager.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "Tasks/TaskManager.h"
#include "Tasks/Task.h"

namespace Tasks
{
	EWRAM_LOCATION ALIGN(4) Collections::Lists::ArrayList<Task*> TaskManager::tasks = Collections::Lists::ArrayList<Task*>();
	EWRAM_LOCATION ALIGN(4) Collections::Lists::LinkedList<Task*> TaskManager::tasksToRemove = Collections::Lists::LinkedList<Task*>();

	TaskManager::TaskManager()
	{
		// TODO Auto-generated constructor stub

	}

	TaskManager::~TaskManager()
	{
		// TODO Auto-generated destructor stub
	}

	void TaskManager::AddTask(Task* task)
	{
		tasks.PushBack(task);
	}

	void TaskManager::RemoveTask(Task* task)
	{
		tasksToRemove.PushBack(task);
	}

	void TaskManager::Update()
	{
		for (int i = 0; i < tasks.Size(); i++)
		{
			tasks[i]->Update();
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
