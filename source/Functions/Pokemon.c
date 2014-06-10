#include "Data/GlobalDefinitions.h"
#include "Data/PokemonBaseData.h"
#include "Data/MemoryLocations.h"
#include "Functions/Maths.h"
#include "Functions/TextFunctions.h"

typedef enum CryptionIndices
{
	PersonalityID,
	OTID,
	Nickname,
	FormeIndex,
	Gender,
	Nature,
	ForcedShiny,
	OTName,
	Mark,
	Checksum,
	IsObedient,
	Species,
	HeldItem,
	Move1,
	Move2,
	Move3,
	Move4,
	Move1PP,
	Move2PP,
	Move3PP,
	Move4PP,
	PPBonuses,
	Coolness,
	Beauty,
	Cuteness,
	Experience,
	HP_EV,
	Attack_EV,
	Defence_EV,
	Speed_EV,
	Special_Attack_EV,
	Special_Defence_EV,
	Friendship,
	Smartness,
	PokerusStatus,
	MetLocation,
	CaptureLevel,
	IsObedient2,
	PokeBall,
	HP_IV,
	Attack_IV,
	Defence_IV,
	Speed_IV,
	Special_Attack_IV,
	Special_Defence_IV,
	IsEgg,
	Ability,
	Toughness,
	Feel,
	Type1,
	Type2,
	IsObedient3,
	IsObedient4,
	IsObedient5,
	IsObedient6,
	StatusAilment,
	Level,
	CurrentHP,
	MaximumHP,
	Attack,
	Defence,
	Speed,
	SpecialAttack,
	SpecialDefence,
	IsObedient7
} CryptionIndices;

const u16 numberOfPokemon = 649;

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

void SetOTName(AbridgedPokemon* thePokemon, u8* nameString)
{
	StringCopy((u8*)&thePokemon[0].originalTrainerName, nameString, 7);
}

