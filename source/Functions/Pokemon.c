#include "Data/GlobalDefinitions.h"
#include "Data/PokemonBaseData.h"
#include "Data/MemoryLocations.h"
#include "Data/Maps.h"
#include "Data/PokeSprites.h"
#include "Data/PokeStats.h"
#include "Functions/Maths.h"
#include "Functions/TextFunctions.h"
#include "Functions/Flags.h"
#include "Functions/KeyPresses.h"
#include "Functions/Pokedex.h"
#include "Functions/MemoryManagement.h"
#include "libsprites.h"

const RODATA_LOCATION ALIGN(2) u16 numberOfPokemon = NumberOfPokemon - 1;
const RODATA_LOCATION ALIGN(1) char name[] = { 0xFB, 0x00 };
const RODATA_LOCATION ALIGN(1) char number[] = { 0xFB, 0x01 };
const RODATA_LOCATION ALIGN(1) char otName[] = { 0xFB, 0x02 };
const RODATA_LOCATION ALIGN(1) char itemName[] = { 0xFB, 0x03 };
const RODATA_LOCATION ALIGN(1) char natureString[] = { 0xFB, 0x04, ' ', 'n', 'a', 't', 'u', 'r', 'e' };
const RODATA_LOCATION ALIGN(1) char metString[] = { 'M', 'e', 't', ' ', 'i', 'n', ' ', 0xFB, 0x05, ' ', 'a', 't', ' ', 0x80, ' ', 0xFB, 0x06 };
const RODATA_LOCATION ALIGN(1) char characteristicString[] = { 0xFB, 0x07 };
const char* pokeInfoScreenText[] = {
		(char*)&name,
		(char*)&number,
		(char*)&otName,
		(char*)&itemName,
		(char*)&natureString,
		(char*)&metString,
		(char*)&characteristicString
};

u32 IsFullyEvolved(u16 species)
{
	if (evoData[species].index == 0)
	{
		return true;
	}
	return false;
}

u32 InternalPokemonDecrypter(AbridgedPokemon* thePokemon, u8 index)
{
	switch (index)
	{
		case PersonalityID:
			return thePokemon[0].personalityID;
			break;
		case OTID:
			return thePokemon[0].originalTrainerID;
			break;
		case Nickname:
			return (u32)thePokemon[0].nickname;
			break;
		case FormeIndex:
			return thePokemon[0].formeValue;
			break;
		case Gender:
			return thePokemon[0].gender;
			break;
		case Nature:
			return thePokemon[0].nature;
			break;
		case ForcedShiny:
			return thePokemon[0].forceShiny;
			break;
		case OTName:
			return (u32)thePokemon[0].originalTrainerName;
			break;
		case Mark:
			return thePokemon[0].mark;
			break;
		case Checksum:
			return thePokemon[0].checksum;
			break;
		case Species:
			return thePokemon[0].species;
			break;
		case HeldItem:
			return thePokemon[0].heldItem;
			break;
		case Move1:
			return thePokemon[0].move1;
			break;
		case Move2:
			return thePokemon[0].move2;
			break;
		case Move3:
			return thePokemon[0].move3;
			break;
		case Move4:
			return thePokemon[0].move4;
			break;
		case Move1PP:
			return thePokemon[0].move1PP;
			break;
		case Move2PP:
			return thePokemon[0].move2PP;
			break;
		case Move3PP:
			return thePokemon[0].move3PP;
			break;
		case Move4PP:
			return thePokemon[0].move4PP;
			break;
		case PPBonuses:
			return thePokemon[0].ppBonuses;
			break;
		case Coolness:
			return thePokemon[0].coolness;
			break;
		case Beauty:
			return thePokemon[0].beauty;
			break;
		case Cuteness:
			return thePokemon[0].cuteness;
			break;
		case Experience:
			return thePokemon[0].experience;
			break;
		case HP_EV:
			return thePokemon[0].hpEV;
			break;
		case Attack_EV:
			return thePokemon[0].attackEV;
			break;
		case Defence_EV:
			return thePokemon[0].defenceEV;
			break;
		case Speed_EV:
			return thePokemon[0].speedEV;
			break;
		case Special_Attack_EV:
			return thePokemon[0].specialAttackEV;
			break;
		case Special_Defence_EV:
			return thePokemon[0].specialDefenceEV;
			break;
		case Friendship:
			return thePokemon[0].friendship;
			break;
		case Smartness:
			return thePokemon[0].smartness;
			break;
		case PokerusStatus:
			return thePokemon[0].pokerusStatus;
			break;
		case MetLocation:
			return thePokemon[0].metLocation;
			break;
		case CaptureLevel:
			return thePokemon[0].catchLevel;
			break;
		case PokeBall:
			return thePokemon[0].pokeBall;
			break;
		case HP_IV:
			return thePokemon[0].hpIV;
			break;
		case Attack_IV:
			return thePokemon[0].attackIV;
			break;
		case Defence_IV:
			return thePokemon[0].defenceIV;
			break;
		case Speed_IV:
			return thePokemon[0].speedIV;
			break;
		case Special_Attack_IV:
			return thePokemon[0].specialAttackIV;
			break;
		case Special_Defence_IV:
			return thePokemon[0].specialDefenceIV;
			break;
		case IsEgg:
			return thePokemon[0].isEgg;
			break;
		case Ability:
			return thePokemon[0].ability;
			break;
		case Toughness:
			return thePokemon[0].toughness;
			break;
		case Feel:
			return thePokemon[0].feel;
			break;
		case Type1:
			return thePokemon[0].type1;
			break;
		case Type2:
			return thePokemon[0].type2;
			break;
		case PokerusStrain:
			return thePokemon[0].pokerusInformationField.strain;
			break;
		case PokerusDuration:
			return thePokemon[0].pokerusInformationField.duration;
			break;
		default:
			return thePokemon[0].isObedient;
			break;
	}
}

u32 PokemonDecrypter(Pokemon* thePokemon, u8 index)
{
	if (index < StatusAilment)
	{
		return InternalPokemonDecrypter(&thePokemon[0].mainData, index);
	}
	switch(index - StatusAilment)
	{
		case StatusAilment - StatusAilment:
			return thePokemon[0].statusAilment;
			break;
		case Level - StatusAilment:
			return thePokemon[0].level;
			break;
		case CurrentHP - StatusAilment:
			return thePokemon[0].currentHP;
			break;
		case MaximumHP - StatusAilment:
			return thePokemon[0].maximumHP;
			break;
		case Attack - StatusAilment:
			return thePokemon[0].attack;
			break;
		case Defence - StatusAilment:
			return thePokemon[0].defence;
			break;
		case Speed - StatusAilment:
			return thePokemon[0].speed;
			break;
		case SpecialAttack - StatusAilment:
			return thePokemon[0].specialAttack;
			break;
		case SpecialDefence - StatusAilment:
			return thePokemon[0].specialDefence;
			break;
		default:
			return 0;
			break;
	}
}

