/*
 * WildBattle.h
 *
 *  Created on: 23 Jun 2015
 *      Author: Jamie
 */

#ifndef WILDBATTLE_H_
#define WILDBATTLE_H_

#include "Battle.h"

namespace Scenes
{
	namespace Battles
	{
		class WildBattle : public Battle
		{
		public:
			WildBattle(const BattleTypeStruct &bts);
			~WildBattle();
			void SetPokemonOne(const Core::Pokemon::Pokemon &p) { enemyPokemon[0] = p; }
			virtual void SkipGeneration(bool value) = 0;
		};
	}
}

#endif /* WILDBATTLE_H_ */
