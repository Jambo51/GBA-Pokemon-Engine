/*
 * M4ANoiseTrack.cpp
 *
 *  Created on: 17 Dec 2015
 *      Author: CoolerMaster
 */

#include "M4ANoiseTrack.h"
#include "LoadUnalignedCode.h"

M4ANoiseTrack::M4ANoiseTrack()
{
	// TODO Auto-generated constructor stub

}

M4ANoiseTrack::~M4ANoiseTrack()
{
	// TODO Auto-generated destructor stub
}

bool M4ANoiseTrack::Update()
{
	if (frameCount)
	{
		frameCount--;
	}
	else
	{
		while (*nextInstruction >= FINE && *nextInstruction <= TIE)
		{
			switch (*nextInstruction)
			{
			case FINE:
				return false;
			case GOTO:
				nextInstruction = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(nextInstruction, 1, 4);
				break;
			case PATT:
				returnLocation = (u8*)((u32)nextInstruction + 5);
				nextInstruction = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(nextInstruction, 1, 4);
				pattMode = true;
				break;
			case PEND:
				if (pattMode && returnLocation)
				{
					nextInstruction = returnLocation;
					returnLocation = (u8*)0;
					pattMode = false;
				}
				else
				{
					nextInstruction++;
				}
				break;
			case REPT:
				break;
			case PRIO:
				break;
			case TEMPO:
				break;
			case KEYSH:
				break;
			case VOICE:
				voiceData = vg[*(nextInstruction + 1)];
				if (!M4ATrack::AnalyseNewVoice(voiceData))
				{

				}
				nextInstruction += 2;
				break;
			case VOL:
				baseVolume = *(nextInstruction + 1);
				nextInstruction += 2;
				break;
			case PAN:
				pan = *(nextInstruction + 1);
				nextInstruction += 2;
				break;
			case BEND:
				break;
			case BENDR:
				break;
			case LFOS:
				break;
			case LFODL:
				break;
			case MOD:
				break;
			case MODT:
				break;
			case TUNE:
				break;
			case EOT:
				break;
			case TIE:
				break;
			default:
				nextInstruction++;
				break;
			}
		}
	}
	return true;
}