u32 CountPokemon(Pokemon* location, u32 length)
{
	u32 counter = 0;
	u32 i;
	for (i = 0; i < length; i++)
	{
		if (PokemonDecrypter(&location[i], PersonalityID) != 0)
		{
			counter++;
		}
	}
	return counter;
}

u32 CountPartyPokemon()
{
	return CountPokemon(partyPokemon, 6);
}

u32 CountEnemyPartyPokemon()
{
	return CountPokemon(enemyPokemon, 6);
}

u32 CountBoxPokemon(u32 boxID)
{
	u32 address = (u32)&storageBoxes;
	address += POKEMONPERBOX * boxID * sizeof(Pokemon);
	return CountPokemon((Pokemon*)address, POKEMONPERBOX);
}

u32 CountAllBoxPokemon()
{
	u32 counter = 0;
	u32 i;
	for (i = 0; i < NUMBOXES; i++)
	{
		counter += CountBoxPokemon(i);
	}
	return counter;
}

u16 CalculateChecksum(u16* thePokemon)
{
	u16 tot = 0;
	u32 i;
	for (i = 0; i < 40; i++)
	{
		if (i != 14)
		{
			tot += thePokemon[i];
		}
	}
	return tot;
}

u32 SumEVs(AbridgedPokemon* thePokemon)
{
	u32 sum = 0;
	u32 i;
	for (i = 0; i < 6; i++)
	{
		sum += InternalPokemonDecrypter(thePokemon, (HP_EV + i));
	}
	return sum;
}

u32 AllowEVAddition(AbridgedPokemon* thePokemon, u32 value, u32 index)
{
	u32 sum = SumEVs(thePokemon);
	if (sum + value > 510)
	{
		return false;
	}
	return true;
}

u32 GetExperienceAtLevel(u16 species, u8 level)
{
	return pokemonBaseExperiences[pokemonBaseData[species].levelUpType][level - 1];
}

u32 GetLevel100MaxExperience(u16 species)
{
	return GetExperienceAtLevel(species, 100);
}

u32 ExperienceGainCausesLevelUp(u16 species, u32 experience, u8 level)
{
	u32 experienceCeiling = GetExperienceAtLevel(species, level + 1);
	if (experienceCeiling <= experience)
	{
		return true;
	}
	return false;
}

void InternalPokemonEncrypter(AbridgedPokemon* thePokemon, u8 index, u32 value)
{
	switch(index)
	{
		case PersonalityID:
			thePokemon[0].personalityID = value;
			break;
		case OTID:
			thePokemon[0].originalTrainerID = value;
			break;
		case Nickname:
			StringCopy((char*)&thePokemon[0].nickname, (char*)value, 11);
			break;
		case FormeIndex:
			if (value <= 0x3FF)
			{
				thePokemon[0].formeValue = value;
			}
			break;
		case Gender:
			if (value == Gender_Male || value == Gender_Female || value == Gender_Genderless)
			{
				thePokemon[0].gender = value;
			}
			break;
		case Nature:
			if (value < 25)
			{
				thePokemon[0].nature = value;
			}
			break;
		case ForcedShiny:
			if (value <= 1)
			{
				thePokemon[0].forceShiny = value;
			}
			break;
		case OTName:
			StringCopy((char*)&thePokemon[0].originalTrainerName, (char*)value, 7);
			break;
		case Mark:
			if (value <= 0xF)
			{
				thePokemon[0].mark = value;
			}
			break;
		case Checksum:
			thePokemon[0].checksum = CalculateChecksum((u16*)thePokemon);
			break;
		case Species:
			if (value <= numberOfPokemon)
			{
				thePokemon[0].species = value;
			}
			break;
		case HeldItem:
			if (value < 375)
			{
				thePokemon[0].heldItem = value;
			}
			break;
		case Move1:
			if (value < 559)
			{
				thePokemon[0].move1 = value;
			}
			break;
		case Move2:
			if (value < 559)
			{
				thePokemon[0].move2 = value;
			}
			break;
		case Move3:
			if (value < 559)
			{
				thePokemon[0].move3 = value;
			}
			break;
		case Move4:
			if (value < 559)
			{
				thePokemon[0].move4 = value;
			}
			break;
		case Move1PP:
			if (value <= 0xFF)
			{
				thePokemon[0].move1PP = value;
			}
			break;
		case Move2PP:
			if (value <= 0xFF)
			{
				thePokemon[0].move2PP = value;
			}
			break;
		case Move3PP:
			if (value <= 0xFF)
			{
				thePokemon[0].move3PP = value;
			}
			break;
		case Move4PP:
			if (value <= 0xFF)
			{
				thePokemon[0].move4PP = value;
			}
			break;
		case PPBonuses:
			if (value <= 0xFF)
			{
				thePokemon[0].ppBonuses = value;
			}
			break;
		case Coolness:
			if (value <= 0xFF)
			{
				thePokemon[0].coolness = value;
			}
			break;
		case Beauty:
			if (value <= 0xFF)
			{
				thePokemon[0].beauty = value;
			}
			break;
		case Cuteness:
			if (value <= 0xFF)
			{
				thePokemon[0].cuteness = value;
			}
			break;
		case Experience:
			if (value <= GetLevel100MaxExperience(InternalPokemonDecrypter(thePokemon, Species)) && value <= 0x1FFFFF)
			{
				thePokemon[0].experience = value;
			}
			break;
		case HP_EV:
			if (value <= 0xFF && AllowEVAddition(thePokemon, value, 0) == 1)
			{
				thePokemon[0].hpEV = value;
			}
			break;
		case Attack_EV:
			if (value <= 0xFF && AllowEVAddition(thePokemon, value, 1) == 1)
			{
				thePokemon[0].attackEV = value;
			}
			break;
		case Defence_EV:
			if (value <= 0xFF && AllowEVAddition(thePokemon, value, 2) == 1)
			{
				thePokemon[0].defenceEV = value;
			}
			break;
		case Speed_EV:
			if (value <= 0xFF && AllowEVAddition(thePokemon, value, 3) == 1)
			{
				thePokemon[0].speedEV = value;
			}
			break;
		case Special_Attack_EV:
			if (value <= 0xFF && AllowEVAddition(thePokemon, value, 4) == 1)
			{
				thePokemon[0].specialAttackEV = value;
			}
			break;
		case Special_Defence_EV:
			if (value <= 0xFF && AllowEVAddition(thePokemon, value, 5) == 1)
			{
				thePokemon[0].specialDefenceEV = value;
			}
			break;
		case Friendship:
			if (value <= 0xFF)
			{
				thePokemon[0].friendship = value;
			}
			break;
		case Smartness:
			if (value <= 0xFF)
			{
				thePokemon[0].smartness = value;
			}
			break;
		case PokerusStatus:
			if (value <= 0xFF)
			{
				thePokemon[0].pokerusStatus = value;
			}
			break;
		case MetLocation:
			if (value <= 0xFF)
			{
				thePokemon[0].metLocation = value;
			}
			break;
		case CaptureLevel:
			if (value <= 0x64)
			{
				thePokemon[0].catchLevel = value;
			}
			break;
		case PokeBall:
			if (value <= 0x7F)
			{
				thePokemon[0].pokeBall = value;
			}
			break;
		case HP_IV:
			if (value <= 31)
			{
				thePokemon[0].hpIV = value;
			}
			break;
		case Attack_IV:
			if (value <= 31)
			{
				thePokemon[0].attackIV = value;
			}
			break;
		case Defence_IV:
			if (value <= 31)
			{
				thePokemon[0].defenceIV = value;
			}
			break;
		case Speed_IV:
			if (value <= 31)
			{
				thePokemon[0].speedIV = value;
			}
			break;
		case Special_Attack_IV:
			if (value <= 31)
			{
				thePokemon[0].specialAttackIV = value;
			}
			break;
		case Special_Defence_IV:
			if (value <= 31)
			{
				thePokemon[0].specialDefenceIV = value;
			}
			break;
		case IsEgg:
			if (value <= 1)
			{
				thePokemon[0].isEgg = value;
			}
			break;
		case Ability:
			if (value <= 164 && value > 0)
			{
				thePokemon[0].ability = value;
			}
			break;
		case Toughness:
			if (value <= 0xFF)
			{
				thePokemon[0].toughness = value;
			}
			break;
		case Feel:
			if (value <= 0xFF)
			{
				thePokemon[0].feel = value;
			}
			break;
		case Type1:
			if (value < Type_None)
			{
				thePokemon[0].type1 = value;
			}
			break;
		case Type2:
			if (value < Type_None)
			{
				thePokemon[0].type2 = value;
			}
			break;
		case PokerusStrain:
			if (value < 0x10)
			{
				thePokemon[0].pokerusInformationField.strain = value;
			}
			break;
		case PokerusDuration:
			if (value < 0x10)
			{
				thePokemon[0].pokerusInformationField.duration = value;
			}
			break;
		default:
			if (value <= 1)
			{
				thePokemon[0].isObedient = value;
			}
			break;
	}
}

