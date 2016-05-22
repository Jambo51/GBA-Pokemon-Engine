/*
 * PokeSprites.h
 *
 *  Created on: 17 Jul 2014
 *      Author: Jamie
 */

#ifndef POKESPRITES_H_
#define POKESPRITES_H_

#include "GlobalDefinitions.h"

class PokemonSprites
{
public:
	static const IndexTable pokemonFrontSprite[NumberOfPokemon + 1];
	static const IndexTable pokemonBackSprite[NumberOfPokemon + 1];
	static const IndexTable pokemonNormalPalette[NumberOfPokemon + 1];
	static const IndexTable pokemonShinyPalette[NumberOfPokemon + 1];
};

#endif /* POKESPRITES_H_ */
