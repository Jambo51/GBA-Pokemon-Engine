#ifndef POKEMON_H
#define POKEMON_H

#include "GlobalDefinitions.h"
#include "AbridgedPokemon.h"

class Pokemon
{
private:
	AbridgedPokemon mainData;
	union
	{
		u32 statusAilment;
		PrimaryStatusStruct statusAilmentBits;
	}; // 84
	u8 level; // 85
	u8 alignment; // 86
	u16 currentHP; // 88
	u16 maximumHP; // 90
	u16 attack; // 92
	u16 defence; // 94
	u16 speed; // 96
	u16 specialAttack; // 98
	u16 specialDefence; // 100
	void* GetPokemonSpritePaletteFromPokemon(u32 sideIndex) const;
public:
	Pokemon() { }
	Pokemon(u32 level, u32 species, char* nickname = NULL);
	u32 Decrypt(u8 index) const;
	void Encrypt(u8 index, u32 value);
	void CalculateStats();
	bool AddExperience(u32 exp);
	void* GetFrontSprite() const { return mainData.GetFrontSprite(); }
	void* GetBackSprite() const { return mainData.GetBackSprite(); }
	void* GetPalette() const { return mainData.GetPalette(); }
	bool IsShiny() const { return mainData.IsShiny(); }
	u32 CalculateHighestIVIndex() const { return mainData.CalculateHighestIVIndex(); }
	u32 CalculateCharacteristicIndex() const { return mainData.CalculateCharacteristicIndex(); }
	u32 GetCatchRate() const { return mainData.GetCatchRate(); }
	u32 GetBaseExperience() const { return mainData.GetBaseExperience(); }
	u32 GetEVGain() const { return mainData.GetEVGain(); }
	void* GetPokeballSprite() const { return mainData.GetPokeballSprite(); }
	void* GetPokeballPalette() const { return mainData.GetPokeballPalette(); }
	const AbridgedPokemon & GetMainData() const { return mainData; }
	static Pokemon* GenerateWildPokemonFromData(WildData* initData);
	static Pokemon* GenerateEgg(Pokemon* mother, Pokemon* father);
	static void GivePokemonToPlayer(u8 level, u16 species, u32 formeIndex = 0);
	static Pokemon* GenerateTrainerPokemon(u8 level, u16 species, char* trainerName, u32 id, u32 formeIndex = 0);
	static u16 FindBabySpeciesInner(u16 sourceSpecies) { return AbridgedPokemon::FindBabySpeciesInner(sourceSpecies); }
};

#endif
