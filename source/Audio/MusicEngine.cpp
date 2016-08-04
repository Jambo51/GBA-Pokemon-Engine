/*
 * MusicEngine.c
 *
 *  Created on: 3 Jun 2014
 *      Author: Jamie
 */

#include "Audio/MusicEngine.h"
#include <tonc.h>

namespace Audio
{
	MusicEngine::MusicEngine()
	{
		memset16(buffer, 0, 17);
	}

	MusicEngine::~MusicEngine()
	{
	}

	void MusicEngine::Update()
	{
		memcpy32((void*)0x04000060, &buffer, 8);
		*(u16*)0x04000080 = buffer[16];
		buffer[2] &= 0x7FF;
		buffer[6] &= 0x7FF;
		buffer[10] &= 0x7FF;
		buffer[14] &= 0x7FF;
	}
}
