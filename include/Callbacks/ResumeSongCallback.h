/*
 * ResumeSongCallback.h
 *
 *  Created on: 26 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CALLBACKS_RESUMESONGCALLBACK_H_
#define INCLUDE_CALLBACKS_RESUMESONGCALLBACK_H_

#include "Callback.h"

namespace Callbacks
{
	class ResumeSongCallback : public Callback
	{
		public:
			ResumeSongCallback();
			~ResumeSongCallback();
			void DoCallback();
	};
}

#endif /* INCLUDE_CALLBACKS_RESUMESONGCALLBACK_H_ */
