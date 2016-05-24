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
			void Update();
			void SetPokemonOne(const Core::Pokemon::Pokemon &p) { enemyPokemon[0] = p; }
			void SetPokemonTwo(const Core::Pokemon::Pokemon &p) { enemyPokemon[1] = p; }
			void SkipGeneration(bool value) { if (value) { currentStatus = 2; } else { currentStatus = 0; } }
			void OnExit();
			void OnEnter();
		};
	}
}

#endif /* WILDBATTLE_H_ */
