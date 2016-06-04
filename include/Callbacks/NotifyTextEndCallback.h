/*
 * NotifyTextEndCallback.h
 *
 *  Created on: 1 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_NOTIFYTEXTENDCALLBACK_H_
#define INCLUDE_CALLBACKS_NOTIFYTEXTENDCALLBACK_H_

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
	class NotifyTextEndCallback : public Callback
	{
		private:
		Tasks::ScriptRunners::ScriptRunner* runner;
		public:
			NotifyTextEndCallback(Tasks::ScriptRunners::ScriptRunner* runner);
			~NotifyTextEndCallback();
			void DoCallback();
	};
}




#endif /* INCLUDE_CALLBACKS_NOTIFYTEXTENDCALLBACK_H_ */
