/*
 * Items.h
 *
 *  Created on: 16 Jun 2015
 *      Author: Jamie
 */

#ifndef ITEMS_H_
#define ITEMS_H_

#include "GlobalDefinitions.h"
#include "String.h"

namespace Text
{
	class String;
}

namespace Core
{
	namespace Data
	{
		typedef struct Item {
			char name[14];
			u16 index;
			u16 price;
			u8 effect;
			u8 strength;
			char* description;
			u16 mysteryValue;
			u8 category;
			u8 type;
			VoidFunctionPointerVoid FieldUse;
			u32 battleUsageCategory;
			VoidFunctionPointerVoid BattleUsage;
			u32 unknown;
		} Item;

		enum ItemCategories { Item_Category_Items, Item_Category_Balls, Item_Category_TMsAndHMs, Item_Category_Berries, Item_Category_KeyItems };

		class Items
		{
		private:
			static Item items[];
			Items();
			~Items();
		public:
			static u32 GetItemEffect(u16 itemID);
			static u32 GetItemCategory(u16 itemID);
			static u32 GetItemStrength(u16 itemID);
			static u32 GetItemIndexNumber(u16 itemID);
			static char* GetItemName(u16 itemID);
			static Text::String* GetPluralisedItemName(u16 itemID);
		};
	}
}

#endif /* ITEMS_H_ */
