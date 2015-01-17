/*
 * Overworld.h
 *
 *  Created on: 9 Nov 2013
 *      Author: Jamie
 */

#ifndef OVERWORLD_H_
#define OVERWORLD_H_

#include "Data/GlobalDefinitions.h"

u8 CalculateNumberOfFramesPerChange(u8 sizeOfChange, u8 numberOfFrames);
void SetupFadeScreenSlot(u8 lengthInDeciseconds, u8 slot, Colour* targetPalette);
void ClearMenuBox(vu16* location, u32 height, u32 width);
void PlaceMenuBox(vu16* location, u32 height, u32 width);
void SetCheckKeyPressesOverworld();
void AnimateTiles();
void MoveNPCs();
void ScriptingKeyPresses();
void FadeScreen();
void OverworldBackgroundProcesses();
void StartMenuKeyPresses();
void CheckKeyPressesOverworld();
void LoadOverworld();

extern Colour blackPalette[16];
extern Colour whitePalette[16];
extern char* mapNamesTable[];

#endif /* OVERWORLD_H_ */
