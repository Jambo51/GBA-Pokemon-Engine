#ifndef POKEDEX_H
#define POKEDEX_H

#include "GameScreen.h"

#define REGIONAL_DEX_LENGTH 152

class Pokedex : public GameScreen
{
private:
	static char* emptyName;
	static u16 regionalValues[];
	static u16* dexModeConversionTable[];
	static u16 dexLengths[];
	PokedexMemoryData dexData;
public:
	Pokedex(u32 mode);
	~Pokedex();
	static u16 ConvertNationalIDToRegionalID(u32 index, u32 mode);
	static bool IsPokemonInRegional(u32 pokemonIndex);
	u32 ConstructPokedexEntries(u32 mode, u32 startPoint);
};
#endif
