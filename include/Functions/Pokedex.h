#ifndef POKEDEX_H
#define POKEDEX_H

#include "Data/GlobalDefinitions.h"

int CountDexPokemon(u32 dexMode, u32 flagMode);
int CountSeenPokemon(u32 mode);
int CountCaughtPokemon(u32 mode);
int ConvertNationalIDToRegionalID(u32 index, u32 mode);
int ConstructPokedexEntries(u32 mode, DexEntry* dexLocation, u32 startPoint);
void DestroyPokedex();
void ConstructPokedex(u32 mode);

#endif
