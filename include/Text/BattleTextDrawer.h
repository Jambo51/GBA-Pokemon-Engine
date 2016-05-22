/*
 * BattleTextDrawer.h
 *
 *  Created on: 4 Aug 2015
 *      Author: Jamie
 */

#ifndef BATTLETEXTDRAWER_H_
#define BATTLETEXTDRAWER_H_

#include "TextDrawer.h"
namespace Text
{
	class BattleTextDrawer : public TextDrawer
	{
	public:
		BattleTextDrawer(char* newString, u8 x, u8 y, u32 speed, void (*endFunction)(u32), u32 functionData, u32 inkColour = 3);
		~BattleTextDrawer();
		void Initialise();
	};
}

#endif /* BATTLETEXTDRAWER_H_ */
