/*
 * SingleWildBattle.h
 *
 *  Created on: 24 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_SCENES_BATTLES_SINGLEWILDBATTLE_H_
#define INCLUDE_SCENES_BATTLES_SINGLEWILDBATTLE_H_

#include "WildBattle.h"

namespace Scenes
{
	namespace Battles
	{
		class SingleWildBattle : public WildBattle
		{
		public:
			SingleWildBattle(const BattleTypeStruct &bts);
			~SingleWildBattle();
			void Update();
			void SkipGeneration(bool value) { if (value) { currentStatus = 1; } else { currentStatus = 0; } }
			void OnExit();
			void OnEnter();
		};
	}
}



#endif /* INCLUDE_SCENES_BATTLES_SINGLEWILDBATTLE_H_ */
