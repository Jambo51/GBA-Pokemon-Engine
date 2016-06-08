/*
 * OverworldScriptRunner.h
 *
 *  Created on: 12 Jun 2015
 *      Author: Jamie
 */

#ifndef OVERWORLDSCRIPTRUNNER_H_
#define OVERWORLDSCRIPTRUNNER_H_

#include "Tasks/ScriptRunners/ScriptRunner.h"

namespace Tasks
{
	namespace ScriptRunners
	{
		class OverworldScriptRunner : public ScriptRunner
		{
		private:
			static U32FunctionPointerScriptRunner overworldCommands[0xFF];
			static u8* errorScript;
			bool pokePic;
			u8 xPos;
			u8 yPos;
		public:
			OverworldScriptRunner(u8* script);
			~OverworldScriptRunner();
			bool PokePic() { return pokePic; }
			void PokePic(bool value, u8 xPos = 0, u8 yPos = 0)
			{
				pokePic = value;
				this->xPos = xPos;
				this->yPos = yPos;
			}
			u8 PokePicXPos() { return xPos; }
			u8 PokePicYPos() { return yPos; }
		};
	}
}

#endif /* OVERWORLDSCRIPTRUNNER_H_ */
