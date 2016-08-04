/*
 * OnGameSaveCallback.h
 *
 *  Created on: 23 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_ONGAMESAVECALLBACK_H_
#define INCLUDE_CALLBACKS_ONGAMESAVECALLBACK_H_

#include "Callback.h"

namespace Callbacks
{
	class OnGameSaveCallback : public Callback
	{
		public:
			OnGameSaveCallback();
			~OnGameSaveCallback();
			void DoCallback();
	};
}



#endif /* INCLUDE_CALLBACKS_ONGAMESAVECALLBACK_H_ */
