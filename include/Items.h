/*
 * Items.h
 *
 *  Created on: 16 Jun 2015
 *      Author: Jamie
 */

#ifndef ITEMS_H_
#define ITEMS_H_

#include "GlobalDefinitions.h"

class Items
{
private:
	Items();
	~Items();
public:
	static u16 GetItemEffect(u16 itemID);
};

#endif /* ITEMS_H_ */