void PokemonEncrypter(Pokemon* thePokemon, u8 index, u32 value)
{
	if (index < StatusAilment)
	{
		AbridgedPokemon* data = &thePokemon[0].mainData;
		InternalPokemonEncrypter(data, index, value);
		if (index != Checksum)
		{
			InternalPokemonEncrypter(data, Checksum, 0x0);
		}
	}
	switch(index - StatusAilment)
	{
		case StatusAilment - StatusAilment:
			if (value != 0 && PokemonDecrypter(thePokemon, 0x37) == 0)
			{
				thePokemon[0].statusAilment = value;
			}
			else if (value == 0)
			{
				thePokemon[0].statusAilment = value;
			}
			break;
		case Level - StatusAilment:
			if (value <= 100)
			{
				thePokemon[0].level = value;
			}
			break;
		case CurrentHP - StatusAilment:
			thePokemon[0].currentHP = value;
			break;
		case MaximumHP - StatusAilment:
			thePokemon[0].maximumHP = value;
			break;
		case Attack - StatusAilment:
			thePokemon[0].attack = value;
			break;
		case Defence - StatusAilment:
			thePokemon[0].defence = value;
			break;
		case Speed - StatusAilment:
			thePokemon[0].speed = value;
			break;
		case SpecialAttack - StatusAilment:
			thePokemon[0].specialAttack = value;
			break;
		case SpecialDefence - StatusAilment:
			thePokemon[0].specialDefence = value;
			break;
	}
}

#define MaxHappiness 0xD0

u32 HappinessCheck(Pokemon* thePokemon)
{
	if (PokemonDecrypter(thePokemon, Friendship) >= MaxHappiness)
	{
		return true;
	}
	return false;
}

u32 LevelCheck(Pokemon* thePokemon, u32 theLevel)
{
	return PokemonDecrypter(thePokemon, Level) >= theLevel;
}

u32 TimeCheck()
{
	return rtcData.timeOfDay != Time_Night;
}

u32 GenderCheck(Pokemon* thePokemon, u32 targetGender)
{
	return PokemonDecrypter(thePokemon, Gender) == targetGender;
}

u32 HeldItemCheck(Pokemon* thePokemon, u32 targetItem)
{
	return PokemonDecrypter(thePokemon, HeldItem) == targetItem;
}

u32 KnownMoveCheck(Pokemon* thePokemon, u32 targetMove)
{
	u32 i;
	for (i = 0; i < 4; i++)
	{
		if (PokemonDecrypter(thePokemon, Move1 + i) == targetMove)
		{
			return true;
		}
	}
	return false;
}

u32 KnownMoveCheckType(Pokemon* thePokemon, u32 targetType)
{
	u32 i;
	for (i = 0; i < 4; i++)
	{
		u16 moveID = PokemonDecrypter(thePokemon, Move1 + i);
		if (moveData[moveID].type == targetType)
		{
			return true;
		}
	}
	return false;
}

