/*
 * BattleAI.c
 *
 *  Created on: 8 Oct 2014
 *      Author: pcworld
 */

#include "Data/Memorylocations.h"
#include "Functions/Maths.h"

#define NumLayers 3

u32 HasPokemonFainted(BattleAIData* input)
{
	return 0;
}

const U32FunctionPointerIBattleAIData* inputNeurons[] = { &HasPokemonFainted };

const u8 inputHiddenWeights[][2] = { { 100, 100 } };

const NeuralLayer inputLayer = { 1, &inputHiddenWeights, &inputNeurons };

const NeuralLayer hiddenLayer = { };

const NeuralLayer outputLayer = { };

const NeuralLayer* layers[] = { &inputLayer, &hiddenLayer, &outputLayer };

const NeuralNet battleAI = { NumLayers, &layers };

u32 RunNeuralNetworkAI(BattleAIData* battleAIData, u32 battlerID)
{
	u32 i;
	for (i = 0; i < battleAI.numLayers; i++)
	{
		NeuralLayer* layer = &battleAI.layers[0][i];
		u32 j;
		u32 weight = 0;
		for (j = 0; j < layer[0].numNeurons; j++)
		{
			weight += UnsignedFractionalMultiplication(layer[0].neurons[j](battleAIData), layer[0].neuronWeights[i][j]);
		}
	}
}