void SetNickname(AbridgedPokemon* thePokemon, u8* nameString)
{
	StringCopy((u8*)&thePokemon[0].nickname, nameString, 11);
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
	u32 currentEVValue = InternalPokemonDecrypter(thePokemon, (HP_EV + index));
	if (sum == 510 || sum + value > 510 || currentEVValue == 0xFF || currentEVValue + value > 0xFF)
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
			SetNickname(thePokemon, (u8*)value);
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
			SetOTName(thePokemon, (u8*)value);
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
			if (value < 650)
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

void AddExperienceToPokemon(Pokemon* thePokemon, u32 experience)
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
	while (ExperienceGainCausesLevelUp(PokemonDecrypter(thePokemon, Species), PokemonDecrypter(thePokemon, Experience), PokemonDecrypter(thePokemon, Level)) == 1)
	{
		PokemonEncrypter(thePokemon, Level, PokemonDecrypter(thePokemon, Level) + 1);
	}
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
	u32 i;
	for (i = 0; i < 6; i++)
	{
		s32 currIV = PokemonDecrypter(thePokemon, HP_IV + i);
		if (currIV > highestIV)
		{
			highestIV = currIV;
		}
	}
	u8 whichOnes = 0;
	u32 count = 0;
	u32 indexOfHighest = 0;
	for (i = 0; i < 6; i++)
	{
		s32 currIV = PokemonDecrypter(thePokemon, HP_IV + i);
		if (currIV == highestIV)
		{
			whichOnes |= (1 << i);
			count++;
			indexOfHighest = i;
		}
	}
	if (count > 1)
	{
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
	u32 IVValue = PokemonDecrypter(thePokemon, HP_IV + highestIVIndex);
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
	u8 genderValue = pokemonBaseData[thePokemon[0].mainData.species].genderSplitByte;
	u8 gender = 0xFE;
	if (genderValue == 0xFF)
	{
		gender = genderValue;
	}
	else if ((thePokemon[0].mainData.personalityID & 0xFF) < genderValue)
	{
		gender = 1;
	}
	else
	{
		gender = 0;
	}
	PokemonEncrypter(thePokemon, Gender, gender);
}

void SetNature(Pokemon* thePokemon, u8 forcedNatureValue)
{
	(forcedNatureValue >= 25)?PokemonEncrypter(thePokemon, Nature, GetDelimitedRandom32BitValue(26)):PokemonEncrypter(thePokemon, Nature, forcedNatureValue);
}

u8 GetBaseStatFromIndex(u16 species, u8 statIndex)
{
	u8 returnable = 0;
	switch (statIndex)
	{
		case 0:
			returnable = pokemonBaseData[species].baseHP;
			break;
		case 1:
			returnable = pokemonBaseData[species].baseAttack;
			break;
		case 2:
			returnable = pokemonBaseData[species].baseDefence;
			break;
		case 3:
			returnable = pokemonBaseData[species].baseSpeed;
			break;
		case 4:
			returnable = pokemonBaseData[species].baseSpecialAttack;
			break;
		case 5:
			returnable = pokemonBaseData[species].baseSpecialDefence;
			break;
	}
	return returnable;
}

void CalculateStats(Pokemon* thePokemon)
{
	u16 statValue = UnsignedDivide(((PokemonDecrypter(thePokemon, HP_IV) + (GetBaseStatFromIndex(PokemonDecrypter(thePokemon, Species), 0) << 1) + (PokemonDecrypter(thePokemon, HP_EV) >> 2) + 100) * PokemonDecrypter(thePokemon, Level)), 100) + 10;
	u16 hpDiff = PokemonDecrypter(thePokemon, MaximumHP) - PokemonDecrypter(thePokemon, CurrentHP);
	PokemonEncrypter(thePokemon, CurrentHP, statValue - hpDiff);
	PokemonEncrypter(thePokemon, MaximumHP, statValue);
	for (statValue = 1; statValue < 6; statValue++)
	{
		PokemonEncrypter(thePokemon, MaximumHP + statValue, UnsignedFractionalMultiplication((UnsignedDivide(((PokemonDecrypter(thePokemon, (HP_IV + statValue)) + (GetBaseStatFromIndex(PokemonDecrypter(thePokemon, Species), 0) << 1) + (PokemonDecrypter(thePokemon, (HP_EV + statValue)) >> 2) + 100) * PokemonDecrypter(thePokemon, Level)), 100) + 10), natureEffects[PokemonDecrypter(thePokemon, Nature)][statValue - 1]));
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
	if (pokemonBaseData[species].item1 == pokemonBaseData[species].item2)
	{
		item = pokemonBaseData[species].item1;
	}
	else
	{
		u16 num = GetDelimitedRandom32BitValue(100);
		if (num < 50)
		{
			item = pokemonBaseData[species].item1;
		}
		else if (num >= 50 && num < 55)
		{
			item = pokemonBaseData[species].item2;
		}
	}
	PokemonEncrypter(thePokemon, HeldItem, item);
}

void GivePokemonAbility(Pokemon* thePokemon, bool isHiddenAbility)
{
	u16 species = PokemonDecrypter(thePokemon, Species);
	u8 abilityValue = 1;
	if (isHiddenAbility && pokemonBaseData[species].hiddenAbility != 0)
	{
		abilityValue = pokemonBaseData[species].hiddenAbility;
	}
	else
	{
		if (pokemonBaseData[species].ability2 == 0 || GetDelimitedRandom32BitValue(2) == 0)
		{
			abilityValue = pokemonBaseData[species].ability1;
		}
		else
		{
			abilityValue = pokemonBaseData[species].ability2;
		}
	}
	PokemonEncrypter(thePokemon, Ability, abilityValue);
}

void SetBaseFriendship(Pokemon* thePokemon, bool isBattle)
{
	(isBattle)?PokemonEncrypter(thePokemon, Friendship, 0):PokemonEncrypter(thePokemon, Friendship, pokemonBaseData[PokemonDecrypter(thePokemon, Species)].baseFriendship);
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
	PokemonEncrypter(thePokemon, Type1, pokemonBaseData[species].type1);
	PokemonEncrypter(thePokemon, Type2, pokemonBaseData[species].type2);
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
	(species != 0xC9)?PokemonEncrypter(thePokemon, FormeIndex, 0):SetFormeByUnownLetter(thePokemon);
	PokemonEncrypter(thePokemon, HP_EV, 1);
	SetBasicTypes(thePokemon);
	SetBaseExperienceFromLevel(thePokemon);
	SetBaseFriendship(thePokemon, 0);
	GivePokemonAbility(thePokemon, 0);
	GiveHeldItemFromBaseData(thePokemon);
	GenerateAllIVs(thePokemon);
	SetGender(thePokemon);
	SetNature(thePokemon, 0xFF);
	CalculateStats(thePokemon);
	SetMoves(thePokemon);
}

void GivePokemonToPlayer(Pokemon* thePokemon, u8 level, u16 species)
{
	GeneratePokemon(thePokemon, level, species);
	PokemonEncrypter(thePokemon, OTID, player.trainerID);
	PokemonEncrypter(thePokemon, OTName, (u32)(&player.name));
}
