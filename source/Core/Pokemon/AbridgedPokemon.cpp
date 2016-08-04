/*
 * AbridgedPokemon.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "Core/Pokemon/AbridgedPokemon.h"
#include "Core/Maths.h"
#include "Core/Pokemon/PokeSprites.h"
#include "Core/Pokemon/PokeStats.h"
#include "Core/Game.h"
#include "Text/TextFunctions.h"
#include "Core/Pokemon/Pokemon.h"
#include "Core/Data/Moves.h"

using namespace Core;
using namespace Core::Pokemon;
using namespace Core::Data;
using namespace Text;

namespace Core
{
	namespace Pokemon
	{
		RODATA_LOCATION ALIGN(4) void* AbridgedPokemon::spriteLookupFromIndices[] = { (void*)&PokemonSprites::pokemonFrontSprite, (void*)&PokemonSprites::pokemonBackSprite, (void*)&PokemonSprites::pokemonNormalPalette, (void*)&PokemonSprites::pokemonShinyPalette };
		RODATA_LOCATION ALIGN(2) u16 AbridgedPokemon::numberOfPokemon = NumberOfPokemon - 1;

		AbridgedPokemon::~AbridgedPokemon()
		{
			// TODO Auto-generated destructor stub
		}

		AbridgedPokemon::AbridgedPokemon(u32 species, u32 level, char* nickname)
		{
			Encrypt(Level, level);
			Encrypt(CaptureLevel, level);
			Encrypt(MetLocation, Game::GetCurrentMap().mapNameID);
			Encrypt(Species, species);
			Encrypt(StatusAilment, 0);
			if (nickname)
			{
				Encrypt(Nickname, (u32)nickname);
			}
			else
			{
				Encrypt(Nickname, (u32)Pokemon::GetSpeciesName(species));
			}
			personalityID = GeneratePID();
			(species != Unown)?Encrypt(FormeIndex, 0):SetFormeByUnownLetter();
			Encrypt(HP_EV, 1);
			SetBasicTypes();
			SetBaseExperienceFromLevel(level);
			friendship = 0;
			GivePokemonAbility(0);
			GiveHeldItemFromBaseData();
			GenerateAllIVs();
			SetGender();
			SetNature();
			if (Maths::GetRandom16BitValue() < 3)
			{
				Encrypt(PokerusStatus, 1);
				u32 strain = Maths::GetDelimitedRandom32BitValue(15) + 1;
				Encrypt(PokerusStrain, strain);
				Encrypt(PokerusDuration, (strain & 3) + 1);
			}
			SetMoves(level);
		}

		void AbridgedPokemon::SetBaseExperienceFromLevel(u32 level)
		{
			u32 expType = pokemonBaseData[species].levelUpType;
			Encrypt(Experience, Pokemon::GetBaseExperienceByTypeAndLevel(expType, level));
		}

		u32 AbridgedPokemon::GeneratePID()
		{
			return Maths::GetRandom32BitValue();
		}

		u32 AbridgedPokemon::GenerateIV()
		{
			return Maths::GetDelimitedRandom32BitValue(0x20);
		}

		void AbridgedPokemon::GenerateAllIVs()
		{
			u32 i;
			for (i = 0; i < 6; i++)
			{
				Encrypt(HP_IV + i, GenerateIV());
			}
		}

		void AbridgedPokemon::SetGender()
		{
			u32 genderValue = pokemonBaseData[species].genderSplitByte;
			u32 gender = 0xFE;
			if (genderValue == 0xFF)
			{
				gender = genderValue;
			}
			else if ((personalityID & 0xFF) < genderValue)
			{
				gender = Gender_Female;
			}
			else
			{
				gender = Gender_Male;
			}
			Encrypt(Gender, gender);
		}

		void AbridgedPokemon::SetNature(u8 forcedNatureValue)
		{
			(forcedNatureValue >= 25)?Encrypt(Nature, Maths::GetDelimitedRandom32BitValue(26)):Encrypt(Nature, forcedNatureValue);
		}

		bool AbridgedPokemon::IsFullyEvolved() const
		{
			return evoData[species].index == 0;
		}

		u32 AbridgedPokemon::GetExperienceAtLevel(u32 level)
		{
			return Pokemon::GetBaseExperienceByTypeAndLevel(pokemonBaseData[species].levelUpType, level - 1);
		}

		u32 AbridgedPokemon::GetLevel100MaxExperience()
		{
			return GetExperienceAtLevel(100);
		}

		bool AbridgedPokemon::ExperienceGainCausesLevelUp(u32 experience, u8 level)
		{
			u32 experienceCeiling = GetExperienceAtLevel(level + 1);
			return experienceCeiling <= experience;
		}

		u32 AbridgedPokemon::Decrypt(u8 index) const
		{
			switch (index)
			{
				case PersonalityID:
					return personalityID;
					break;
				case OTID:
					return originalTrainerID;
					break;
				case Nickname:
					return (u32)nickname;
					break;
				case FormeIndex:
					return formeValue;
					break;
				case Gender:
					return gender;
					break;
				case Nature:
					return nature;
					break;
				case ForcedShiny:
					return forceShiny;
					break;
				case OTName:
					return (u32)&originalTrainerName;
					break;
				case Mark:
					return mark;
					break;
				case Checksum:
					return checksum;
					break;
				case Species:
					return species;
					break;
				case HeldItem:
					return heldItem;
					break;
				case Move1:
					return move1;
					break;
				case Move2:
					return move2;
					break;
				case Move3:
					return move3;
					break;
				case Move4:
					return move4;
					break;
				case Move1PP:
					return move1PP;
					break;
				case Move2PP:
					return move2PP;
					break;
				case Move3PP:
					return move3PP;
					break;
				case Move4PP:
					return move4PP;
					break;
				case PPBonuses:
					return ppBonuses;
					break;
				case Coolness:
					return coolness;
					break;
				case Beauty:
					return beauty;
					break;
				case Cuteness:
					return cuteness;
					break;
				case Experience:
					return experience;
					break;
				case HP_EV:
					return hpEV;
					break;
				case Attack_EV:
					return attackEV;
					break;
				case Defence_EV:
					return defenceEV;
					break;
				case Speed_EV:
					return speedEV;
					break;
				case Special_Attack_EV:
					return specialAttackEV;
					break;
				case Special_Defence_EV:
					return specialDefenceEV;
					break;
				case Friendship:
					return friendship;
					break;
				case Smartness:
					return smartness;
					break;
				case PokerusStatus:
					return pokerusStatus;
					break;
				case MetLocation:
					return metLocation;
					break;
				case CaptureLevel:
					return catchLevel;
					break;
				case PokeBall:
					return pokeBall;
					break;
				case HP_IV:
					return ivStruct.hpIV;
					break;
				case Attack_IV:
					return ivStruct.attackIV;
					break;
				case Defence_IV:
					return ivStruct.defenceIV;
					break;
				case Speed_IV:
					return ivStruct.speedIV;
					break;
				case Special_Attack_IV:
					return ivStruct.specialAttackIV;
					break;
				case Special_Defence_IV:
					return ivStruct.specialDefenceIV;
					break;
				case IsEgg:
					return ivStruct.isEgg;
					break;
				case Ability:
					return ability;
					break;
				case Toughness:
					return toughness;
					break;
				case Feel:
					return feel;
					break;
				case Type1:
					return type1;
					break;
				case Type2:
					return type2;
					break;
				case PokerusStrain:
					return pokerusInformationField.strain;
					break;
				case PokerusDuration:
					return pokerusInformationField.duration;
					break;
				default:
					return ivStruct.isObedient;
					break;
			}
		}

		u16 AbridgedPokemon::CalculateChecksum()
		{
			u16* thePokemon = (u16*)this;
			u16 tot = 0;
			for (int i = 0; i < 40; i++)
			{
				if (i != 14)
				{
					tot += thePokemon[i];
				}
			}
			return tot;
		}

		void AbridgedPokemon::Encrypt(u8 index, u32 value)
		{
			switch(index)
			{
				case PersonalityID:
					personalityID = value;
					break;
				case OTID:
					originalTrainerID = value;
					break;
				case Nickname:
					TextFunctions::StringCopy((char*)&nickname, (char*)value, 11);
					break;
				case FormeIndex:
					if (value <= 0x3FF)
					{
						formeValue = value;
					}
					break;
				case Gender:
					if ((value == Gender_Male || value == Gender_Female || value == Gender_Genderless) && Pokemon::IsGenderLegitimate(value, species))
					{
						gender = value;
					}
					else
					{
						gender = Pokemon::CalculateValidGender(species);
					}
					break;
				case Nature:
					if (value < 25)
					{
						nature = value;
					}
					break;
				case ForcedShiny:
					if (value <= 1)
					{
						forceShiny = value;
					}
					break;
				case OTName:
					TextFunctions::StringCopy((char*)&originalTrainerName, (char*)value, 7);
					break;
				case Mark:
					if (value <= 0xF)
					{
						mark = value;
					}
					break;
				case Checksum:
					checksum = CalculateChecksum();
					break;
				case Species:
					if (value <= numberOfPokemon)
					{
						species = value;
					}
					break;
				case HeldItem:
					if (value < 375)
					{
						heldItem = value;
					}
					break;
				case Move1:
					if (value < 559)
					{
						move1 = value;
					}
					break;
				case Move2:
					if (value < 559)
					{
						move2 = value;
					}
					break;
				case Move3:
					if (value < 559)
					{
						move3 = value;
					}
					break;
				case Move4:
					if (value < 559)
					{
						move4 = value;
					}
					break;
				case Move1PP:
					if (value <= 0xFF)
					{
						move1PP = value;
					}
					break;
				case Move2PP:
					if (value <= 0xFF)
					{
						move2PP = value;
					}
					break;
				case Move3PP:
					if (value <= 0xFF)
					{
						move3PP = value;
					}
					break;
				case Move4PP:
					if (value <= 0xFF)
					{
						move4PP = value;
					}
					break;
				case PPBonuses:
					if (value <= 0xFF)
					{
						ppBonuses = value;
					}
					break;
				case Coolness:
					if (value <= 0xFF)
					{
						coolness = value;
					}
					break;
				case Beauty:
					if (value <= 0xFF)
					{
						beauty = value;
					}
					break;
				case Cuteness:
					if (value <= 0xFF)
					{
						cuteness = value;
					}
					break;
				case Experience:
					if (value <= GetLevel100MaxExperience() && value <= 0x1FFFFF)
					{
						experience = value;
					}
					break;
				case HP_EV:
					if (value <= 0xFF && AllowEVAddition(value, 0) == 1)
					{
						hpEV = value;
					}
					break;
				case Attack_EV:
					if (value <= 0xFF && AllowEVAddition(value, 1) == 1)
					{
						attackEV = value;
					}
					break;
				case Defence_EV:
					if (value <= 0xFF && AllowEVAddition(value, 2) == 1)
					{
						defenceEV = value;
					}
					break;
				case Speed_EV:
					if (value <= 0xFF && AllowEVAddition(value, 3) == 1)
					{
						speedEV = value;
					}
					break;
				case Special_Attack_EV:
					if (value <= 0xFF && AllowEVAddition(value, 4) == 1)
					{
						specialAttackEV = value;
					}
					break;
				case Special_Defence_EV:
					if (value <= 0xFF && AllowEVAddition(value, 5) == 1)
					{
						specialDefenceEV = value;
					}
					break;
				case Friendship:
					if (value <= 0xFF)
					{
						friendship = value;
					}
					break;
				case Smartness:
					if (value <= 0xFF)
					{
						smartness = value;
					}
					break;
				case PokerusStatus:
					if (value <= 0xFF)
					{
						pokerusStatus = value;
					}
					break;
				case MetLocation:
					if (value <= 0xFF)
					{
						metLocation = value;
					}
					break;
				case CaptureLevel:
					if (value <= 0x64)
					{
						catchLevel = value;
					}
					break;
				case PokeBall:
					if (value <= 0x7F)
					{
						pokeBall = value;
					}
					break;
				case HP_IV:
					if (value <= 31)
					{
						ivStruct.hpIV = value;
					}
					break;
				case Attack_IV:
					if (value <= 31)
					{
						ivStruct.attackIV = value;
					}
					break;
				case Defence_IV:
					if (value <= 31)
					{
						ivStruct.defenceIV = value;
					}
					break;
				case Speed_IV:
					if (value <= 31)
					{
						ivStruct.speedIV = value;
					}
					break;
				case Special_Attack_IV:
					if (value <= 31)
					{
						ivStruct.specialAttackIV = value;
					}
					break;
				case Special_Defence_IV:
					if (value <= 31)
					{
						ivStruct.specialDefenceIV = value;
					}
					break;
				case IsEgg:
					if (value <= 1)
					{
						ivStruct.isEgg = value;
					}
					break;
				case Ability:
					if (value <= 164 && value > 0)
					{
						ability = value;
					}
					break;
				case Toughness:
					if (value <= 0xFF)
					{
						toughness = value;
					}
					break;
				case Feel:
					if (value <= 0xFF)
					{
						feel = value;
					}
					break;
				case Type1:
					if (value < Type_None)
					{
						type1 = value;
					}
					break;
				case Type2:
					if (value < Type_None)
					{
						type2 = value;
					}
					break;
				case PokerusStrain:
					if (value < 0x10)
					{
						pokerusInformationField.strain = value;
					}
					break;
				case PokerusDuration:
					if (value < 0x10)
					{
						pokerusInformationField.duration = value;
					}
					break;
				default:
					if (value <= 1)
					{
						ivStruct.isObedient = value;
					}
					break;
			}
		}

		u32 AbridgedPokemon::SumEVs() const
		{
			u32 sum = 0;
			for (int i = 0; i < 6; i++)
			{
				sum += Decrypt((HP_EV + i));
			}
			return sum;
		}

		bool AbridgedPokemon::AllowEVAddition(u32 value, u32 index) const
		{
			u32 sum = SumEVs();
			if (sum + value > 510)
			{
				return false;
			}
			return true;
		}

		void AbridgedPokemon::GiveHeldItemFromTrainerData()
		{
			u16 item = 0;
			Encrypt(HeldItem, item);
		}

		void AbridgedPokemon::GiveHeldItemFromBaseData()
		{
			u16 item = 0;
			u16 randomValue = Maths::GetDelimitedRandom16BitValue(100);
			u32 counter = 0;
			u32 i = 0;
			IndexTable* indexData = &pokemonBaseData[species].baseDataInfo;
			u32 formeIndex = GetClampedFormeByteValue(&pokemonBaseData[species].baseDataInfo);
			PercentageItemPair* values = &(((PercentageItemPair*)(indexData->pointerToData))[formeIndex]);
			item = values[i].itemID;
			while (item != 0xFFFF && counter < 100)
			{
				counter += values[i].percentage;
				if (randomValue < counter)
				{
					item = values[i].itemID;
					break;
				}
			}
			Encrypt(HeldItem, item);
		}

		u32 AbridgedPokemon::GetClampedFormeByteValue(IndexTable* indexToRead) const
		{
			u32 value = formeValue;
			u32 formeType = pokemonBaseData[species].formeType;
			switch (formeType)
			{
				case 0:
					value = 0;
					break;
				case 1:
					value = gender;
					if (value == Gender_Genderless)
					{
						value = 0;
					}
					break;
				case 2:
					if (value >= indexToRead->index)
					{
						value = 0;
					}
					break;
			}
			return value;
		}

		void AbridgedPokemon::GivePokemonAbility(bool isHiddenAbility)
		{
			u8 abilityValue = 0;
			InternalBaseData* indexData;
			{
				InternalBaseData** data = (InternalBaseData**)((InternalBaseData***)&pokemonBaseData[species].baseDataInfo.pointerToData)[0];
				u32 formeIndex = GetClampedFormeByteValue((IndexTable*)&pokemonBaseData[species]);
				indexData = data[formeIndex];
			}
			if ((isHiddenAbility) && (indexData->hiddenAbility != 0))
			{
				abilityValue = indexData->hiddenAbility;
			}
			else
			{
				if (indexData->ability2 == 0 || Maths::GetDelimitedRandom32BitValue(2) == 0)
				{
					abilityValue = indexData->ability1;
				}
				else
				{
					abilityValue = indexData->ability2;
				}
			}
			Encrypt(Ability, abilityValue);
		}

		void AbridgedPokemon::SetBaseFriendship(bool isBattle)
		{
			InternalBaseData* indexData;
			{
				InternalBaseData* data = (InternalBaseData*)&pokemonBaseData[species].baseDataInfo.pointerToData;
				indexData = (InternalBaseData*)&data[GetClampedFormeByteValue(&pokemonBaseData[species].baseDataInfo)];
			}
			(isBattle == 1)?Encrypt(Friendship, 0):Encrypt(Friendship, indexData->baseFriendship);
		}

		void AbridgedPokemon::SetBasicTypes()
		{
			InternalBaseData* indexData;
			{
				InternalBaseData* data = ((InternalBaseData**)pokemonBaseData[species].baseDataInfo.pointerToData)[0];
				u32 formeIndex = GetClampedFormeByteValue((IndexTable*)&pokemonBaseData[species]);
				indexData = (InternalBaseData*)&data[formeIndex];
			}
			Encrypt(Type1, indexData[0].type1);
			Encrypt(Type2, indexData[0].type2);
		}

		u8 AbridgedPokemon::GetUnownLetterFromPID(u32 pid)
		{
			return Maths::UnsignedModulus((pid & 0x3) | ((pid & 0x300) >> 6) | ((pid & 0x30000) >> 12) | ((pid & 0x3000000) >> 18), 28);
		}

		void AbridgedPokemon::SetFormeByUnownLetter()
		{
			Encrypt(FormeIndex, GetUnownLetterFromPID(personalityID));
		}

		void AbridgedPokemon::SetMoves(u32 currentLevel)
		{
			MovesetEntry* theMoveset = Pokemon::GetMovesetByIndex(species);
			u32 i = 0;
			u32 currentIndex = 0;
			u32 level = theMoveset[i].level;
			const MoveData &moveData = *Moves::GetMoveDataByIndex(theMoveset[i].moveID);
			while (level != 0xFF)
			{
				if (currentLevel >= level)
				{
					Encrypt(Move1 + currentIndex, theMoveset[i].moveID);
					Encrypt(Move1PP + currentIndex, moveData.basePP);
					Encrypt(PPBonuses, ppBonuses ^ (3 << (currentIndex << 1)));
				}
				i++;
				currentIndex = i & 3;
				level = theMoveset[i].level;
			}
		}

		u32 AbridgedPokemon::GetCatchRate() const
		{
			InternalBaseData* data = ((InternalBaseData**)pokemonBaseData[species].baseDataInfo.pointerToData)[0];
			u32 forme = GetClampedFormeByteValue((IndexTable*)&pokemonBaseData[species].baseDataInfo);
			return data[forme].catchRate;
		}

		u32 AbridgedPokemon::GetBaseExperience() const
		{
			InternalBaseData* data = ((InternalBaseData**)pokemonBaseData[species].baseDataInfo.pointerToData)[0];
			u32 forme = GetClampedFormeByteValue(&pokemonBaseData[species].baseDataInfo);
			return data[forme].baseExpYield;
		}

		u32 AbridgedPokemon::GetEVGain() const
		{
			InternalBaseData* data = ((InternalBaseData**)pokemonBaseData[species].baseDataInfo.pointerToData)[0];
			u32 forme = GetClampedFormeByteValue(&pokemonBaseData[species].baseDataInfo);
			return data[forme].EVYield;
		}

		#define BallItemBaseID 0

		void* AbridgedPokemon::GetPokeballSprite() const
		{
			u32 ballIndex = Decrypt(PokeBall) + BallItemBaseID;
			void* data = (void*)NULL;
			return data;
		}

		void* AbridgedPokemon::GetPokeballPalette() const
		{
			u32 ballIndex = Decrypt(PokeBall) + BallItemBaseID;
			void* data = (void*)NULL;
			return data;
		}

		void* AbridgedPokemon::GetPokemonSpritePaletteFromPokemon(u32 sideIndex) const
		{
			IndexTable* entry = NULL;
			u32 formeTypeValue = 0;
			{
				entry = (IndexTable*)spriteLookupFromIndices[sideIndex];
				entry = &(entry[species]);
				formeTypeValue = pokemonBaseData[species].formeType;
			}
			u32 index = entry->index;
			void** data = (void**)entry->pointerToData;
			switch (formeTypeValue)
			{
				case GenderSplit:
				{
					u32 gender = Decrypt(Gender);
					if (gender == Gender_Genderless)
					{
						gender = Gender_Male;
					}
					if (gender >= index)
					{
						gender = 0;
					}
					data = (void**)data[gender];
					break;
				}
				case GenericFromByte:
				{
					u32 spriteIndex = Decrypt(FormeIndex);
					if (spriteIndex >= index)
					{
						spriteIndex = 0;
					}
					data = (void**)data[spriteIndex];
					break;
				}
				default:
					data = (void**)data[0];
					break;
			}
			return (void*)data;
		}

		void* AbridgedPokemon::GetFrontSprite() const
		{
			return AbridgedPokemon::GetPokemonSpritePaletteFromPokemon(Sprite_Side_Front);
		}

		void* AbridgedPokemon::GetBackSprite() const
		{
			return AbridgedPokemon::GetPokemonSpritePaletteFromPokemon(Sprite_Side_Back);
		}

		void* AbridgedPokemon::GetPalette() const
		{
			return AbridgedPokemon::GetPokemonSpritePaletteFromPokemon(Palette_Normal + IsShiny());
		}

		u16 AbridgedPokemon::FindBabySpeciesInner(u16 sourceSpecies)
		{
			u32 i;
			for (i = 0; i <= numberOfPokemon; i++)
			{
				u32 length = evoData[i].index;
				if (length)
				{
					EvolutionData* dataLoc = (EvolutionData*)evoData[i].pointerToData;
					u32 j;
					for (j = 0; j < length; j++)
					{
						if (dataLoc[j].resultingSpecies == sourceSpecies)
						{
							return FindBabySpeciesInner(dataLoc[j].resultingSpecies);
						}
					}
				}
			}
			return sourceSpecies;
		}

		bool AbridgedPokemon::IsShiny() const
		{
			u32 trainerID = Decrypt(OTID);
			u16 trainerOne = (trainerID & 0xFFFF) ^ ((trainerID & 0xFFFF0000) >> 0x10);
			u32 pid = Decrypt(PersonalityID);
			u16 pokemonOne = (pid & 0xFFFF) ^ ((pid & 0xFFFF0000) >> 0x10);
			return (Decrypt(ForcedShiny) == 1 || (trainerOne ^ pokemonOne) < 8);
		}

		u32 AbridgedPokemon::CalculateHighestIVIndex() const
		{
			s32 highestIV = -1;
			u32 indexOfHighest = 0;
			u32 count = 0;
			u32 whichOnes = 0;
			{
				u32 i;
				for (i = 0; i < 6; i++)
				{
					s32 currIV = Decrypt(HP_IV + i);
					if (currIV > highestIV)
					{
						highestIV = currIV;
						whichOnes = 0;
						count = 1;
						whichOnes |= (1 << i);
						indexOfHighest = i;
					}
					else if (currIV == highestIV)
					{
						whichOnes |= (1 << i);
						count++;
						indexOfHighest = i;
					}
				}
			}
			if (count > 1)
			{
				u32 i;
				u32 pidValue = Maths::UnsignedModulus(Decrypt(PersonalityID), 6);
				for (i = 0; i < 6; i++)
				{
					if (((whichOnes & (1 << i)) == 1) && ((pidValue & (1 << i)) == 1))
					{
						indexOfHighest = i;
						break;
					}
				}
			}
			return indexOfHighest;
		}

		u32 AbridgedPokemon::CalculateCharacteristicIndex() const
		{
			u32 highestIVIndex = CalculateHighestIVIndex();
			u32 IVValue = Decrypt(HP_IV + highestIVIndex);
			return Maths::UnsignedModulus(IVValue, 5) + highestIVIndex;
		}

		bool AbridgedPokemon::HasMove(u16 moveID) const
		{
			for (int i = 0; i < 4; i++)
			{
				if (Decrypt(Move1 + i) == moveID)
				{
					return true;
				}
			}
			return false;
		}

		void AbridgedPokemon::DeleteAbridgedPokemon(AbridgedPokemon* p)
		{
			memset32((void*)p, 0, sizeof(AbridgedPokemon) >> 2);
			// Note that the compiler will optimise the following code out if it
			// does not apply, and will not include the if statement
			if ((sizeof(AbridgedPokemon) & 3) != 0)
			{
				for (u32 i = 0; i < (sizeof(AbridgedPokemon) & 3); i++)
				{
					*((u8*)p + i) = 0;
				}
			}
		}
	}
}
