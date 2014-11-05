/*
 * BattleStrings.c
 *
 *  Created on: 28 Oct 2014
 *      Author: pcworld
 */
#include "Data\GlobalDefinitions.h"

ALIGN(1) const char pokemonUsedString[] = { 0xFD, 0x0, ' ', 'u', 's', 'e', 'd', ' ', 0xFD, 0x4, '!', '\0' };
ALIGN(1) const char pokemonFaintedString[] = { 0xFD, 0x01, ' ', 'f', 'a', 'i', 'n', 't', 'e', 'd', '!', '\0' };
ALIGN(1) const char experienceGainStringTwo[] = { 0xFD, 0x00, ' ', 'g', 'a', 'i', 'n', 'e', 'd', '\n', 0xFD, 0x08, ' ', 'E', 'x', 'p', '.', ' ', 'P', 'o', 'i', 'n', 't', 's', '!', '\0' };
ALIGN(1) const char experienceGainStringOne[] = { 0xFD, 0x00, ' ', 'g', 'a', 'i', 'n', 'e', 'd', '\n', 0xFD, 0x08, ' ', 'E', 'x', 'p', '.', ' ', 'P', 'o', 'i', 'n', 't', '!', '\0' };
ALIGN(1) const char trainerVictoryMessage[] = { 0xFD, 0x09, ' ', 'd', 'e', 'f', 'e', 'a', 't', 'e', 'd', '\n', 0xFD, 0x0A, ' ', 0xFD, 0x0B, '!', '\0' };
ALIGN(1) const char trainerCashGainString[] = { 0xFD, 0x09, ' ', 'g', 'o', 't', ' ', '$', 0xFD, 0x08, '\n', 'f', 'o', 'r', ' ', 'w', 'i', 'n', 'n', 'i', 'n', 'g', '!', '\0' };
ALIGN(1) const char mumCashGainString[] = { 'S', 'e', 'n', 't', ' ', '$', 0xFD, 0x08, ' ', 't', 'o', ' ', 'm', 'u', 'm', '.', '\0' };
ALIGN(1) const char pickupCashGainString[] = { 0xFD, 0x09, ' ', 'p', 'i', 'c', 'k', 'e', 'd', ' ', 'u', 'p', ' ', '$', 0xFD, 0x08, '!', '\0' };
ALIGN(1) const char noFlee[] = { 0xFD, 0x00, ' ', 'w', 'a', 's', '\n', 'u', 'n', 'a', 'b', 'l', 'e', ' ', 't', 'o', ' ', 'f', 'l', 'e', 'e', '!', '\0' };
ALIGN(1) const char abilityTrap[] = { 'A', ' ', 'f', 'o', 'e', ' ', 'w', 'i', 't', 'h', ' ', 0xFD, 0x10, '\n', 'p', 'r', 'e', 'v', 'e', 'n', 't', 's', ' ', 'e', 's', 'c', 'a', 'p', 'e', '!', '\0' };
ALIGN(1) const char moveTrap[] = { 'C', 'a', 'n', 'n', 'o', 't', ' ', 'e', 's', 'c', 'a', 'p', 'e', ' ', 'd', 'u', 'e', '\n', 't', 'o', ' ', 0xFD, 0x11, '!', '\0' };
ALIGN(1) const char abilityFlee[] = { 'F', 'l', 'e', 'd', ' ', 's', 'u', 'c', 'c', 'e', 's', 's', 'f', 'u', 'l', 'l', 'y', '\n', 'u', 's', 'i', 'n', 'g', ' ', 0xFD, 0x10, '!', '\0' };
ALIGN(1) const char fled[] = { 'E', 's', 'c', 'a', 'p', 'e', 'd', ' ', 's', 'u', 'c', 'c', 'e', 's', 's', 'f', 'u', 'l', 'l', 'y', '!', '\0' };
ALIGN(1) char* critMessage = "It's a critical hit!";
ALIGN(1) char notEffectiveMessage[] = { 'I', 't', ' ', 'w', 'a', 's', 'n', '\'', 't', ' ', 'v', 'e', 'r', 'y', ' ', 'e', 'f', 'f', 'e', 'c', 't', 'i', 'v', 'e', 0x85, '\0' };
ALIGN(1) char* superEffectiveMessage = "It's super effective!";
ALIGN(1) char* noEffectMessage = "It has no effect!";
const ALIGN(1) char statBuffString[] = { 0xFD, 0x01, '\'', 's', ' ', 0xFD, 0x06, '\n', 0xFD, 0x07, '!', '\0' };
const ALIGN(1) char paralysedString[] = { 0xFD, 0x00, ' ', 'i', 's', ' ', 'u', 'n', 'a', 'b', 'l', 'e', '\n', 't', 'o', ' ', 'm', 'o', 'v', 'e', '!', '\0' };
const ALIGN(1) char sleepingString[] = { 0xFD, 0x00, ' ', 'i', 's', ' ', 'f', 'a', 's', 't', ' ', 'a', 's', 'l', 'e', 'e', 'p', '!', '\0' };
const ALIGN(1) char wakingUpString[] = { 0xFD, 0x00, ' ', 'w', 'o', 'k', 'e', ' ', 'u', 'p', '!', '\0' };
const ALIGN(1) char frozenString[] = { 0xFD, 0x00, ' ', 'i', 's', ' ', 'f', 'r', 'o', 'z', 'e', 'n', ' ', 's', 'o', 'l', 'i', 'd', '!', '\0' };
const ALIGN(1) char defrostingString[] = { 0xFD, 0x00, ' ', 'd', 'e', 'f', 'r', 'o', 's', 't', 'e', 'd', '!', '\0' };
const ALIGN(1) char cureBurnString[] = { 0xFD, 0x00, ' ', 'w', 'a', 's', ' ', 'c', 'u', 'r', 'e', 'd', '\n', 'o', 'f', ' ', 'i', 't', 's', ' ', 'b', 'u', 'r', 'n', '!', '\0' };
const ALIGN(1) char failedString[] = { 'B', 'u', 't', ' ', 'i', 't', ' ', 'f', 'a', 'i', 'l', 'e', 'd', 0x85, '\0' };
const ALIGN(1) char missedString[] = { 0xFD, 0x00, '\'', 's', '\n', 'a', 't', 't', 'a', 'c', 'k', ' ', 'm', 'i', 's', 's', 'e', 'd', '!', '\0' };
const ALIGN(1) char itemUsedString[] = { 0xFD, 0x09, ' ', 'u', 's', 'e', 'd', ' ', 0xFD, 0x0C, '\n', 'o', 'n', ' ', 0xFD, 0x00, '!', '\0' };
const ALIGN(1) char ballThrownString[] = { 0xFD, 0x09, ' ', 't', 'h', 'r', 'e', 'w', '\n', 'a', ' ', 0xFD, 0x0C, '!', '\0' };
const ALIGN(1) char callString[] = { 0xFD, 0x09, ' ', 'c', 'a', 'l', 'l', 'e', 'd', '\n', 0xFD, 0x00, '!', '\0' };
const ALIGN(1) char wokenByCall[] = { 0xFD, 0x09, '\'', 's', ' ', 'c', 'a', 'l', 'l', '\n', 'w', 'o', 'k', 'e', ' ', 0xFD, 0x00, '!', '\0' };
const ALIGN(1) char fledString[] = { 0xFD, 0x00, ' ', 'f', 'l', 'e', 'd', '!', '\0' };
const ALIGN(1) char clearHyperMode[] = { 0xFD, 0x00, ' ', 'w', 'a', 's', ' ', 'c', 'a', 'l', 'l', 'e', 'd', '\n', 't', 'o', ' ', 'i', 't', 's', ' ', 's', 'e', 'n', 's', 'e', 's', '!', '\0' };
const ALIGN(1) char callNoEffect[] = { 'T', 'h', 'e', ' ', 'c', 'a', 'l', 'l', ' ', 'h', 'a', 'd', ' ', 'n', 'o', ' ', 'e', 'f', 'f', 'e', 'c', 't', '!', '\0' };
const ALIGN(1) char whatToDoString[] = { 'W', 'h', 'a', 't', ' ', 's', 'h', 'o', 'u', 'l', 'd', '\0' };
const ALIGN(1) char whatToDoString2[] = { 0xFD, 0x00, ' ', 'd', 'o', '?', '\0' };

char* textTable[] = {
		(char*)&statBuffString,
		(char*)&paralysedString,
		(char*)&sleepingString,
		(char*)&wakingUpString,
		(char*)&frozenString,
		(char*)&defrostingString,
		(char*)&cureBurnString,
		(char*)&failedString,
		(char*)&missedString,
		(char*)&itemUsedString,
		(char*)&ballThrownString,
		(char*)&callString,
		(char*)&wokenByCall,
		(char*)&fledString
};
