/*****************************/
/*    Engine M4 2009, Aik    */
/*****************************/

#include "Functions/MusicEngine/EngineM4.h"
#include "Data/MemoryLocations.h"
#include "Data/M4SongTable.h"

/******************************/

static inline u32 CGB_Rate(u32 Key, u32 Tune) {
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

static inline u32 CalcFreq(WaveData *Wave, u32 Key, u32 Tune) {
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

/*****************************/

void M4_TrackUpdate(M4Track *Track, M4Player *Play);

/*****************************/

static inline void M4_MidiUpdate(M4Player *Play) {
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

static void M4_Update(M4Player *Play) {
	if(M4DriverArea.Rev < Play->Song->Reverb)
		M4DriverArea.Rev = Play->Song->Reverb;

	Play->Clock -= Play->Tempo * Play->Speed >> 8;

	while(Play->Clock < 0)
		M4_MidiUpdate(Play);
}

/*****************************/

void M4_Player(void) {
	static const u16 Sqrt[] = {
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
						*(u8*)0x04000062 = Chan->Duty<<6;
						*(u8*)0x04000063 = Volu<<4 | Chan->Decay;
						*(u8*)0x04000065 = (Freq>>8) + 0x80;
					}

					if(Chan->LFreq != Freq) {
						Chan->LFreq = Freq;
						*( u8*)0x04000062 = Chan->Duty<<6;
						*(u16*)0x04000064 = 0x8000 + Freq;
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
						*(u8*)0x04000068 = Chan->Duty<<6;
						*(u8*)0x04000069 = Volu<<4 | Chan->Decay;
						*(u8*)0x0400006D = (Freq>>8) + 0x80;
					}

					if(Chan->LFreq != Freq) {
						Chan->LFreq = Freq;
						*( u8*)0x04000068 = Chan->Duty<<6;
						*(u16*)0x0400006C = 0x8000 + Freq;
					}

					continue;
				}

				if(SGx == 2) {
					if(RPan <= 0x40)
						Pano += 0x40;
					if(RPan >= 0x40)
						Pano += 0x04;

					static const u16 CG3Vol[] = {
						0x00,0x60,0x60,0x40,
						0x40,0x80,0x80,0x20,
					};

					Volu = CG3Vol[Volu>>1];

					if(Chan->LVol != Volu) {
						Chan->LVol = Volu;
						*(u16*)0x04000070 = 0x80;
						*( u8*)0x04000073 = Volu;
						*( u8*)0x04000075 = (Freq>>8) + 0x80;
					}

					if(Chan->LFreq != Freq) {
						Chan->LFreq = Freq;
						*(u16*)0x04000070 = 0x80;
						*(u16*)0x04000074 = 0x8000 + Freq;
					}
				}
			} else {
				const u16* locations[] = { (u16*)0x04000062, (u16*)0x04000068, (u16*)0x04000070, (u16*)0x04000078 };
				u16* location = locations[SGx];
				location[0] = 0;
			}
		}

		*(u8*)0x04000081 = Pano;
	}
}

/*****************************/

void M4_StopSong(u32 Player) {
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

void M4_PlaySong(u32 Player, const SongData *Song) {
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

void M4_PlayByName(SongData *Song) {
	STT *SongP = song_table;

	while(SongP->Song != Song) SongP++;

	M4_PlaySong(SongP->Player, SongP->Song);
}

/*****************************/

void M4_PlayByIdx(u32 Idx) {
	STT *SongP = &song_table[Idx];

	M4_PlaySong(SongP->Player, SongP->Song);
}

/*****************************/

void M4_StopByName(SongData *Song) {
	M4Player *Player = M4Players, *End = &M4Players[M4_MaxPly];

	while((Player->Song != Song) && (Player < End)) Player++;

	M4_StopSong(Player->Self);
}

/*****************************/

void M4_PlayerStopAll(void) {
	int i = M4_MaxPly-1;
	do {
		M4_StopSong(i);
	} while(--i >= 0);
}

void M4_MainEngine()
{
	switch (currentSongPlaybackStatus)
	{
		case 1:
		{
			u16 temp = currentSongID;
			if (temp > 0)
			{
				M4_PlayByIdx(temp - 1);
				currentSongPlaybackStatus = 2;
			}
			M4_Main();
			break;
		}
		case 2:
			M4_Main();
			break;
		case 3:
			break;
		case 4:
			break;
		case 5:
			M4_Main();
			if (currentSongPlaybackStatus == 1)
			{
				u16 temp = currentSongID;
				if (temp > 0)
				{
					M4_PlayByIdx(temp - 1);
					currentSongPlaybackStatus = 2;
				}
			}
			break;
		case 6:
			currentSongPlaybackStatus = 0;
			break;
		default:
			break;
	}
}

/*****************************/
