/*
 * ReturnToMenuCallback.h
 *
 *  Created on: 3 Aug 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_RETURNTOMENUCALLBACK_H_
#define INCLUDE_CALLBACKS_RETURNTOMENUCALLBACK_H_

#include "Callback.h"

namespace Callbacks
{
	class ReturnToMenuCallback : public Callback
	{
		public:
			ReturnToMenuCallback() : Callback()
			{

			}
			~ReturnToMenuCallback()
			{

			}
			void DoCallback();
	};
}

#endif /* INCLUDE_CALLBACKS_RETURNTOMENUCALLBACK_H_ */
