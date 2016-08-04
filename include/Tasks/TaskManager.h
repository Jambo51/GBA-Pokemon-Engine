/*
 * CallbackManager.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef TASKMANAGER_H_
#define TASKMANAGER_H_

#include "Collections/Lists.h"
#include "Tasks/Task.h"
#include "SmartPointer.h"

namespace Tasks
{
	class Task;

	class TaskManager
	{
	private:
		static Collections::Lists::ArrayList<SmartPointer<Task> > tasks;
		static Collections::Lists::LinkedList<SmartPointer<Task> > tasksToRemove;
		TaskManager();
		~TaskManager();
	public:
		static void AddTask(SmartPointer<Task> callback);
		static void Update();
	};
}

#endif /* TASkMANAGER_H_ */