u32 CheckLevelUpEvolutions(Pokemon* thePokemon)
{
	u16 species = PokemonDecrypter(thePokemon, Species);
	u32 length = evoData[species].index;
	EvolutionData* mainDataLoc = (EvolutionData*)evoData[species].pointerToData;
	if (mainDataLoc != 0)
	{
		u32 i;
		for (i = 0; i < length; i++)
		{
			u32 evolutionTriggered = false;
			switch (mainDataLoc[i].evolutionType)
			{
				case MaxHappiness:
					if (HappinessCheck(thePokemon) == true)
					{
						// Evolve
					}
					break;
				case MaxHappinessTimeDependent:
					if (HappinessCheck(thePokemon) == true && TimeCheck() == mainDataLoc[i].condition2)
					{
						// Evolve
					}
					break;
				case LevelUp:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						// Evolve
					}
					break;
				case LevelUpTimeDependent:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && TimeCheck() == mainDataLoc[i].condition2)
					{
						// Evolve
					}
					break;
				case LevelUpGender:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && GenderCheck(thePokemon, mainDataLoc[i].condition2) == true)
					{
						// Evolve
					}
					break;
				case LevelUpInSpecificMap:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && currentMap.mapBankMapCombined == mainDataLoc[i].condition2)
					{
						// Evolve
					}
					break;
				case LevelUpInMapName:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && currentMap.mapNameID == mainDataLoc[i].condition2)
					{
						// Evolve
					}
					break;
				case LevelUpWithHeldItem:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && HeldItemCheck(thePokemon, mainDataLoc[i].condition2) == true)
					{
						// Evolve
					}
					break;
				case LevelUpWithHeldItemTimeDependent:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && HeldItemCheck(thePokemon, (mainDataLoc[i].condition2 & 0x7FFF)) == true && TimeCheck() == ((mainDataLoc[i].condition2 & 0x8000) >> 15))
					{
						// Evolve
					}
					break;
				case LevelUpWithKnownMove:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && KnownMoveCheck(thePokemon, mainDataLoc[i].condition2) == true)
					{
						// Evolve
					}
					break;
				case LevelUpWithKnownMoveType:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && KnownMoveCheckType(thePokemon, mainDataLoc[i].condition2) == true)
					{
						// Evolve
					}
					break;
				case LevelUpWithPersonality:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						u16 targetSpecies;
						if (UnsignedModulus((PokemonDecrypter(thePokemon, PersonalityID) & 0xFFFF), 10) > 4)
						{
							targetSpecies = mainDataLoc[i].condition2;
						}
						else
						{
							targetSpecies = mainDataLoc[i].resultingSpecies;
						}
					}
				case LevelUpWithSpeciesInParty:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						u32 j;
						for (j = 0; j < 6; j++)
						{
							if (thePokemon != &partyPokemon[j])
							{
								if (PokemonDecrypter(&partyPokemon[j], Species) == mainDataLoc[i].condition2)
								{
									// Evolve
									break;
								}
							}
						}
					}
					break;
				case LevelUpWithStatBalance:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1Split.byte1) == true)
					{
						u32 statOne = PokemonDecrypter(thePokemon, Attack + mainDataLoc[i].condition2Split.byte1);
						u32 statTwo = PokemonDecrypter(thePokemon, Attack + mainDataLoc[i].condition2Split.byte2);
						u32 success = false;
						switch (mainDataLoc[i].condition1Split.byte2)
						{
							case 0:
								if (statOne == statTwo)
								{
									success = true;
								}
								break;
							case 1:
								if (statOne < statTwo)
								{
									success = true;
								}
								break;
							case 2:
								if (statOne > statTwo)
								{
									success = true;
								}
								break;
							case 3:
								if (statOne <= statTwo)
								{
									success = true;
								}
								break;
							case 4:
								if (statOne >= statTwo)
								{
									success = true;
								}
								break;
							default:
								break;
						}
						if (success == true)
						{
							// Evolve
						}
					}
					break;
				case LevelUpWithTypeInParty:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						u32 j;
						for (j = 0; j < 6; j++)
						{
							Pokemon* p = &partyPokemon[j];
							u16 c = mainDataLoc[i].condition2;
							if (PokemonDecrypter(p, Type1) == c || PokemonDecrypter(p, Type2) == c)
							{
								// Evolve
								break;
							}
						}
					}
					break;
				case LevelUpWithWeatherOnOverworld:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						u8 mapBank = currentMap.mapLocation.mapBank;
						u8 map = currentMap.mapLocation.map;
						MapHeader* header = maps[mapBank][map];
						if (header->weatherType == mainDataLoc[i].condition2)
						{
							// Evolve
						}
					}
					break;
				case MaxBeauty:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && PokemonDecrypter(thePokemon, Beauty) >= MaxHappiness)
					{
						// Evolve
					}
					break;
				case CreatesPokemon:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						if (CountPartyPokemon() < 6)// && PlayerHasItemCategory(Category_Balls) == true)
						{
							// Create Pokémon
						}
						// Evolve
					}
				default:
					break;
			}
			if (evolutionTriggered == true)
			{
				return true;
			}
		}
	}
	return false;
}

u32 CheckTradeEvolutions(Pokemon* incomingPokemon, Pokemon* outgoingPokemon)
{
	u16 species = PokemonDecrypter(incomingPokemon, Species);
	u32 length = evoData[species].index;
	EvolutionData* mainDataLoc = (EvolutionData*)evoData[species].pointerToData;
	if (mainDataLoc != 0)
	{
		u32 i;
		for (i = 0; i < length; i++)
		{
			u32 evolutionTriggered = false;
			switch (mainDataLoc[i].evolutionType)
			{
				case Trade:
					// Evolve
					break;
				case TradeWhileHoldingItem:
					if (HeldItemCheck(incomingPokemon, mainDataLoc[i].condition1) == true)
					{
						// Evolve
					}
					break;
				case TradeWithSpecificSpecies:
					if (PokemonDecrypter(outgoingPokemon, Species) == mainDataLoc[i].condition1)
					{
						if (PokemonDecrypter(outgoingPokemon, HeldItem) != ITEM_EVERSTONE && PokemonDecrypter(incomingPokemon, HeldItem) != ITEM_EVERSTONE)
						{
							// Evolve
						}
					}
					break;
				default:
					break;
			}
			if (evolutionTriggered == true)
			{
				return true;
			}
		}
	}
	return false;
}

