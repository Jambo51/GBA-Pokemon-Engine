/*
 * M4AEngine.cpp
 *
 *  Created on: 22 May 2015
 *      Author: Jamie
 */

#include "M4AEngine.h"
#include "M4SongTable.h"
#include "SoundEngine.h"

RODATA_LOCATION ALIGN(2) u16 M4AEngine::Sqrt[] = {
	0x0000,0x0B5B,0x1010,0x13AC,0x16B7,0x1965,0x1BD2,0x1E0D,
	0x2020,0x2213,0x23EA,0x25AB,0x2758,0x28F3,0x2A7F,0x2BFD,
	0x2D6E,0x2ED4,0x3030,0x3182,0x32CB,0x340C,0x3546,0x3678,
	0x37A4,0x38CA,0x39EA,0x3B04,0x3C1A,0x3D2A,0x3E36,0x3F3D,
	0x4040,0x413F,0x423A,0x4332,0x4426,0x4516,0x4604,0x46EE,
	0x47D5,0x48BA,0x499B,0x4A7A,0x4B57,0x4C31,0x4D08,0x4DDE,
	0x4EB1,0x4F81,0x5050,0x511D,0x51E7,0x52B0,0x5377,0x543C,
	0x54FF,0x55C0,0x5680,0x573E,0x57FA,0x58B5,0x596F,0x5A27,
	0x5ADD,0x5B92,0x5C46,0x5CF8,0x5DA9,0x5E59,0x5F07,0x5FB4,
	0x6060,0x610B,0x61B4,0x625D,0x6304,0x63AA,0x6450,0x64F4,
	0x6597,0x6639,0x66DA,0x677A,0x6819,0x68B7,0x6954,0x69F1,
	0x6A8C,0x6B27,0x6BC0,0x6C59,0x6CF1,0x6D88,0x6E1F,0x6EB4,
	0x6F49,0x6FDD,0x7070,0x7103,0x7194,0x7225,0x72B6,0x7345,
	0x73D4,0x7462,0x74F0,0x757D,0x7609,0x7695,0x7720,0x77AA,
	0x7834,0x78BD,0x7945,0x79CD,0x7A54,0x7ADB,0x7B61,0x7BE7,
	0x7C6C,0x7CF0,0x7D74,0x7DF7,0x7E7A,0x7EFC,0x7F7E,0x8000,
};

void M4_Intr()
{

}

void M4_Init()
{

}

void M4AEngine::Interrupt()
{
	M4_Intr();
}

void M4AEngine::Initialise()
{
	M4_Init();
}

M4Channel* M4AEngine::FetchChannel()
{
	int Chan = M4DriverArea.MaxChn, LP = 0x100;
	M4Channel *ChanP = M4DriverArea.Chan, *Chan0 = 0;

	do {
		if(!ChanP->Status) return ChanP;
		if(ChanP->Priority <= LP) Chan0 = ChanP, LP = ChanP->Priority;

		ChanP++;
	} while(--Chan > 0);

	return Chan0;
}

/*****************************/

M4Channel* M4AEngine::M4_SFX(const WaveData *Wave)
{
	M4Channel *Chan = FetchChannel();

	Chan->Status   = M4_NoteOn | M4_FX;
	Chan->LVol     = 127;
	Chan->RVol     = 127;
	Chan->Freq     = Wave->Freq>>10;
	Chan->Attack   = 0;
	Chan->Decay    = 0;
	Chan->Sustain  = 255;
	Chan->Release  = 0;
	Chan->Note     = 60;
	Chan->Velocity = 64;
	Chan->Song     = 0xFF;
	Chan->Track    = 0xFF;
	Chan->Timer    = 0;
	Chan->Priority = 0;
	Chan->Wave     = (WaveData*)Wave;

	return Chan;
}

M4Channel* M4AEngine::M4_FetchChannel(M4Track *Trck, ToneData *Tone) {
	int Chan = M4DriverArea.MaxChn;
	M4Channel *ChanP = M4DriverArea.Chan, *Chan0, *Chan1;

	for(;Chan>0;Chan--,ChanP++) {
		if(!ChanP->Status)
			return ChanP;
	}

	Chan = M4DriverArea.MaxChn;
	ChanP--, Chan0 = 0, Chan1 = 0;
	u32 Prio = Trck->Priority;

	for(;Chan>0;Chan--,ChanP--) {
		if(ChanP->Status & (M4_Release|M4_NoteOff)) {
			return ChanP;
		}

		if(Prio > ChanP->Priority) {
			if(ChanP->Priority < Chan0->Priority)
				Chan0 = ChanP;
			else
				Chan1 = ChanP;
			continue;
		}

		if(ChanP->Tone == Tone) {
			Chan1 = Chan0;
			Chan0 = ChanP;
		}
	}

	return Chan0?Chan0:Chan1;
}

