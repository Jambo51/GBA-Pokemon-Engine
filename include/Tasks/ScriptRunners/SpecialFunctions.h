/*
 * SpecialFunctions.h
 *
 *  Created on: 9 Jul 2015
 *      Author: Jamie
 */

#ifndef INCLUDE_SPECIALFUNCTIONS_H_
#define INCLUDE_SPECIALFUNCTIONS_H_

class ScriptRunner;

extern u16 EmptySpecial(ScriptRunner* runner);
extern u16 Special0HealParty(ScriptRunner* runner);
extern u16 Special38PlayTrainerMusic(ScriptRunner* runner);
extern u16 SpecialB5BufferDaycarePokemonNames(ScriptRunner* runner);
extern u16 SpecialB6GetDayCareStatus(ScriptRunner* runner);
extern u16 SpecialC8WhiteOut(ScriptRunner* runner);
extern u16 SpecialD4EvaluatePokedex(ScriptRunner* runner);
extern u16 SpecialEFClearParty(ScriptRunner* runner);
extern u16 Special193IsNationalDexActive(ScriptRunner* runner);
extern u16 Special1B0IsNationalDexComplete(ScriptRunner* runner);

#endif /* INCLUDE_SPECIALFUNCTIONS_H_ */
