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
	EWRAM_LOCATION ALIGN(4) Collections::Lists::ArrayList<SmartPointer<Task> > TaskManager::tasks = Collections::Lists::ArrayList<SmartPointer<Task> >();
	EWRAM_LOCATION ALIGN(4) Collections::Lists::LinkedList<SmartPointer<Task> > TaskManager::tasksToRemove = Collections::Lists::LinkedList<SmartPointer<Task> >();

	TaskManager::TaskManager()
	{
		// TODO Auto-generated constructor stub

	}

	TaskManager::~TaskManager()
	{
		// TODO Auto-generated destructor stub
	}

	void TaskManager::AddTask(SmartPointer<Task> task)
	{
		if (!tasks.Contains(task))
		{
			tasks.PushBack(task);
		}
	}

	void TaskManager::Update()
	{
		for (int i = 0; i < tasks.Size(); i++)
		{
			SmartPointer<Task> task = tasks[i];
			if (task->Update())
			{
				if (!tasksToRemove.Contains(task))
				{
					tasksToRemove.PushBack(task);
				}
			}
		}
		for (int i = 0; i < tasksToRemove.Size(); i++)
		{
			tasks.Remove(tasksToRemove[i]);
		}
		if (tasksToRemove.Size() > 0)
		{
			tasksToRemove.Clear();
		}
	}
}