/*****************************/

void M4AEngine::HandleNote(M4Track *Track, M4Player *Play, u32 Time) {
	u32 Note = Track->Note + Track->KeyShift;
	u32	Velo = Track->Velo;
	ToneData *Tone = Play->Song->Bank[Track->Voice].Tone;

Jump0:
	if(Tone->Type & M4_Rhythm) {
		BankData *Bank = (BankData*)Tone->Wave;
		Tone = Bank[Note].Tone;
		goto Jump0;
	}

	if(Tone->Type & M4_Split) {
		BankData *Bank = (BankData*)Tone->Wave;
		Tone = Bank[Tone->Split[Note]].Tone;
		goto Jump0;
	}

	if(*(u32*)&Tone->Attack == 0)
		return;

	u32 CGB;
	if((CGB = Tone->Type & M4_CGB)) {
		M4CGBChan *Chan = &M4CGBArea[--CGB];

		if(CGB == 2) {
			*(u16*)0x04000070 ^= 0x40;
			*(u32*)0x04000090 = ((u32*)(u32)Tone->Wave)[0];
			*(u32*)0x04000094 = ((u32*)(u32)Tone->Wave)[1];
			*(u32*)0x04000098 = ((u32*)(u32)Tone->Wave)[2];
			*(u32*)0x0400009C = ((u32*)(u32)Tone->Wave)[3];
			*(u16*)0x04000070 ^= 0x40;
		}

#if (M4_ChngSG2 || M4_ChngSG3)
		M4CGBChan *Chan2;
		if(Chan->Status && CGB < 2) {
#if M4_ChngSG2
			Chan2 = &M4CGBArea[CGB^1];

			if(!Chan2->Status || (Chan2->Status&M4_Release)) {
				Chan = Chan2;
				CGB ^= 1;
			}
#endif
#if M4_ChngSG3
			else {
				Chan2 = &M4CGBArea[2];

				if(!Chan2->Status) {
					const u32 WaveData[] = {
						0x000000FF,0x00000000,0x000000FF,0x00000000,
						0x0000FFFF,0x00000000,0x0000FFFF,0x00000000,
						0xFFFFFFFF,0x00000000,0xFFFFFFFF,0x00000000,
						0xFFFFFFFF,0x0000FFFF,0xFFFFFFFF,0x0000FFFF,
					};

					CGB  = 2;
					Chan = Chan2;

					*(u16*)0x04000070 ^= 0x40;
					*(u32*)0x04000090 = WaveData[((u32)(Tone->Wave)*4)+0];
					*(u32*)0x04000094 = WaveData[((u32)(Tone->Wave)*4)+1];
					*(u32*)0x04000098 = WaveData[((u32)(Tone->Wave)*4)+2];
					*(u32*)0x0400009C = WaveData[((u32)(Tone->Wave)*4)+3];
					*(u16*)0x04000070 ^= 0x40;
				}
			}
#endif
		}
#endif
		Chan->Status   = M4_NoteOn;
		Chan->Length   = Tone->Time;
		Chan->Shift    = Track->KeyShift;
		Chan->Timer    = Time;
		Chan->Sweep    = Tone->P_Sw;
		Chan->Track    = Track->Self;
		Chan->Play0    = Play->Self;
		Chan->Attack   = Tone->Attack;
		Chan->Decay    = Tone->Decay;
		Chan->Sustain  = Tone->Sustain;
		Chan->Release  = Tone->Release;
		Chan->Note     = Track->Note;
		Chan->Velocity = Velo;
		Chan->Duty     = (u32)Tone->Wave;
		Chan->Tone     = Tone;

		return;
	}

	M4Channel *Chan = M4_FetchChannel(Track, Tone);

	if(Chan) {
		Chan->Status   = M4_NoteOn;
		Chan->Attack   = Tone->Attack;
		Chan->Decay    = 256-Tone->Decay;
		Chan->Sustain  = Tone->Sustain;
		Chan->Release  = 256-Tone->Release;
		Chan->Note     = Track->Note;
		Chan->Velocity = Velo;
		Chan->Song     = Play->Self;
		Chan->Track    = Track->Self;
		Chan->Timer    = Time;
		Chan->Priority = Track->Self+Track->Priority + Play->Song->Priority;
		Chan->ModCnt   = 0;
		Chan->LFODelay = Track->LFODelay;
		Chan->LFOSpeed = Track->LFOSpeed;
		Chan->ModType  = Track->ModType;
		Chan->Wave     = Tone->Wave;
		Chan->Tone     = Tone;
		Chan->Shift    = Track->KeyShift;
	}
}

