/*
 * ReleaseWaitingScriptRunnerCallback.h".cpp
 *
 *  Created on: 26 May 2016
 *      Author: CoolerMaster
 */

#include "Callbacks/ReleaseWaitingScriptRunnerCallback.h"
#include "Tasks.h"

using namespace Tasks::ScriptRunners;

namespace Callbacks
{
	ReleaseWaitingScriptRunnerCallback::ReleaseWaitingScriptRunnerCallback(ScriptRunner* runner)
	{
		this->runner = runner;
	}

	ReleaseWaitingScriptRunnerCallback::~ReleaseWaitingScriptRunnerCallback()
	{

	}

	void ReleaseWaitingScriptRunnerCallback::DoCallback()
	{
		if (runner)
		{
			runner->SetWaitFrames(0);
		}
	}
}
