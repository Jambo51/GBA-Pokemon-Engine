/*
 * NotifyTextEndCallback.cpp
 *
 *  Created on: 1 Jun 2016
 *      Author: CoolerMaster
 */
/*
 * NotifyTextEndCallback.h".cpp
 *
 *  Created on: 26 May 2016
 *      Author: CoolerMaster
 */

#include "Callbacks/NotifyTextEndCallback.h"
#include "Tasks.h"

using namespace Tasks::ScriptRunners;

namespace Callbacks
{
	NotifyTextEndCallback::NotifyTextEndCallback(ScriptRunner* runner)
	{
		this->runner = runner;
	}

	NotifyTextEndCallback::~NotifyTextEndCallback()
	{

	}

	void NotifyTextEndCallback::DoCallback()
	{
		if (runner)
		{
			runner->Text(false);
			runner->TextWait(true);
		}
	}
}
