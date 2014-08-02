#ifndef POKEMONBASEDATA_H
#define POKEMONBASEDATA_H

#include "GlobalDefinitions.h"

extern u8 pokemonNames[650][11];
extern u8 natureNames[25][7];
extern u8 natureEffects[25][5];
extern u32 pokemonBaseExperiences[6][100];
extern char* characteristicsStrings[5][6];
extern MoveData moveData[];
extern void* movesets[];

#endif
