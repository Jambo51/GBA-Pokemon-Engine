/*
 * TrainerBattle.h
 *
 *  Created on: 23 Jun 2015
 *      Author: Jamie
 */

#ifndef TRAINERBATTLE_H_
#define TRAINERBATTLE_H_

#include "Battles.h"

class TrainerBattle : public BattleScreen
{
protected:
	static TrainerData trainerBattleDataTable[];
public:
	TrainerBattle(const BattleTypeStruct &bts, u16 trainerID, const char* afterText);
	~TrainerBattle();
	virtual void Update();
};

#endif /* TRAINERBATTLE_H_ */
