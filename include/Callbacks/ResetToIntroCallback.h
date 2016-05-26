/*
 * ResetToIntroCallback.h
 *
 *  Created on: 26 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_RESETTOINTROCALLBACK_H_
#define INCLUDE_CALLBACKS_RESETTOINTROCALLBACK_H_

#include "Callback.h"

namespace Callbacks
{
	class ResetToIntroCallback : public Callback
	{
		public:
			ResetToIntroCallback();
			~ResetToIntroCallback();
			void DoCallback();
	};
}


#endif /* INCLUDE_CALLBACKS_RESETTOINTROCALLBACK_H_ */
