/*
 * ReleaseWaitingScriptRunnerCallback.h
 *
 *  Created on: 31 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_RELEASEWAITINGSCRIPTRUNNERCALLBACK_H_
#define INCLUDE_CALLBACKS_RELEASEWAITINGSCRIPTRUNNERCALLBACK_H_

#include "Callback.h"

namespace Tasks
{
	namespace ScriptRunners
	{
		class ScriptRunner;
	}
}

namespace Callbacks
{
	class ReleaseWaitingScriptRunnerCallback : public Callback
	{
		private:
		Tasks::ScriptRunners::ScriptRunner* runner;
		public:
			ReleaseWaitingScriptRunnerCallback(Tasks::ScriptRunners::ScriptRunner* runner);
			~ReleaseWaitingScriptRunnerCallback();
			void DoCallback();
	};
}



#endif /* INCLUDE_CALLBACKS_RELEASEWAITINGSCRIPTRUNNERCALLBACK_H_ */
