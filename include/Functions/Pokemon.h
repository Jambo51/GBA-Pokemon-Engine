#ifndef POKEMON_H
#define POKEMON_H

#include "Data/GlobalDefinitions.h"

extern u16 numberOfPokemon;

u32 InternalPokemonDecrypter(AbridgedPokemon* thePokemon, u8 index);
u32 PokemonDecrypter(Pokemon* thePokemon, u8 index);
u32 CountPokemon(Pokemon* location, u32 length);
u32 CountPartyPokemon();
u32 CountEnemyPartyPokemon();
u32 CountBoxPokemon(u32 boxID);
u32 CountAllBoxPokemon();
void SetOTName(AbridgedPokemon* thePokemon, u8* nameString);
void SetNickname(AbridgedPokemon* thePokemon, u8* nameString);
u16 CalculateChecksum(u16* thePokemon);
u32 SumEVs(AbridgedPokemon* thePokemon);
bool AllowEVAddition(AbridgedPokemon* thePokemon, u32 value, u32 index);
u32 GetExperienceAtLevel(u16 species, u8 level);
u32 GetLevel100MaxExperience(u16 species);
u32 ExperienceGainCausesLevelUp(u16 species, u32 experience, u8 level);
void InternalPokemonEncrypter(AbridgedPokemon* thePokemon, u8 index, u32 value);
void PokemonEncrypter(Pokemon* thePokemon, u8 index, u32 value);
u32 HappinessCheck(Pokemon* thePokemon);
u32 LevelCheck(Pokemon* thePokemon, u32 theLevel);
u32 TimeCheck();
u32 GenderCheck(Pokemon* thePokemon, u32 targetGender);
u32 HeldItemCheck(Pokemon* thePokemon, u32 targetItem);
u32 KnownMoveCheck(Pokemon* thePokemon, u32 targetMove);
u32 CheckLevelUpEvolutions(Pokemon* thePokemon);
u32 CheckTradeEvolutions(Pokemon* incomingPokemon, Pokemon* outgoingPokemon);
u32 CheckStoneEvolutions(Pokemon* thePokemon, u16 itemID);
void AddExperienceToPokemon(Pokemon* thePokemon, u32 experience);
bool PokemonIsShiny(Pokemon* thePokemon);
u32 CalculateHighestIVIndex(Pokemon* thePokemon);
u32 CalculateCharacteristicIndex(Pokemon* thePokemon);
void GeneratePID(Pokemon* thePokemon);
u32 GenerateIV();
void GenerateAllIVs(Pokemon* thePokemon);
void SetGender(Pokemon* thePokemon);
void SetNature(Pokemon* thePokemon, u8 forcedNatureValue);
u32 GetClampedFormeByteValue(Pokemon* thePokemon, IndexTable* indexToRead);
u8 GetBaseStatFromIndex(u16 species, u8 statIndex);
void CalculateStats(Pokemon* thePokemon);
void GiveHeldItemFromTrainerData(Pokemon* thePokemon);
void GiveHeldItemFromBaseData(Pokemon* thePokemon);
void GivePokemonAbility(Pokemon* thePokemon, bool isHiddenAbility);
void SetBaseFriendship(Pokemon* thePokemon, bool isBattle);
void SetBaseExperienceFromLevel(Pokemon* thePokemon);
void SetBasicTypes(Pokemon* thePokemon);
u8 GetUnownLetterFromPID(u32 pid);
void SetFormeByUnownLetter(Pokemon* thePokemon);
void CheckIfCanLearnNewMoveAndLearnIfWanted(Pokemon* thePokemon);
void SetMoves(Pokemon* thePokemon);
u32 GetCatchRateFromPokemon(Pokemon* thePokemon);
void* GetPokeballSpriteFromPokemon(Pokemon* thePokemon);
void* GetPokeballPaletteFromPokemon(Pokemon* thePokemon);
void* GetPokemonSpritePaletteFromPokemon(Pokemon* thePokemon, u32 sideIndex);
void* GetPokemonFrontSpriteFromPokemon(Pokemon* thePokemon);
void* GetPokemonBackSpriteFromPokemon(Pokemon* thePokemon);
void* GetPokemonPaletteFromPokemon(Pokemon* thePokemon);
void GeneratePokemon(Pokemon* thePokemon, u8 level, u16 species);
void GivePokemonToPlayer(Pokemon* thePokemon, u8 level, u16 species, u32 formeIndex);
void PokemonInfoScreenInitialise();

#endif
