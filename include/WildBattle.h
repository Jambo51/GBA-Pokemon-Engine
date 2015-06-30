/*
 * WildBattle.h
 *
 *  Created on: 23 Jun 2015
 *      Author: Jamie
 */

#ifndef WILDBATTLE_H_
#define WILDBATTLE_H_

#include "Battles.h"

class WildBattle : public BattleScreen
{
public:
	WildBattle(const BattleTypeStruct &bts);
	~WildBattle();
	void Update();
};

#endif /* WILDBATTLE_H_ */