/*****************************/

inline void UpdateNote(M4Track *Track) {
	u32 Note = *Track->Data;

	if(Note < 0x80) {
		Track->Note = Note;
		Track->Data++;
	}
}

/*****************************/

inline void UpdateVelo(M4Track *Track) {
	u32 Velo = *Track->Data;

	if(Velo < 0x80) {
		Track->Velo = Velo;
		Track->Data++;
	}
}

/*****************************/

inline u32 FetchByte(M4Track *Track) {
	return *Track->Data++;
}

/*****************************/

void M4AEngine::M4_Fine(M4Track *Track, M4Player *Play) {
	/* Software */ {
		int ChanLeft = M4_MaxChn;
		M4Channel *Chan = M4DriverArea.Chan;

		do {
			if(Chan->Status & M4_Active) {
				if(Chan->Song == Play->Self && Chan->Track == Track->Self) {
					Chan->Status |= M4_NoteOff;
				}
			}

			Chan++;
		} while(--ChanLeft > 0);
	}

	/* Hardware */ {
		int ChanLeft = 4;
		M4CGBChan *Chan = M4CGBArea;

		do {
			if(Chan->Status & M4_Active) {
				if(Chan->Play0 == Play->Self && Chan->Track == Track->Self) {
					Chan->Status = 0;
				}
			}

			Chan++;
		} while(--ChanLeft > 0);
	}

	Track->Status = 0;

	if(--Play->ActTracks == 0)
		Play->Status = 0;
}

/*****************************/

void M4AEngine::M4_Goto(M4Track *Track) {
	u32 Adr  = *Track->Data++;
		Adr |= *Track->Data++ << 8;
		Adr |= *Track->Data++ << 16;
		Adr |= *Track->Data++ << 24;

	Track->Data = (u8*)Adr;
}

/*****************************/

void M4AEngine::M4_Patt(M4Track *Track) {
	u32 Adr  = *Track->Data++;
		Adr |= *Track->Data++ << 8;
		Adr |= *Track->Data++ << 16;
		Adr |= *Track->Data++ << 24;

	Track->Link[Track->Index++] = Track->Data;
	Track->Data = (u8*)Adr;
}

/*****************************/

void M4AEngine::M4_Pend(M4Track *Track) {
	if(Track->Index)
		Track->Data = Track->Link[--Track->Index];
}

/*****************************/

void M4AEngine::M4_Rept(M4Track *Track) {
	u32 Cnt  = *Track->Data++;
	u32 Adr  = *Track->Data++;
		Adr |= *Track->Data++ << 8;
		Adr |= *Track->Data++ << 16;
		Adr |= *Track->Data++ << 24;

	if(Track->Repeat) {
		if(--Track->Repeat == 0)
			return;
	}

	Track->Data = (u8*)Adr;
	Track->Repeat = Cnt;
}

/*****************************/

void M4AEngine::M4_MemAcc(M4Track *Track) {
	Track->Data += 3;
}

/*****************************/

void M4AEngine::M4_Prio(M4Track *Track) {
	Track->Priority = FetchByte(Track);
}

/*****************************/

void M4AEngine::M4_Tempo(M4Track *Track, M4Player *Play) {
	Play->Tempo = FetchByte(Track) * 2;
}

/*****************************/

void M4AEngine::M4_KeyShift(M4Track *Track) {
	Track->KeyShift = FetchByte(Track);
}

/*****************************/

void M4AEngine::M4_Voice(M4Track *Track) {
	Track->Voice = FetchByte(Track);
}

/*****************************/

void M4AEngine::M4_Volume(M4Track *Track) {
	Track->Volume = FetchByte(Track);
}

/*****************************/

void M4AEngine::M4_Pan(M4Track *Track) {
	Track->Pan = FetchByte(Track);
}

