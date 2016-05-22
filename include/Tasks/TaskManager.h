/*
 * CallbackManager.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef CALLBACKMANAGER_H_
#define CALLBACKMANAGER_H_

#include "LinkedList.h"

namespace Tasks
{
	class Task;

	class TaskManager
	{
	private:
		static LinkedList tasks;
		static LinkedList tasksToRemove;
		TaskManager();
		~TaskManager();
	public:
		static void AddTask(Task* callback);
		static void RemoveTask(Task* callback);
		static void Update();
	};
}

#endif /* CALLBACKMANAGER_H_ */
