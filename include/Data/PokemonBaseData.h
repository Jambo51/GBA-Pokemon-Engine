#ifndef POKEMONBASEDATA_H
#define POKEMONBASEDATA_H

#include "GlobalDefinitions.h"

extern u8 pokemonNames[650][11];
extern u8 natureNames[25][7];
extern u8 natureEffects[25][5];
extern BaseData pokemonBaseData[];
extern u32 pokemonBaseExperiences[6][100];
extern u8 grassLikelihoods[];
#define grassLikelihoodsLength 12
extern u8 rockSmashLikelihoods[];
#define rockSmashLikelihoodsLength 5
#define treeLikelihoods rockSmashLikelihoods
#define surfingLikelihoods rockSmashLikelihoods
#define treeLikelihoodsLength rockSmashLikelihoodsLength
#define surfingLikelihoodsLength rockSmashLikelihoodsLength
extern u8 oldRodLikelihoods[];
#define oldRodLikelihoodsLength 2
extern u8 goodRodLikelihoods[];
#define goodRodLikelihoodsLength 3
extern u8 superRodLikelihoods[];
#define superRodLikelihoodsLength 5
extern MoveData moveData[];
extern void* movesets[];
extern IndexTable evoDataPointers[];

#endif
