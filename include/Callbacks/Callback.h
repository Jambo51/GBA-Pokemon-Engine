/*
 * Callback.h
 *
 *  Created on: 22 May 2016
 *      Author: CoolerMaster
 */

#ifndef CALLBACK_H_
#define CALLBACK_H_

namespace Callbacks
{

class Callback
{
protected:
	Callback();
public:
	virtual ~Callback();
	virtual void DoCallback() = 0;
};

} /* namespace Callbacks */

#endif /* CALLBACK_H_ */
