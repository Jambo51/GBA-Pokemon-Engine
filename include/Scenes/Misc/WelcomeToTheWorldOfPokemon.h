/*
 * WelcomeToTheWorldOfPokemon.h
 *
 *  Created on: 2 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_SCENES_MISC_WELCOMETOTHEWORLDOFPOKEMON_H_
#define INCLUDE_SCENES_MISC_WELCOMETOTHEWORLDOFPOKEMON_H_

#include "Scenes/Scene.h"

namespace Scenes
{
	namespace Misc
	{
		class WelcomeToTheWorldOfPokemon : public Scene
		{
			private:
				static char* defaultRivalNames[];
				u32 currentInnerScene;
			public:
				WelcomeToTheWorldOfPokemon(u32 varStartValue = 0);
				~WelcomeToTheWorldOfPokemon();
				void Update();
				void OnEnter();
				void OnExit();
		};
	}
}

#endif /* INCLUDE_SCENES_MISC_WELCOMETOTHEWORLDOFPOKEMON_H_ */