/*****************************/

void M4AEngine::M4_Bend(M4Track *Track) {
	Track->Bend = FetchByte(Track) - 0x40;
}

/*****************************/

void M4AEngine::M4_Range(M4Track *Track) {
	Track->BendRange = FetchByte(Track);
}

/*****************************/

void M4AEngine::M4_LFOSpeed(M4Track *Track) {
	Track->LFOSpeed = FetchByte(Track);
}

/*****************************/

void M4AEngine::M4_LFODelay(M4Track *Track) {
	Track->LFODelay = FetchByte(Track);
}

/*****************************/

void M4AEngine::M4_ModDepth(M4Track *Track) {
	Track->ModDepth = FetchByte(Track);
}

/*****************************/

void M4AEngine::M4_ModType(M4Track *Track) {
	Track->ModType = FetchByte(Track);
}

/*****************************/

void M4AEngine::M4_FineTune(M4Track *Track) {
	Track->MicroTune = FetchByte(Track) - 0x40;
}

/*****************************/

void M4AEngine::M4_XCmd(M4Track *Track) {
	Track->Data += 2;
}

/*****************************/

void M4AEngine::M4_Eot(M4Track *Track, M4Player *Play) {
	UpdateNote(Track);

	/* Software */ {
		int ChanLeft = M4_MaxChn;
		M4Channel *Chan = M4DriverArea.Chan;

		do {
			if(Chan->Status) {
				if(Chan->Song == Play->Self && Chan->Track == Track->Self) {
					if(Chan->Note == Track->Note)
						Chan->Status |= M4_NoteOff;
				}
			}

			Chan++;
		} while(--ChanLeft > 0);
	}

	/* Hardware */ {
		int ChanLeft = 4;
		M4CGBChan *Chan = M4CGBArea;

		do {
			if(Chan->Status & M4_Active) {
				if(Chan->Play0 == Play->Self && Chan->Track == Track->Self) {
					if(Chan->Note == Track->Note)
						Chan->Status |= M4_NoteOff;
				}
			}

			Chan++;
		} while(--ChanLeft > 0);
	}
}

/*****************************/

void M4AEngine::M4_Tie(M4Track *Track, M4Player *Play) {
	UpdateNote(Track);
	UpdateVelo(Track);
	HandleNote(Track, Play, 0);
}

const u8 M4_Clock[] = {
	0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,
	0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F,
	0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,
	0x18,0x1C,0x1E,0x20,0x24,0x28,0x2A,0x2C,
	0x30,0x34,0x36,0x38,0x3C,0x40,0x42,0x44,
	0x48,0x4C,0x4E,0x50,0x54,0x58,0x5A,0x5C,
	0x60,0x00,0x00,0x00
};

/*****************************/

void M4AEngine::M4_TrackUpdate(M4Track *Track, M4Player *Play)
{
	if(Track->Timer) {
		if(--Track->Timer)
			return;
	}

	u32 Con;

	while(Track->Status & M4_Active) {
		Con = *Track->Data;
		if(Con < 0x80)
			Con = Track->MML;
		else {
			Track->Data++;

			if(Con > 0xBC)
				Track->MML = Con;
		}

		if(Con <= 0xB0) {
			Track->Timer = M4_Clock[Con-0x80];
			break;
		}

		if(Con <= 0xCF) {
			switch (Con - 0xB1)
			{
				case 0:
					M4_Fine(Track, Play);
					break;
				case 1:
					M4_Goto(Track);
					break;
				case 2:
					M4_Patt(Track);
					break;
				case 3:
					M4_Pend(Track);
					break;
				case 4:
					M4_Rept(Track);
					break;
				case 8:
					M4_MemAcc(Track);
					break;
				case 9:
					M4_Prio(Track);
					break;
				case 10:
					M4_Tempo(Track, Play);
					break;
				case 11:
					M4_KeyShift(Track);
					break;
				case 12:
					M4_Voice(Track);
					break;
				case 13:
					M4_Volume(Track);
					break;
				case 14:
					M4_Pan(Track);
					break;
				case 15:
					M4_Bend(Track);
					break;
				case 16:
					M4_Range(Track);
					break;
				case 17:
					M4_LFOSpeed(Track);
					break;
				case 18:
					M4_LFODelay(Track);
					break;
				case 19:
					M4_ModDepth(Track);
					break;
				case 20:
					M4_ModType(Track);
					break;
				case 23:
					M4_FineTune(Track);
					break;
				case 28:
					M4_XCmd(Track);
					break;
				case 29:
					M4_Eot(Track, Play);
					break;
				case 30:
					M4_Tie(Track, Play);
					break;
				default:
					M4_Fine(Track, Play);
					break;
			}
			continue;
		}

		UpdateNote(Track);
		UpdateVelo(Track);
		HandleNote(Track,Play,M4_Clock[Con-0xCF]);
	}
}

