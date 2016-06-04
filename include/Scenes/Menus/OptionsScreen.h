/*
 * OptionsScreen.h
 *
 *  Created on: 26 May 2015
 *      Author: Jamie
 */

#ifndef SOURCE_OPTIONSSCREEN_H_
#define SOURCE_OPTIONSSCREEN_H_

#include "Scenes/Scene.h"

namespace Scenes
{
	namespace Menus
	{
		class OptionsScreen : public Scene
		{
		private:
			u32 menuPosition;
			u32 previousMenuPosition;
			u32 optionValues[6];
			static char* textSpeedStrings[];
			static char* battleAnimationStrings[];
			static char* battleSwitchingStrings[];
			static char* soundStrings[];
			static char* unitsStrings[];
		public:
			OptionsScreen(u32 exitContext, u32 previousMenuPosition);
			~OptionsScreen();
			void Update();
			void OnExit();
			void OnEnter();
			void IncrementMenuPosition();
			void DecrementMenuPosition();
			void Save();
			void IncrementValueAt();
			void DecrementValueAt();
			u32 GetMenuPosition() const { return menuPosition; }
		};
	}
}

#endif /* SOURCE_OPTIONSSCREEN_H_ */
