/*
 * DoubleWildBattle.h
 *
 *  Created on: 24 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_SCENES_BATTLES_DOUBLEWILDBATTLE_H_
#define INCLUDE_SCENES_BATTLES_DOUBLEWILDBATTLE_H_

#include "WildBattle.h"

namespace Scenes
{
	namespace Battles
	{
		class DoubleWildBattle : public WildBattle
		{
		public:
			DoubleWildBattle(const BattleTypeStruct &bts);
			~DoubleWildBattle();
			void Update();
			void SetPokemonTwo(const Core::Pokemon::Pokemon &p) { enemyPokemon[1] = p; }
			void SkipGeneration(bool value) { if (value) { currentStatus = 2; } else { currentStatus = 0; } }
			void OnExit();
			void OnEnter();
		};
	}
}



#endif /* INCLUDE_SCENES_BATTLES_DOUBLEWILDBATTLE_H_ */
