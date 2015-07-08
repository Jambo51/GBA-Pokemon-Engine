/*
 * Items.cpp
 *
 *  Created on: 16 Jun 2015
 *      Author: Jamie
 */

#include "Items.h"

Item Items::items[] = { };

Items::Items()
{
	// TODO Auto-generated constructor stub

}

Items::~Items()
{
	// TODO Auto-generated destructor stub
}

u32 Items::GetItemEffect(u16 itemID)
{
	return items[itemID].effect;
}

u32 Items::GetItemCategory(u16 itemID)
{
	return items[itemID].category;
}

u32 Items::GetItemStrength(u16 itemID)
{
	return items[itemID].strength;
}

u32 Items::GetItemIndexNumber(u16 itemID)
{
	return items[itemID].index;
}
