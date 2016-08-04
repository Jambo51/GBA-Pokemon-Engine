/*
 * LoadGameTask.cpp
 *
 *  Created on: 19 Jun 2016
 *      Author: CoolerMaster
 */

#include "Tasks/Memory/LoadGameTask.h"
#include "Core.h"

namespace Tasks
{
	namespace Memory
	{
		LoadGameTask::LoadGameTask(SmartPointer<Callbacks::Callback> callback) : MemoryTask(callback)
		{
		}

		LoadGameTask::~LoadGameTask()
		{
		}

		bool LoadGameTask::SubTaskUpdate()
		{
			if ((u32)MemoryTask::saveData[AsynchronousTask::currentSubTaskID].destinationPosition != 0xFFFFFFFF)
			{
				FlashFunctions::ReadFromFlash((SaveLocationStruct*)&MemoryTask::saveData[AsynchronousTask::currentSubTaskID]);
				AsynchronousTask::currentSubTaskID++;
				return false;
			}
			return true;
		}
	}
}
