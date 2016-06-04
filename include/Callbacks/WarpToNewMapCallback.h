/*
 * WarpToNewMapCallback.h
 *
 *  Created on: 1 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_WARPTONEWMAPCALLBACK_H_
#define INCLUDE_CALLBACKS_WARPTONEWMAPCALLBACK_H_

#include "Callback.h"

namespace Callbacks
{
	class WarpToNewMapCallback : public Callback
	{
		public:
			WarpToNewMapCallback();
			~WarpToNewMapCallback();
			void DoCallback();
	};
}

#endif /* INCLUDE_CALLBACKS_WARPTONEWMAPCALLBACK_H_ */