void M4AEngine::FadeSong()
{
	if (fadeStruct.isActive)
	{
		u32 Player = fadeStruct.playerID;
		if (fadeStruct.direction == Fade_Out)
		{
			if (M4Players[Player].Volume == 0)
			{
				SoundEngine::SetStatus(1);
			}
			else if (M4Players[Player].Volume < FADESPEED)
			{
				M4Players[Player].Volume = 0;
				SoundEngine::SetStatus(1);
			}
			else
			{
				M4Players[Player].Volume -= FADESPEED;
			}
		}
		else
		{
			if (M4Players[Player].Volume == M4_MAXVOL)
			{
				SoundEngine::SetStatus(2);
			}
			else if (M4Players[Player].Volume + FADESPEED > M4_MAXVOL)
			{
				M4Players[Player].Volume = M4_MAXVOL;
				SoundEngine::SetStatus(2);
			}
			else
			{
				M4Players[Player].Volume += FADESPEED;
			}
		}
	}
}

void M4AEngine::FadeSongOut()
{
	if (!fadeStruct.isActive)
	{
		fadeStruct.isActive = 1;
		fadeStruct.playerID = 0;
		fadeStruct.direction = Fade_Out;
	}
}

void M4AEngine::FadeSongIn()
{
	if (!fadeStruct.isActive)
	{
		fadeStruct.isActive = 1;
		fadeStruct.playerID = 0;
		fadeStruct.direction = Fade_In;
	}
}

inline u32 CGB_Rate(u32 Key, u32 Tune) {
	const u16 CGBFreq[] = {
		8013*2, 7566*2, 7144*2, 6742*2,
		6362*2, 6005*2, 5666*2, 5346*2,
		5048*2, 4766*2, 4499*2, 4246*2,
		8013*1, 7566*1, 7144*1, 6742*1,
	};

	u32 Note = Key;
	u32 Octv = Note * 0xAAAAB >> 23;
		Note = Note - (Octv*12);

	u32 y0   = CGBFreq[Note];
	u32 y1   = CGBFreq[Note+1];
	s32 Diff = y1 - y0;
		Diff = Tune * Diff;

	return (2048-((y0+(Diff>>8))>>Octv));
}

/*****************************/

inline u32 CalcFreq(WaveData *Wave, u32 Key, u32 Tune) {
	u32 Fr;
	asm volatile(
		"mov	r0, %1\n\t"
		"mov	r1, %2\n\t"
		"mov	r2, %3\n\t"
		"swi	31\n\t"
		"mov	%0, r0\n\t"
	: "=r" (Fr) : "r" (Wave), "r" (Key), "r" (Tune) : "r0", "r1", "r2", "r3");
	return Fr;
}

void M4AEngine::MidiUpdate(M4Player *Play)
{
	/* Stop Software Channels */ {
		int ChanLeft = M4DriverArea.MaxChn;
		M4Channel *Chan = M4DriverArea.Chan;

		do {
			if(Chan->Status & M4_Active) {
				if(Chan->Song == Play->Self) {
					if(Chan->Timer) {
						if(--Chan->Timer == 0) {
							if(Chan->Release)
								Chan->Status |= M4_NoteOff;
							else
								Chan->Status = 0;
						}
					}
				}
			}

			Chan++;
		} while(--ChanLeft > 0);
	}

	/* Stop Hardware Channels */ {
		int ChanLeft = 4;
		M4CGBChan *Chan = M4CGBArea;

		do {
			if(Chan->Status & M4_Active) {
				if(Chan->Play0 == Play->Self) {
					if(Chan->Timer) {
						if(--Chan->Timer == 0) {
							if(Chan->Release)
								Chan->Status |= M4_NoteOff;
							else
								Chan->Status = 0;
						}
					}
				}
			}

			Chan++;
		} while(--ChanLeft > 0);
	}

	u32 Tracks = Play->Song->Tracks;
	M4Track *Track = Play->Track;

	do {
		M4_TrackUpdate(Track, Play);
		Track++;
	} while(--Tracks > 0);

	Play->Clock += (1<<24)/(228*308*4*2/5);
}

