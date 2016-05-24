/*
 * AbridgedPokemon.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef ABRIDGEDPOKEMON_H_
#define ABRIDGEDPOKEMON_H_

#include "GlobalDefinitions.h"

typedef struct PPBonusStruct {
	u8 move1PPBonus:2;
	u8 move2PPBonus:2;
	u8 move3PPBonus:2;
	u8 move4PPBonus:2;
} PPBonusStruct;

typedef struct IVStruct {
	u32 hpIV:5;
	u32 attackIV:5;
	u32 defenceIV:5;
	u32 speedIV:5;
	u32 specialAttackIV:5;
	u32 specialDefenceIV:5;
	u32 isEgg:1;
	u32 isObedient:1; // 76
} IVStruct;

namespace Core
{
	namespace Pokemon
	{
	class AbridgedPokemon
	{
		protected:
			static void* spriteLookupFromIndices[];
			static u16 numberOfPokemon;
			u32 personalityID; // 4
			u32 originalTrainerID; // 8
			char nickname[11]; // 19
			u8 ability; // 20
			char originalTrainerName[PlayerNameLength]; // 27
			u8 mark; // 28
			u16 checksum; // 30
			u8 gender; // 31
			u8 nature; // 32
			u16 species; // 34
			u16 heldItem; // 36
			u32 experience:21;
			u32 formeValue:9;
			u32 forceShiny:1;
			u32 hasHiddenAbility:1; // 40
			union
			{
				PPBonusStruct ppBonusesSplit;
				u8 ppBonuses; // 41
			};
			union
			{
				u8 friendship;
				u8 eggCycleCounter;
			}; // 42
			u8 type1; // 43
			u8 type2; // 44
			u16 move1; // 46
			u16 move2; // 48
			u16 move3; // 50
			u16 move4; // 52
			u8 move1PP; // 53
			u8 move2PP; // 54
			u8 move3PP; // 55
			u8 move4PP; // 56
			u8 hpEV; // 57
			u8 attackEV; // 58
			u8 defenceEV; // 59
			u8 speedEV; // 60
			u8 specialAttackEV; // 61
			u8 specialDefenceEV; // 62
			u8 coolness; // 63
			u8 beauty; // 64
			u8 cuteness; // 65
			u8 smartness; // 66
			u8 toughness; // 67
			u8 feel; // 68
			u8 pokerusStatus:1;
			u8 pokeBall:7; // 69
			u8 metLocation; // 70
			u8 catchLevel; // 71
			union
			{
				u8 pokerusInformation;
				PokerusField pokerusInformationField;
			}; // 72
			IVStruct ivStruct;
			u32 ribbons; // 80

			u32 GeneratePID();
			u32 GenerateIV();
			void GenerateAllIVs();
			void SetGender();
			void SetNature(u8 forcedNatureValue = 0xFF);
		public:
			AbridgedPokemon() { memset32((void*)this, 0, sizeof(AbridgedPokemon) >> 2); }
			AbridgedPokemon(u32 species, u32 level, char* nickname = NULL);
			~AbridgedPokemon();
			u16 CalculateChecksum();
			void SetOTName(u8* nameString);
			void SetNickname(u8* nameString);
			u32 SumEVs() const;
			bool AllowEVAddition(u32 value, u32 index) const;
			u32 Decrypt(u8 index) const;
			void Encrypt(u8 index, u32 value);
			bool IsFullyEvolved() const;
			bool ExperienceGainCausesLevelUp(u32 experience, u8 level);
			u32 GetLevel100MaxExperience();
			u32 GetExperienceAtLevel(u32 level);
			void SetBaseExperienceFromLevel(u32 level);
			void GiveHeldItemFromTrainerData();
			void GiveHeldItemFromBaseData();
			void GivePokemonAbility(bool isHiddenAbility);
			void SetBaseFriendship(bool isBattle);
			void SetBasicTypes();
			u8 GetUnownLetterFromPID(u32 pid);
			void SetFormeByUnownLetter();
			void SetMoves(u32 currentLevel);
			u32 GetClampedFormeByteValue(IndexTable* indexToRead) const;
			u32 GetCatchRate() const;
			u32 GetBaseExperience() const;
			u32 GetEVGain() const;
			void* GetPokeballSprite() const;
			void* GetPokeballPalette() const;
			void* GetPokemonSpritePaletteFromPokemon(u32 sideIndex) const;
			void* GetFrontSprite() const;
			void* GetBackSprite() const;
			void* GetPalette() const;
			bool IsShiny() const;
			u32 CalculateHighestIVIndex() const;
			u32 CalculateCharacteristicIndex() const;
			bool AddExperience(u32 exp, u32 level);
			bool HasMove(u16 moveID) const;
			const PPBonusStruct & GetPPBonuses() const { return ppBonusesSplit; }
			static u16 FindBabySpeciesInner(u16 sourceSpecies);
			static void DeleteAbridgedPokemon(AbridgedPokemon* p);
		};
	}
}

#endif /* ABRIDGEDPOKEMON_H_ */
