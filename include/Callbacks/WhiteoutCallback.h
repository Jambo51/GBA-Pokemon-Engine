/*
 * WhiteoutCallback.h
 *
 *  Created on: 1 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_WHITEOUTCALLBACK_H_
#define INCLUDE_CALLBACKS_WHITEOUTCALLBACK_H_

#include "Callback.h"

namespace Callbacks
{
	class WhiteoutCallback : public Callback
	{
		public:
			WhiteoutCallback();
			~WhiteoutCallback();
			void DoCallback();
	};
}

#endif /* INCLUDE_CALLBACKS_WHITEOUTCALLBACK_H_ */
