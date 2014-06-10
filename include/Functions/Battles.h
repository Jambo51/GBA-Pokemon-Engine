#ifndef BATTLES_H
#define BATTLES_H

/*Normal
Fighting
Flying
Poison
Ground
Rock
Bug
Ghost
Steel
Fire
Water
Grass
Electric
Psychic
Ice
Dragon
Dark
Fairy
???*/

#include "Data/GlobalDefinitions.h"
#include "Data/PokemonBaseData.h"

void ChangeBattleDamageLocation(u8 damageValue);
void ApplyTypeBasedModifiers(u32 moveType, u32 defenderType1, u32 defenderType2);

#endif
