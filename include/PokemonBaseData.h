#ifndef POKEMONBASEDATA_H
#define POKEMONBASEDATA_H

#include "GlobalDefinitions.h"

#ifdef __cplusplus
extern "C" {
#endif

extern u8 pokemonNames[NumberOfPokemon][11];
extern u8 natureNames[25][7];
extern u8 natureEffects[25][5];
extern u32 pokemonBaseExperiences[6][100];
extern char* characteristicsStrings[5][6];
extern MoveData moveData[NumberOfMoves];
extern void* movesets[NumberOfPokemon];
extern char abilityNames[188][13];
extern char moveNames[NumberOfMoves][16];
extern PokedexData pokedexData[NumberOfPokemon];

#ifdef __cplusplus
}
#endif

#endif
