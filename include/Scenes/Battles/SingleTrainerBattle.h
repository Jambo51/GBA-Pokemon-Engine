/*
 * TrainerBattle.h
 *
 *  Created on: 23 Jun 2015
 *      Author: Jamie
 */

#ifndef SINGLETRAINERBATTLE_H_
#define SINGLETRAINERBATTLE_H_

#include "Scenes/Battles/TrainerBattle.h"

namespace Scenes
{
	namespace Battles
	{
		class SingleTrainerBattle : public TrainerBattle
		{
		protected:
		public:
			SingleTrainerBattle(const BattleTypeStruct &bts, u16 trainerID, const char* afterText, const u8* afterBattleScript = 0);
			~SingleTrainerBattle();
			void Update();
			void OnEnter();
			void OnExit();
		};
	}
}

#endif