u32 CheckStoneEvolutions(Pokemon* thePokemon, u16 itemID)
{
	u16 species = PokemonDecrypter(thePokemon, Species);
	u32 length = evoData[species].index;
	EvolutionData* mainDataLoc = (EvolutionData*)evoData[species].pointerToData;
	if (mainDataLoc != 0)
	{
		u32 i;
		for (i = 0; i < length; i++)
		{
			u32 evolutionTriggered = false;
			if (itemID == mainDataLoc[i].condition1)
			{
				switch (mainDataLoc[i].evolutionType)
				{
					case ItemUsed:
						// Evolve
						break;
					case ItemWithConditionUsed:
						switch (mainDataLoc[i].condition2Split.byte1)
						{
							case 0:
								if (GenderCheck(thePokemon, mainDataLoc[i].condition2Split.byte2) == true)
								{
									// Evolve
								}
								break;
						}
						break;
					default:
						break;
				}
			}
			if (evolutionTriggered == true)
			{
				return true;
			}
		}
	}
	return false;
}

u32 AddExperienceToPokemon(Pokemon* thePokemon, u32 experience)
{
	u32 currentExp = PokemonDecrypter(thePokemon, Experience);
	u32 maxExp = GetLevel100MaxExperience(PokemonDecrypter(thePokemon, Species));
	u32 value = 0;
	if (currentExp + experience < maxExp)
	{
		value = currentExp + experience;
	}
	else
	{
		value = maxExp;
	}
	PokemonEncrypter(thePokemon, Experience, value);
	u32 levelUpCheckRequired = false;
	while (ExperienceGainCausesLevelUp(PokemonDecrypter(thePokemon, Species), PokemonDecrypter(thePokemon, Experience), PokemonDecrypter(thePokemon, Level)) == 1)
	{
		PokemonEncrypter(thePokemon, Level, PokemonDecrypter(thePokemon, Level) + 1);
		levelUpCheckRequired = true;
	}
	if (levelUpCheckRequired == true)
	{
		return CheckLevelUpEvolutions(thePokemon);
	}
	return false;
}

bool PokemonIsShiny(Pokemon* thePokemon)
{
	u32 trainerID = PokemonDecrypter(thePokemon, OTID);
	u16 trainerOne = (trainerID & 0xFFFF) ^ ((trainerID & 0xFFFF0000) >> 0x10);
	u32 pid = PokemonDecrypter(thePokemon, PersonalityID);
	u16 pokemonOne = (pid & 0xFFFF) ^ ((pid & 0xFFFF0000) >> 0x10);
	return (PokemonDecrypter(thePokemon, ForcedShiny) == 1 || (trainerOne ^ pokemonOne) < 8);
}

