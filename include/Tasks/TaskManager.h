/*
 * CallbackManager.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef TASKMANAGER_H_
#define TASKMANAGER_H_

#include "Collections/Lists.h"

namespace Tasks
{
	class Task;

	class TaskManager
	{
	private:
		static Collections::Lists::ArrayList<Task*> tasks;
		static Collections::Lists::LinkedList<Task*> tasksToRemove;
		TaskManager();
		~TaskManager();
	public:
		static void AddTask(Task* callback);
		static void RemoveTask(Task* callback);
		static void Update();
	};
}

#endif /* TASkMANAGER_H_ */
