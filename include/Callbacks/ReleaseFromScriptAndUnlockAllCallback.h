/*
 * ReleaseFromScriptAndUnlockAllCallback.h
 *
 *  Created on: 4 Aug 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_RELEASEFROMSCRIPTANDUNLOCKALLCALLBACK_H_
#define INCLUDE_CALLBACKS_RELEASEFROMSCRIPTANDUNLOCKALLCALLBACK_H_

#include "Callbacks/Callback.h"

namespace Callbacks
{
	class ReleaseFromScriptAndUnlockAllCallback : public Callback
	{
		public:
			ReleaseFromScriptAndUnlockAllCallback() : Callback()
			{

			}
			~ReleaseFromScriptAndUnlockAllCallback()
			{

			}
			void DoCallback();
	};
}

#endif /* INCLUDE_CALLBACKS_RELEASEFROMSCRIPTANDUNLOCKALLCALLBACK_H_ */