u32 CalculateHighestIVIndex(Pokemon* thePokemon)
{
	s32 highestIV = -1;
	u32 indexOfHighest = 0;
	u32 count = 0;
	u32 whichOnes = 0;
	{
		u32 i;
		for (i = 0; i < 6; i++)
		{
			s32 currIV = InternalPokemonDecrypter(&thePokemon->mainData, HP_IV + i);
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
		u32 pidValue = UnsignedModulus(PokemonDecrypter(thePokemon, PersonalityID), 6);
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

u32 CalculateCharacteristicIndex(Pokemon* thePokemon)
{
	u32 highestIVIndex = CalculateHighestIVIndex(thePokemon);
	u32 IVValue = InternalPokemonDecrypter(&thePokemon->mainData, HP_IV + highestIVIndex);
	return UnsignedModulus(IVValue, 5) + highestIVIndex;
}

void GeneratePID(Pokemon* thePokemon)
{
	PokemonEncrypter(thePokemon, PersonalityID, GetRandom32BitValue());
}

u32 GenerateIV()
{
	return GetDelimitedRandom32BitValue(0x20);
}

void GenerateAllIVs(Pokemon* thePokemon)
{
	u32 i;
	for (i = 0; i < 6; i++)
	{
		PokemonEncrypter(thePokemon, HP_IV + i, GenerateIV());
	}
}

void SetGender(Pokemon* thePokemon)
{
	u32 genderValue = pokemonBaseData[thePokemon[0].mainData.species].genderSplitByte;
	u32 gender = 0xFE;
	if (genderValue == 0xFF)
	{
		gender = genderValue;
	}
	else if ((thePokemon[0].mainData.personalityID & 0xFF) < genderValue)
	{
		gender = Gender_Female;
	}
	else
	{
		gender = Gender_Male;
	}
	PokemonEncrypter(thePokemon, Gender, gender);
}

void SetNature(Pokemon* thePokemon, u8 forcedNatureValue)
{
	(forcedNatureValue >= 25)?PokemonEncrypter(thePokemon, Nature, GetDelimitedRandom32BitValue(26)):PokemonEncrypter(thePokemon, Nature, forcedNatureValue);
}

u32 GetClampedFormeByteValue(Pokemon* thePokemon, IndexTable* indexToRead)
{
	u32 value = PokemonDecrypter(thePokemon, FormeIndex);
	u16 species = PokemonDecrypter(thePokemon, Species);
	u32 formeType = pokemonBaseData[species].formeType;
	switch (formeType)
	{
		case 0:
			value = 0;
			break;
		case 1:
			value = PokemonDecrypter(thePokemon, Gender);
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

u8 GetBaseStatFromIndex(u16 species, u8 statIndex, u32 formeIndex)
{
	u8 returnable = 0;
	InternalBaseData* dataLoc = ((InternalBaseData**)pokemonBaseData[species].baseDataInfo.pointerToData)[0];
	switch (statIndex)
	{
		case 0:
			returnable = dataLoc[formeIndex].baseHP;
			break;
		case 1:
			returnable = dataLoc[formeIndex].baseAttack;
			break;
		case 2:
			returnable = dataLoc[formeIndex].baseDefence;
			break;
		case 3:
			returnable = dataLoc[formeIndex].baseSpeed;
			break;
		case 4:
			returnable = dataLoc[formeIndex].baseSpecialAttack;
			break;
		case 5:
			returnable = dataLoc[formeIndex].baseSpecialDefence;
			break;
	}
	return returnable;
}

void CalculateStats(Pokemon* thePokemon)
{
	u32 formeIndex = GetClampedFormeByteValue(thePokemon, &pokemonBaseData[PokemonDecrypter(thePokemon, Species)].baseDataInfo);
	u16 species = PokemonDecrypter(thePokemon, Species);
	u32 level = PokemonDecrypter(thePokemon, Level);
	u32 sum = PokemonDecrypter(thePokemon, HP_IV);
	sum += (GetBaseStatFromIndex(species, 0, formeIndex) << 1);
	sum += ((PokemonDecrypter(thePokemon, HP_EV) >> 2) + 100) * level;
	u16 statValue = UnsignedDivide(sum, 100) + 10;
	u16 hpDiff = PokemonDecrypter(thePokemon, MaximumHP) - PokemonDecrypter(thePokemon, CurrentHP);
	PokemonEncrypter(thePokemon, CurrentHP, statValue - hpDiff);
	PokemonEncrypter(thePokemon, MaximumHP, statValue);
	u32 i;
	for (i = 1; i < 6; i++)
	{
		sum = PokemonDecrypter(thePokemon, (HP_IV + i));
		sum += (GetBaseStatFromIndex(species, i, formeIndex) << 1);
		sum += (PokemonDecrypter(thePokemon, (HP_EV + i)) >> 2);
		sum *= level;
		sum = UnsignedDivide(sum, 100) + 5;
		sum = UnsignedFractionalMultiplication(sum, natureEffects[PokemonDecrypter(thePokemon, Nature)][i - 1]);
		PokemonEncrypter(thePokemon, MaximumHP + i, sum);
	}
}

void GiveHeldItemFromTrainerData(Pokemon* thePokemon)
{
	u16 item = 0;
	PokemonEncrypter(thePokemon, HeldItem, item);
}

void GiveHeldItemFromBaseData(Pokemon* thePokemon)
{
	u16 species = PokemonDecrypter(thePokemon, Species);
	u16 item = 0;
	u16 randomValue = GetDelimitedRandom16BitValue(100);
	u32 counter = 0;
	u32 i = 0;
	IndexTable* indexData = &pokemonBaseData[species].baseDataInfo;
	u32 formeIndex = GetClampedFormeByteValue(thePokemon, &pokemonBaseData[PokemonDecrypter(thePokemon, Species)].baseDataInfo);
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
	PokemonEncrypter(thePokemon, HeldItem, item);
}

void GivePokemonAbility(Pokemon* thePokemon, u32 isHiddenAbility)
{
	u16 species = PokemonDecrypter(thePokemon, Species);
	u8 abilityValue = 0;
	InternalBaseData* indexData;
	{
		InternalBaseData** data = (InternalBaseData**)&pokemonBaseData[species].baseDataInfo.pointerToData[0];
		u32 formeIndex = GetClampedFormeByteValue(thePokemon, (IndexTable*)&pokemonBaseData[PokemonDecrypter(thePokemon, Species)]);
		indexData = (InternalBaseData*)data[formeIndex];
	}
	if ((isHiddenAbility == 1) && (indexData->hiddenAbility != 0))
	{
		abilityValue = indexData->hiddenAbility;
	}
	else
	{
		if (indexData->ability2 == 0 || GetDelimitedRandom32BitValue(2) == 0)
		{
			abilityValue = indexData->ability1;
		}
		else
		{
			abilityValue = indexData->ability2;
		}
	}
	PokemonEncrypter(thePokemon, Ability, abilityValue);
}

void SetBaseFriendship(Pokemon* thePokemon, u32 isBattle)
{
	InternalBaseData* indexData;
	{
		InternalBaseData* data = (InternalBaseData*)&pokemonBaseData[PokemonDecrypter(thePokemon, Species)].baseDataInfo.pointerToData;
		indexData = (InternalBaseData*)&data[GetClampedFormeByteValue(thePokemon, &pokemonBaseData[PokemonDecrypter(thePokemon, Species)].baseDataInfo)];
	}
	(isBattle == 1)?PokemonEncrypter(thePokemon, Friendship, 0):PokemonEncrypter(thePokemon, Friendship, indexData->baseFriendship);
}

void SetBaseExperienceFromLevel(Pokemon* thePokemon)
{
	u8 level = PokemonDecrypter(thePokemon, Level);
	u8 expType = pokemonBaseData[PokemonDecrypter(thePokemon, Species)].levelUpType;
	PokemonEncrypter(thePokemon, Experience, pokemonBaseExperiences[expType][level]);
}

void SetBasicTypes(Pokemon* thePokemon)
{
	u16 species = PokemonDecrypter(thePokemon, Species);
	InternalBaseData* indexData;
	{
		InternalBaseData** data = (InternalBaseData**)&pokemonBaseData[species].baseDataInfo.pointerToData[0];
		u32 formeIndex = GetClampedFormeByteValue(thePokemon, (IndexTable*)&pokemonBaseData[PokemonDecrypter(thePokemon, Species)]);
		indexData = (InternalBaseData*)data[formeIndex];
	}
	PokemonEncrypter(thePokemon, Type1, indexData[0].type1);
	PokemonEncrypter(thePokemon, Type2, indexData[0].type2);
}

u8 GetUnownLetterFromPID(u32 pid)
{
	return UnsignedModulus((pid & 0x3) | ((pid & 0x300) >> 6) | ((pid & 0x30000) >> 12) | ((pid & 0x3000000) >> 18), 28);
}

void SetFormeByUnownLetter(Pokemon* thePokemon)
{
	PokemonEncrypter(thePokemon, FormeIndex, GetUnownLetterFromPID(PokemonDecrypter(thePokemon, PersonalityID)));
}

void CheckIfCanLearnNewMoveAndLearnIfWanted(Pokemon* thePokemon)
{
	MovesetEntry* theMoveset = movesets[PokemonDecrypter(thePokemon, Species)];
	vu8 i = 0;
	vu8 level = theMoveset[i].level;
	while (level != 0xFF)
	{
		if (PokemonDecrypter(thePokemon, Level) == level)
		{
			//Ask if want to learn and then learn if yes
		}
		i++;
		level = theMoveset[i].level;
	}
}

void SetMoves(Pokemon* thePokemon)
{
	MovesetEntry* theMoveset = movesets[PokemonDecrypter(thePokemon, Species)];
	vu8 i = 0;
	vu8 currentIndex = 0;
	vu8 level = theMoveset[i].level;
	while (level != 0xFF)
	{
		if (PokemonDecrypter(thePokemon, Level) >= level)
		{
			PokemonEncrypter(thePokemon, Move1 + currentIndex, theMoveset[i].moveID);
			PokemonEncrypter(thePokemon, Move1PP + currentIndex, moveData[theMoveset[i].moveID].basePP);
			PokemonEncrypter(thePokemon, PPBonuses, PokemonDecrypter(thePokemon, PPBonuses) ^ (3 << (currentIndex << 1)));
		}
		i++;
		currentIndex = i & 3;
		level = theMoveset[i].level;
	}
}

u32 GetCatchRateFromPokemon(Pokemon* thePokemon)
{
	u16 species = PokemonDecrypter(thePokemon, Species);
	u32 forme = GetClampedFormeByteValue(thePokemon, (IndexTable*)&pokemonBaseData[species].baseDataInfo);
	return ((InternalBaseData*)pokemonBaseData[species].baseDataInfo.pointerToData)[forme].catchRate;
}

u32 GetBaseExperienceFromPokemon(Pokemon* thePokemon)
{
	u16 species = PokemonDecrypter(thePokemon, Species);
	u32 forme = GetClampedFormeByteValue(thePokemon, (IndexTable*)&pokemonBaseData[species].baseDataInfo);
	return ((InternalBaseData*)pokemonBaseData[species].baseDataInfo.pointerToData)[forme].baseExpYield;
}

u32 GetEVGainFromPokemon(Pokemon* thePokemon)
{
	u16 species = PokemonDecrypter(thePokemon, Species);
	u32 forme = GetClampedFormeByteValue(thePokemon, (IndexTable*)&pokemonBaseData[species].baseDataInfo);
	return ((InternalBaseData*)pokemonBaseData[species].baseDataInfo.pointerToData)[forme].EVYield;
}

#define BallItemBaseID 0

void* GetPokeballSpriteFromPokemon(Pokemon* thePokemon)
{
	u32 ballIndex = PokemonDecrypter(thePokemon, PokeBall) + BallItemBaseID;
	void* data = &EggSprite_FrontSprite;
	return data;
}

void* GetPokeballPaletteFromPokemon(Pokemon* thePokemon)
{
	u32 ballIndex = PokemonDecrypter(thePokemon, PokeBall) + BallItemBaseID;
	void* data = &EggSprite_NormalPalette;
	return data;
}

const void* spriteLookupFromIndices[] = { &pokemonFrontSprite, &pokemonBackSprite, &pokemonNormalPalette, &pokemonShinyPalette };

void* GetPokemonSpritePaletteFromPokemon(Pokemon* thePokemon, u32 sideIndex)
{
	IndexTable* entry = NULL;
	u32 formeTypeValue = 0;
	{
		u16 species = PokemonDecrypter(thePokemon, Species);
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
			u32 gender = PokemonDecrypter(thePokemon, Gender);
			if (gender == Gender_Genderless)
			{
				gender = Gender_Male;
			}
			if (gender >= index)
			{
				gender = 0;
			}
			data = data[gender];
			break;
		}
		case GenericFromByte:
		{
			u32 spriteIndex = PokemonDecrypter(thePokemon, FormeIndex);
			if (spriteIndex >= index)
			{
				spriteIndex = 0;
			}
			data = data[spriteIndex];
			break;
		}
		default:
			data = data[0];
			break;
	}
	return data;
}

void* GetPokemonFrontSpriteFromPokemon(Pokemon* thePokemon)
{
	return GetPokemonSpritePaletteFromPokemon(thePokemon, Sprite_Side_Front);
}

void* GetPokemonBackSpriteFromPokemon(Pokemon* thePokemon)
{
	return GetPokemonSpritePaletteFromPokemon(thePokemon, Sprite_Side_Back);
}

void* GetPokemonPaletteFromPokemon(Pokemon* thePokemon)
{
	return GetPokemonSpritePaletteFromPokemon(thePokemon, Palette_Normal + PokemonIsShiny(thePokemon));
}

void GeneratePokemon(Pokemon* thePokemon, u8 level, u16 species)
{
	memset32(thePokemon, 0, 25);
	PokemonEncrypter(thePokemon, Level, level);
	PokemonEncrypter(thePokemon, CaptureLevel, level);
	PokemonEncrypter(thePokemon, MetLocation, currentMap.mapNameID);
	PokemonEncrypter(thePokemon, Species, species);
	PokemonEncrypter(thePokemon, StatusAilment, 0);
	PokemonEncrypter(thePokemon, Nickname, (u32)(&pokemonNames[species]));
	GeneratePID(thePokemon);
	(species != Unown)?PokemonEncrypter(thePokemon, FormeIndex, 0):SetFormeByUnownLetter(thePokemon);
	PokemonEncrypter(thePokemon, HP_EV, 1);
	SetBasicTypes(thePokemon);
	SetBaseExperienceFromLevel(thePokemon);
	SetBaseFriendship(thePokemon, 0);
	GivePokemonAbility(thePokemon, 0);
	GiveHeldItemFromBaseData(thePokemon);
	GenerateAllIVs(thePokemon);
	SetGender(thePokemon);
	SetNature(thePokemon, 0xFF);
	if (GetRandom16BitValue() < 3)
	{
		PokemonEncrypter(thePokemon, PokerusStatus, 1);
		u32 strain = GetDelimitedRandom32BitValue(15) + 1;
		PokemonEncrypter(thePokemon, PokerusStrain, strain);
		PokemonEncrypter(thePokemon, PokerusDuration, (strain & 3) + 1);
	}
	CalculateStats(thePokemon);
	SetMoves(thePokemon);
}

u16 FindBabySpeciesInner(u16 sourceSpecies)
{
	u32 i;
	for (i = 0; i <= numberOfPokemon; i++)
	{
		u32 length = evoData[i].index;
		if (length != 0)
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

const RODATA_LOCATION u16 alternativeSpeciesChecks[][2] = { { NidoranF, NidoranM }, { Illumise, Volbeat }, { Volbeat, Illumise } };
const RODATA_LOCATION IncenseItemEgg incenseItemEggs[] = { { Wynaut, Wobbuffet, ITEM_LAXINCENSE }, { Azurill, Marill, ITEM_SEAINCENSE }, { Mime_Jr, Mr_Mime, ITEM_ODDINCENSE }, { Munchlax, Snorlax, ITEM_FULLINCENSE }, { Budew, Roselia, ITEM_ROSEINCENSE }, { Chingling, Chimecho, ITEM_PUREINCENSE }, { Bonsly, Sudowoodo, ITEM_ROCKINCENSE }, { Happiny, Chansey, ITEM_LUCKINCENSE }, { Mantyke, Mantine, ITEM_WAVEINCENSE } };

void GeneratePokemonEgg(Pokemon* mother, Pokemon* father)
{
	u16 motherItem = PokemonDecrypter(mother, HeldItem);
	//u16 fatherItem = PokemonDecrypter(father, HeldItem);
	u16 species = PokemonDecrypter(mother, Species);
	if (pokemonBaseData[species].eggGroup1 == EGG_GROUP_DITTO && pokemonBaseData[species].eggGroup2 == EGG_GROUP_DITTO)
	{
		species = PokemonDecrypter(father, Species);
	}
	species = FindBabySpeciesInner(species);
	if (species == Manaphy)
	{
		species = Phione;
	}
	u32 i;
	for (i = 0; i < 3; i++)
	{
		if (species == alternativeSpeciesChecks[i][0])
		{
			species = alternativeSpeciesChecks[i][GetDelimitedRandom32BitValue(2)];
			break;
		}
	}
	for (i = 0; i < 9; i++)
	{
		if (species == incenseItemEggs[i].foundSpecies)
		{
			if (motherItem != incenseItemEggs[i].itemID && motherItem != incenseItemEggs[i].itemID)
			{
				species = incenseItemEggs[i].alternativeSpecies;
			}
			break;
		}
	}
	Pokemon* egg = &temporaryHoldingPokemon;
	GeneratePokemon(egg, 0, species);
	PokemonEncrypter(egg, IsEgg, true);
	// Calculate Egg Moves and award where necessary
}

void GivePokemonToPlayer(Pokemon* thePokemon, u8 level, u16 species, u32 formeIndex)
{
	GeneratePokemon(thePokemon, level, species);
	PokemonEncrypter(thePokemon, OTID, player.completeTrainerID);
	PokemonEncrypter(thePokemon, OTName, (u32)player.name);
	InternalBaseData* data = (InternalBaseData*)((void**)pokemonBaseData[species].baseDataInfo.pointerToData)[formeIndex];
	PokemonEncrypter(thePokemon, Friendship, data[0].baseFriendship);
	if (formeIndex != 0)
	{
		PokemonEncrypter(thePokemon, FormeIndex, formeIndex);
	}
}

void GenerateWildPokemonFromData(Pokemon* thePokemon, WildPokemonData* wildData)
{
	WildPokemonEntry* pointer = wildData->wildData[rtcData.timeOfDay];
	if (pointer == 0)
	{
		pointer = wildData->wildData[0];
		if (pointer == 0)
		{
			return;
		}
	}
	u32 loopCounter = 0;
	{
		u32 percentage = GetDelimitedRandom32BitValue(100);
		u32 counter = pointer[loopCounter].percentage;
		while (counter < percentage && counter <= 100)
		{
			loopCounter++;
			counter += pointer[loopCounter].percentage;
		}
	}
	u32 calculatedLevel;
	{
		calculatedLevel = pointer[loopCounter].maxLevel;
		u32 minLevel = pointer[loopCounter].minLevel;
		if (minLevel > calculatedLevel)
		{
			u32 temp = minLevel;
			minLevel = calculatedLevel;
			calculatedLevel = temp;
		}
		if (calculatedLevel != minLevel)
		{
			calculatedLevel += GetDelimitedRandom32BitValue((calculatedLevel - minLevel) + 1);
		}
	}
	GeneratePokemon(thePokemon, calculatedLevel, pointer[loopCounter].species);
}

const RODATA_LOCATION char questionString[] = "???";

void PokemonInfoScreenInitialise()
{
	Pokemon* thePokemon = &temporaryHoldingPokemon;
	{
		u16 species = PokemonDecrypter(thePokemon, Species);
		BufferPokemonNameFromPointer(thePokemon, 0);
		u16 convertedIndex = ConvertNationalIDToRegionalID(species, CheckFlag(Flag_NationalDex));
		if (convertedIndex == 0)
		{
			BufferString((char*)&questionString, 1, 3);
		}
		else
		{
			BufferNumber(convertedIndex, 3, 1);
		}
	}
	{
		u32 type1 = PokemonDecrypter(thePokemon, Type1);
		u32 type2 = PokemonDecrypter(thePokemon, Type2);
		if (type2 != type1)
		{
			// Render secondary type
		}
	}
	BufferString((char*)PokemonDecrypter(thePokemon, OTName), 2, 7);
	BufferItemName(PokemonDecrypter(thePokemon, HeldItem), 3);
	BufferNatureName(PokemonDecrypter(thePokemon, Nature), 4);
	BufferMapHeaderName(PokemonDecrypter(thePokemon, MetLocation), 5);
	BufferNumber(PokemonDecrypter(thePokemon, Level), 3, 6);
	{
		u32 characteristicID = CalculateCharacteristicIndex(thePokemon);
		BufferString((char*)(characteristicsStrings[characteristicID])[0], 7, 0);
	}
	{
		void* spriteRAMLocation = (void*)SpriteAllocate(64 * 64);
		preOAM[0].tileLocation = spriteRAMLocation;
		void* spriteROMLocation = GetPokemonFrontSpriteFromPokemon(thePokemon);
		LZ77UnCompVram(spriteROMLocation, spriteRAMLocation);
	}
	{
		preOAM[1].paletteSlot = PaletteAllocate(0);
		void* paletteRAMLocation = (void*)ObjectPaletteRAM(preOAM[0].paletteSlot);
		void* paletteROMLocation = GetPokemonPaletteFromPokemon(thePokemon);
		memcpy32(paletteRAMLocation, paletteROMLocation, 8);
	}
	preOAM[0].isActive = 1;
	preOAM[0].objShape = Shape_Square;
	preOAM[0].objSize = Square_64x64;
	preOAM[0].priority = 0;
	preOAM[0].requiresUpdate = 1;
	preOAM[0].xLocation = 28;
	preOAM[0].yLocation = 20;
	//preOAM[0].hFlip = 1;
	{
		void* spriteRAMLocation = (void*)SpriteAllocate(16 * 16);
		preOAM[1].tileLocation = spriteRAMLocation;
		void* spriteROMLocation = GetPokeballSpriteFromPokemon(thePokemon);
		LZ77UnCompVram(spriteROMLocation, spriteRAMLocation);
	}
	{
		preOAM[1].paletteSlot = PaletteAllocate(1);
		void* paletteRAMLocation = (void*)ObjectPaletteRAM(preOAM[1].paletteSlot);
		void* paletteROMLocation = GetPokeballPaletteFromPokemon(thePokemon);
		memcpy32(paletteRAMLocation, paletteROMLocation, 8);
	}
	preOAM[1].isActive = 1;
	preOAM[1].objShape = Shape_Square;
	preOAM[1].objSize = Square_16x16;
	preOAM[1].priority = 0;
	preOAM[1].requiresUpdate = 1;
	preOAM[1].xLocation = 90;
	preOAM[1].yLocation = 72;
	CallbackMain = &IgnoreKeyPresses;
	HandleKeyPresses = &PokemonInfoScreenKeyPresses;
}
