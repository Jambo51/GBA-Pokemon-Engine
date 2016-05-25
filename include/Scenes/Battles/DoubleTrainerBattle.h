/*
 * DoubleTrainerBattle.h
 *
 *  Created on: 24 Jun 2015
 *      Author: Jamie
 */

#ifndef DOUBLETRAINERBATTLE_H_
#define DOUBLETRAINERBATTLE_H_

#include "TrainerBattle.h"

namespace Scenes
{
	namespace Battles
	{
		class DoubleTrainerBattle : public TrainerBattle
		{
		protected:
			Core::Pokemon::Pokemon enemyBank2[6];
		public:
			DoubleTrainerBattle(const BattleTypeStruct &bts, u16 trainerID1, const char* afterText1, u16 trainerID2, const char* afterText2);
			~DoubleTrainerBattle();
			void Update();
			void OnEnter();
			void OnExit();
		};
	}
}

#endif /* DOUBLETRAINERBATTLE_H_ */