/*****************************/

void M4AEngine::M4_Update(M4Player *Play)
{
	if(M4DriverArea.Rev < Play->Song->Reverb)
		M4DriverArea.Rev = Play->Song->Reverb;

	Play->Clock -= Play->Tempo * Play->Speed >> 8;

	while(Play->Clock < 0)
		MidiUpdate(Play);
}

/*****************************/
u16* locations[] = { (u16*)0x04000062, (u16*)0x04000068, (u16*)0x04000070, (u16*)0x04000078 };

void M4AEngine::M4_Player(void)
{
	M4Player *Player = M4Players;

	if(Player->Status & M4_Active)
		M4_Update(Player);
	Player++;

	if(Player->Status & M4_Active)
		M4_Update(Player);
	Player++;

	if(Player->Status & M4_Active)
		M4_Update(Player);
	Player++;

	if(Player->Status & M4_Active)
		M4_Update(Player);
	Player++;

	/* Software Channels */ {
		int Left = M4_MaxChn;
		M4Track   *Trck;
		M4Player  *Play;
		M4Channel *Chan = M4DriverArea.Chan;

		for(;Left;Left--,Chan++) {
			if(Chan->Status & M4_FX) continue;
			if(Chan->Status & (M4_Active|M4_NoteOn)) {
				Play = &M4Players[Chan->Song];
				Trck = &Play->Track[Chan->Track];

				u32 Note = Chan->Note + Chan->Shift;
				u32 Velo = Chan->Velocity;
				s32 Tune = 0;

				ToneData *Tone = Chan->Tone;

				if(Tone->Type & M4_Fixed) {
					Note = 60;
				} else {
					Tune  = Trck->Bend*Trck->BendRange;
					Tune += Trck->MicroTune;
					Tune *= 4;
					Tune += Note<<8;

					Note  = (Tune>>8) & 255;
					Tune &= 0xFF;
				}

				u32 Out = (Trck->Volume*Play->Volume>>7)*Velo>>7;
				u32 Sqrt0 = Sqrt[127-Trck->Pan];
				u32 Sqrt1 = Sqrt[000+Trck->Pan];

				Chan->LVol = Out * Sqrt0 >> 15;
				Chan->RVol = Out * Sqrt1 >> 15;
				Chan->Freq = CalcFreq(Tone->Wave, Note, Tune);
			}
		}
	}

	/* Hardware Channels */ {
		int SGx   = 0;
		u32 Pano  = 0;
		M4Track   *Trck;
		M4Player  *Play;
		M4CGBChan *Chan = M4CGBArea;

		u8* eightBitAddress = (u8*)0x02000500;

		for(;SGx<4;Chan++,SGx++)
		{
			if(Chan->Status & M4_NoteOn)
			{
				Chan->LVol  = 0xFF;
				Chan->LFreq = 0xFFFF;

				if(Chan->Attack)
				{
					Chan->Scaler = 0;
					Chan->Status = M4_Attack | M4_Active;
				}
				else if(Chan->Decay)
				{
					Chan->Scaler = 15;
					Chan->Status = M4_Decay | M4_Active;
				}
				else
				{
					Chan->Scaler = Chan->Sustain;
					Chan->Status = M4_Sustain | M4_Active;
				}
				continue;
			}

			if(Chan->Status & M4_NoteOff) {
				if(!Chan->Release) {
					Chan->Status = 0;
					continue;
				}

				Chan->Status &= M4_Active;
				Chan->Status |= M4_Release;
			}

			if(Chan->Status & M4_Attack) {
				Chan->Scaler += Chan->Attack;

				if(Chan->Scaler > 15) {
					if(Chan->Decay) {
						Chan->Status &= M4_Active;
						Chan->Status |= M4_Decay;
					} else {
						Chan->Status &= M4_Active;
						Chan->Status |= M4_Sustain;
					}
				}
			}

			if(Chan->Status & M4_Decay) {
				Chan->Scaler -= Chan->Decay;

				if(Chan->Scaler <= 0) {
					Chan->Status = 0;
					continue;
				}

				if(Chan->Scaler <= Chan->Sustain) {
					Chan->Status &= M4_Active;
					Chan->Status |= M4_Sustain;
				}
			}

			if(Chan->Status & M4_Sustain) {
				Chan->Scaler = Chan->Sustain;
			}

			if(Chan->Status & M4_Release) {
				Chan->Scaler -= Chan->Release;

				if(Chan->Scaler <= 0) {
					Chan->Status = 0;
					continue;
				}
			}

			u16* sixteenBitAddress = (u16*)0x02000050;

			if(Chan->Status & M4_Active) {
				Play = &M4Players[Chan->Play0];
				Trck = &Play->Track[Chan->Track];

				u32 Note = Chan->Note + Chan->Shift;
				u32 Velo = Chan->Velocity;
				s32 Tune = 0;

				Tune  = Trck->Bend*Trck->BendRange;
				Tune += Trck->MicroTune;
				Tune *= 4;
				Tune += Note<<8;

				Note  = (Tune>>8) & 255;
				Tune &= 255;

				u32	RPan = Trck->Pan;
				u32 Freq = CGB_Rate(Note, Tune);
				u32 Volu = Trck->Volume * Play->Volume;
					Volu = Volu*Velo*Chan->Scaler >> 21;

				if(SGx == 0) {
					if(RPan <= 0x40)
						Pano += 0x10;
					if(RPan >= 0x40)
						Pano += 0x01;

					if(Chan->LVol != Volu) {
						Chan->LVol = Volu;
						eightBitAddress[2] = Chan->Duty<<6;
						//eightBitAddress[3] = Volu<<4 | Chan->Decay;
						eightBitAddress[5] = (Freq>>8) + 0x80;
					}

					if(Chan->LFreq != Freq) {
						Chan->LFreq = Freq;
						eightBitAddress[2] = Chan->Duty<<6;
						eightBitAddress[3] = Volu<<4 | Chan->Decay;
						sixteenBitAddress[2] = 0x8000 + Freq;
					}

					continue;
				}

				if(SGx == 1) {
					if(RPan <= 0x40)
						Pano += 0x20;
					if(RPan >= 0x40)
						Pano += 0x02;

					if(Chan->LVol != Volu) {
						Chan->LVol = Volu;
						eightBitAddress[8] = Chan->Duty<<6;
						//eightBitAddress[9] = Volu<<4 | Chan->Decay;
						eightBitAddress[0xD] = (Freq>>8) + 0x80;
					}

					if(Chan->LFreq != Freq) {
						Chan->LFreq = Freq;
						eightBitAddress[8] = Chan->Duty<<6;
						eightBitAddress[9] = Volu<<4;
						sixteenBitAddress[6] = 0x8000 + Freq;
					}

					continue;
				}

				if(SGx == 2) {
					if(RPan <= 0x40)
						Pano += 0x40;
					if(RPan >= 0x40)
						Pano += 0x04;

					const u16 CG3Vol[] = {
						0x00,0x60,0x60,0x40,
						0x40,0x80,0x80,0x20
					};

					Volu = CG3Vol[Volu>>1];

					if(Chan->LVol != Volu) {
						Chan->LVol = Volu;
						sixteenBitAddress[8] = 0x80;
						eightBitAddress[0x13] = Volu;
						eightBitAddress[0x15] = (Freq>>8) + 0x80;
					}

					if(Chan->LFreq != Freq) {
						Chan->LFreq = Freq;
						sixteenBitAddress[8] = 0x80;
						sixteenBitAddress[10] = 0x8000 + Freq;
					}
				}
			} else {
				u16* location = locations[SGx];
				location[0] = 0;
			}
		}

		eightBitAddress[0x20] = 0xFF;
		eightBitAddress[0x21] = Pano;
	}
}

