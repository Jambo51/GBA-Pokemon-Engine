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
	void SetPokemonOne(const Pokemon &p) { enemyPokemon[0] = p; }
	void SetPokemonTwo(const Pokemon &p) { enemyPokemon[1] = p; }
	void SkipGeneration(bool value) { if (value) { currentStatus = 2; } else { currentStatus = 0; } }
};

#endif /* WILDBATTLE_H_ */
