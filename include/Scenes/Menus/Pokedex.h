#ifndef POKEDEX_H
#define POKEDEX_H

#include "Scenes/Scene.h"

#define REGIONAL_DEX_LENGTH 152

namespace Scenes
{
	class Pokedex : public Scene
	{
	private:
		static PokedexData pokedexData[];
		static u16 pokedexFormeLookup[];
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
		static PokedexData* GetPokedexDataByIndex(u32 index)
		{
			if (index < NumberOfPokemon)
			{
				return (PokedexData*)&pokedexData[index];
			}
			return (PokedexData*)&pokedexData[0];
		}
	};
}
#endif
