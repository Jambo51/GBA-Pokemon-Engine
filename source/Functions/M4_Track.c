/*****************************/
/*    Engine M4 2009, Aik    */
/*****************************/

#include "Functions/MusicEngine/EngineM4.h"

/*****************************/

static inline M4Channel *M4_FetchChannel(M4Track *Trck, ToneData *Tone) {
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

static inline void HandleNote(M4Track *Track, M4Player *Play, u32 Time) {
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

static inline void UpdateNote(M4Track *Track) {
	u32 Note = *Track->Data;

	if(Note < 0x80) {
		Track->Note = Note;
		Track->Data++;
	}
}

/*****************************/

static inline void UpdateVelo(M4Track *Track) {
	u32 Velo = *Track->Data;

	if(Velo < 0x80) {
		Track->Velo = Velo;
		Track->Data++;
	}
}

/*****************************/

static inline u32 FetchByte(M4Track *Track) {
	return *Track->Data++;
}

/*****************************/

static void M4_Fine(M4Track *Track, M4Player *Play) {
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

static void M4_Goto(M4Track *Track) {
	u32 Adr  = *Track->Data++;
		Adr |= *Track->Data++ << 8;
		Adr |= *Track->Data++ << 16;
		Adr |= *Track->Data++ << 24;

	Track->Data = (u8*)Adr;
}

/*****************************/

static void M4_Patt(M4Track *Track) {
	u32 Adr  = *Track->Data++;
		Adr |= *Track->Data++ << 8;
		Adr |= *Track->Data++ << 16;
		Adr |= *Track->Data++ << 24;

	Track->Link[Track->Index++] = Track->Data;
	Track->Data = (u8*)Adr;
}

/*****************************/

static void M4_Pend(M4Track *Track) {
	if(Track->Index)
		Track->Data = Track->Link[--Track->Index];
}

/*****************************/

static void M4_Rept(M4Track *Track) {
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

static void M4_MemAcc(M4Track *Track) {
	Track->Data += 3;
}

/*****************************/

static void M4_Prio(M4Track *Track) {
	Track->Priority = FetchByte(Track);
}

/*****************************/

static void M4_Tempo(M4Track *Track, M4Player *Play) {
	Play->Tempo = FetchByte(Track) * 2;
}

/*****************************/

static void M4_KeyShift(M4Track *Track) {
	Track->KeyShift = FetchByte(Track);
}

/*****************************/

static void M4_Voice(M4Track *Track) {
	Track->Voice = FetchByte(Track);
}

/*****************************/

static void M4_Volume(M4Track *Track) {
	Track->Volume = FetchByte(Track);
}

/*****************************/

static void M4_Pan(M4Track *Track) {
	Track->Pan = FetchByte(Track);
}

/*****************************/

static void M4_Bend(M4Track *Track) {
	Track->Bend = FetchByte(Track) - 0x40;
}

/*****************************/

static void M4_Range(M4Track *Track) {
	Track->BendRange = FetchByte(Track);
}

/*****************************/

static void M4_LFOSpeed(M4Track *Track) {
	Track->LFOSpeed = FetchByte(Track);
}

/*****************************/

static void M4_LFODelay(M4Track *Track) {
	Track->LFODelay = FetchByte(Track);
}

/*****************************/

static void M4_ModDepth(M4Track *Track) {
	Track->ModDepth = FetchByte(Track);
}

/*****************************/

static void M4_ModType(M4Track *Track) {
	Track->ModType = FetchByte(Track);
}

/*****************************/

static void M4_FineTune(M4Track *Track) {
	Track->MicroTune = FetchByte(Track) - 0x40;
}

/*****************************/

static void M4_XCmd(M4Track *Track) {
	Track->Data += 2;
}

/*****************************/

static void M4_Eot(M4Track *Track, M4Player *Play) {
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

static void M4_Tie(M4Track *Track, M4Player *Play) {
	UpdateNote(Track);
	UpdateVelo(Track);
	HandleNote(Track, Play, 0);
}

/*****************************/

static void *const FunctionTable[] = {
	M4_Fine,
	M4_Goto,
	M4_Patt,
	M4_Pend,
	M4_Rept,
	M4_Fine,
	M4_Fine,
	M4_Fine,
	M4_MemAcc,
	M4_Prio,
	M4_Tempo,
	M4_KeyShift,
	M4_Voice,
	M4_Volume,
	M4_Pan,
	M4_Bend,
	M4_Range,
	M4_LFOSpeed,
	M4_LFODelay,
	M4_ModDepth,
	M4_ModType,
	M4_Fine,
	M4_Fine,
	M4_FineTune,
	M4_Fine,
	M4_Fine,
	M4_Fine,
	M4_Fine,
	M4_XCmd,
	M4_Eot,
	M4_Tie,
};

/*****************************/

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

void M4_TrackUpdate(M4Track *Track, M4Player *Play) {
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
			void (*Func)(M4Track*,M4Player*);
			Func = FunctionTable[Con-0xB1];
			Func(Track, Play);
			continue;
		}

		UpdateNote(Track);
		UpdateVelo(Track);
		HandleNote(Track,Play,M4_Clock[Con-0xCF]);
	}
}

/*****************************/
