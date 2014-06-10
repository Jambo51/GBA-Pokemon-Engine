/*
 * CallbackSystem.h
 *
 *  Created on: 7 May 2014
 *      Author: Jamie
 */

#ifndef CALLBACKSYSTEM_H_
#define CALLBACKSYSTEM_H_

void AddFunction(void (*Function)(u32), u32 data);
void RemoveFunctionByID(u32 functionID);
void RemoveFunctionByPointer(void (*Function)(u32));
void RunCallbackSystem();

#endif /* CALLBACKSYSTEM_H_ */