/*****************************/

void M4AEngine::M4_StopSong(u32 Player)
{
	M4DriverArea.Rev = 0;
	M4Player *Play = &M4Players[Player];

	/* Software */ {
		int ChanLeft = M4_MaxChn;
		M4Channel *Chan = M4DriverArea.Chan;

		do {
			if(Chan->Status & M4_Active) {
				if(Chan->Song == Play->Self) {
					Chan->Status |= M4_NoteOff;
				}
			}

			Chan++;
		} while(--ChanLeft > 0);
	}

	/* Hardware */ {
		int ChanLeft = 4;
		M4CGBChan *Chan = M4CGBArea;

		do {
			if(Chan->Status & M4_Active) {
				if(Chan->Play0 == Play->Self) {
					Chan->Status |= M4_NoteOff;
				}
			}

			Chan++;
		} while(--ChanLeft > 0);
	}

	Play->Status = 0;
}

/*****************************/

void M4AEngine::M4_PlaySong(u32 Player, const SongData *Song)
{
	M4_StopSong(Player);

	M4Player *Play = &M4Players[Player];
	M4Track *Track = Play->Track;

	int i;

	for(i=0;i<Song->Tracks;i++,Track++) {
		Track->Status    = M4_Active;
		Track->Self      = i;
		Track->Index     = 0;
		Track->Note      = 0;
		Track->Velo      = 0;
		Track->Timer     = 0;
		Track->MML       = 0;
		Track->Repeat    = 0;
		Track->Priority  = 0;
		Track->KeyShift  = 0;
		Track->Voice     = 0;
		Track->Volume    = 100;
		Track->Pan       = 0x40;
		Track->Bend      = 0;
		Track->BendRange = 2;
		Track->LFOSpeed  = 0;
		Track->LFODelay  = 0;
		Track->ModDepth  = 0;
		Track->ModType   = 0;
		Track->MicroTune = 0;
		Track->LastByte  = 0;
		Track->Data      = Song->Part[i];
	}

	for(;i<16;i++,Track++)
		Track->Status = 0;

	Play->Status    = M4_Active;
	Play->Tempo     = 120;
	Play->Clock     = 0;
	Play->Volume    = 127;
	Play->Self      = Player;
	Play->ActTracks = Song->Tracks;
	Play->Speed     = 0x0100;
	Play->Song      = (SongData*)Song;
}

