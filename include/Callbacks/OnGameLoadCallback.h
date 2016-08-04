/*
 * OnGameLoadCallback.h
 *
 *  Created on: 23 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_ONGAMELOADCALLBACK_H_
#define INCLUDE_CALLBACKS_ONGAMELOADCALLBACK_H_

#include "Callback.h"

namespace Callbacks
{
	class OnGameLoadCallback : public Callback
	{
		public:
			OnGameLoadCallback();
			~OnGameLoadCallback();
			void DoCallback();
	};
}

#endif /* INCLUDE_CALLBACKS_ONGAMELOADCALLBACK_H_ */
