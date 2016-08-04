/*
 * SaveGameTask.cpp
 *
 *  Created on: 19 Jun 2016
 *      Author: CoolerMaster
 */

#include "Tasks/Memory/SaveGameTask.h"
#include "Core/FlashFunctions.h"

using namespace Core;

namespace Tasks
{
	namespace Memory
	{
		SaveGameTask::SaveGameTask(SmartPointer<Callbacks::Callback> callback) : MemoryTask(callback)
		{
		}

		SaveGameTask::~SaveGameTask()
		{
		}

		bool SaveGameTask::SubTaskUpdate()
		{
			if ((u32)MemoryTask::saveData[AsynchronousTask::currentSubTaskID].destinationPosition != 0xFFFFFFFF)
			{
				FlashFunctions::WriteToFlash((SaveLocationStruct*)&MemoryTask::saveData[AsynchronousTask::currentSubTaskID]);
				AsynchronousTask::currentSubTaskID++;
				return false;
			}
			return true;
		}
	}
}
