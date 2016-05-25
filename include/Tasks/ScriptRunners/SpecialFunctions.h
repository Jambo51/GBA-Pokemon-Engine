/*
 * SpecialFunctions.h
 *
 *  Created on: 9 Jul 2015
 *      Author: Jamie
 */

#ifndef INCLUDE_SPECIALFUNCTIONS_H_
#define INCLUDE_SPECIALFUNCTIONS_H_

namespace Tasks
{
	namespace ScriptRunners
	{
		class ScriptRunner;
	}
}

extern u16 EmptySpecial(Tasks::ScriptRunners::ScriptRunner* runner);
extern u16 Special0HealParty(Tasks::ScriptRunners::ScriptRunner* runner);
extern u16 Special38PlayTrainerMusic(Tasks::ScriptRunners::ScriptRunner* runner);
extern u16 SpecialB5BufferDaycarePokemonNames(Tasks::ScriptRunners::ScriptRunner* runner);
extern u16 SpecialB6GetDayCareStatus(Tasks::ScriptRunners::ScriptRunner* runner);
extern u16 SpecialC8WhiteOut(Tasks::ScriptRunners::ScriptRunner* runner);
extern u16 SpecialD4EvaluatePokedex(Tasks::ScriptRunners::ScriptRunner* runner);
extern u16 SpecialEFClearParty(Tasks::ScriptRunners::ScriptRunner* runner);
extern u16 Special193IsNationalDexActive(Tasks::ScriptRunners::ScriptRunner* runner);
extern u16 Special1B0IsNationalDexComplete(Tasks::ScriptRunners::ScriptRunner* runner);

#endif /* INCLUDE_SPECIALFUNCTIONS_H_ */
