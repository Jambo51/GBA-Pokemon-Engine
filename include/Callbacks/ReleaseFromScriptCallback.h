/*
 * ReleaseFromScriptCallback.h
 *
 *  Created on: 3 Aug 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_RELEASEFROMSCRIPTCALLBACK_H_
#define INCLUDE_CALLBACKS_RELEASEFROMSCRIPTCALLBACK_H_

#include "Callback.h"

namespace Callbacks
{
	class ReleaseFromScriptCallback : public Callback
	{
		public:
			ReleaseFromScriptCallback() : Callback()
			{

			}
			~ReleaseFromScriptCallback()
			{

			}
			void DoCallback();
	};
}

#endif /* INCLUDE_CALLBACKS_RELEASEFROMSCRIPTCALLBACK_H_ */