/*****************************/

void M4AEngine::M4_PlayByName(SongData *Song) {
	STT *SongP = song_table;

	while(SongP->Song != Song) SongP++;

	M4_PlaySong(SongP->Player, SongP->Song);
}

/*****************************/

void M4AEngine::M4_PlayByIdx(u32 Idx) {
	STT *SongP = &song_table[Idx];

	M4_PlaySong(SongP->Player, SongP->Song);
}

/*****************************/

void M4AEngine::M4_StopByName(SongData *Song) {
	M4Player *Player = M4Players, *End = &M4Players[M4_MaxPly];

	while((Player->Song != Song) && (Player < End)) Player++;

	M4_StopSong(Player->Self);
}

/*****************************/

void M4AEngine::M4_PlayerStopAll(void) {
	int i = M4_MaxPly-1;
	do {
		M4_StopSong(i);
	} while(--i >= 0);
}

void M4_Mixer()
{

}

void M4AEngine::M4_Main()
{
	if (M4DriverArea.Status == M4_Status)
	{
		M4DriverArea.Status &= ~(0xFF);
		memset32((void*)&M4MixArea, 0, M4_BuffLen >> 2);
		M4_Player();
		M4_Mixer();
		M4DriverArea.MaxChn = 0;
		M4DriverArea.Status |= (M4_Status & 0xFF);
	}
}

void M4AEngine::Update()
{
	switch (SoundEngine::GetStatus())
	{
		case 1:
		{
			u16 temp = SoundEngine::GetSongID();
			if (temp > 0)
			{
				M4_PlayByIdx(temp - 1);
				SoundEngine::SetStatus(2);
			}
			M4_Main();
			break;
		}
		case 2:
			M4_Main();
			break;
		case 3:
			FadeSongOut();
			M4_Main();
			if (SoundEngine::GetStatus() == 1)
			{
				M4_StopSong(0);
				SoundEngine::SetStatus(0);
				M4Players[0].Volume = M4_MAXVOL;
			}
			break;
		case 4:
		{
			u16 temp = SoundEngine::GetSongID();
			if (temp > 0)
			{
				M4_PlayByIdx(temp - 1);
				SoundEngine::SetStatus(7);
				M4Players[0].Volume = 0;
			}
			FadeSongIn();
			M4_Main();
			break;
		}
		case 5:
			FadeSongOut();
			M4_Main();
			if (SoundEngine::GetStatus() == 1)
			{
				u16 temp = SoundEngine::GetSongID();
				if (temp > 0)
				{
					M4_PlayByIdx(temp - 1);
					SoundEngine::SetStatus(2);
				}
			}
			break;
		case 6:
			SoundEngine::SetStatus(0);
			break;
		case 7:
			FadeSongIn();
			M4_Main();
		default:
			break;
	}
	SoundEngine::Update();
}
