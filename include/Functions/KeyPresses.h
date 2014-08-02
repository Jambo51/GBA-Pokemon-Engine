/*
 * KeyPresses.h
 *
 *  Created on: 20 Dec 2013
 *      Author: Jamie
 */

#ifndef KEYPRESSES_H
#define KEYPRESSES_H

#include "Data/GlobalDefinitions.h"

void IgnoreKeyPresses();
void PokemonInfoScreenKeyPresses();
void SetKeyIgnored(u8 keyID, u8 framesOffDefaultDeadTime);
extern u8 IsKeyHeld(u8 keyID);
extern u8 IsKeyDown(u8 keyID);
u8 IsKeyDownButNotHeld(u8 keyID);
u8 IsDPadDown();
extern s32 GetHorizontalKeyState();
extern s32 GetVerticalKeyState();
void KeyPoll();

#endif /* KEYPRESSES_H_ */
