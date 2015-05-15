/*
 * Track.cpp
 *
 *  Created on: 12 May 2015
 *      Author: Jamie
 */

#include "Track.h"

Track::Track()
{
	// TODO Auto-generated constructor stub
	for (int i = 0; i < NumGBPEngineFlags; i++)
	{
		statusFlags[i] = false;
	}
}

Track::~Track()
{
	// TODO Auto-generated destructor stub
}

u16 Track::CalculateLength(u8 frameDelay, u16 tempo, u8 bitLength, u16 previousLeftover)
{
	return ((frameDelay * (bitLength + 1)) * tempo) + previousLeftover;
}

u16 Track::U16LittleEndianToBigEndian(u16 input)
{
	u16 temp = (input & 0xFF) << 8;
	return (input >> 8) | temp;
}

void Track::Clear()
{
	for (int i = 0; i < NumGBPEngineFlags; i++)
	{
		statusFlags[i] = false;
	}
	nextInstruction = 0;
	returnLocation = 0;
	noteLength1 = 0;
	noteLength2 = 0;
	loopCounter = 0;
	loopCounter2 = 0;
	velocity = 0;
	pan = 0;
	pitch = 0;
	tone = 0;
	frameDelay = 0;
	keyShift = 0;
}
