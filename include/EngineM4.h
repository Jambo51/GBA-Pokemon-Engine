/*****************************/
/*    Engine M4 2009, Aik    */
/*****************************/

#ifndef __ENGINEM4__
#define __ENGINEM4__

/*****************************/

#define M4_Status	0x6E6D6B50
#define M4_Version	0x130
#define M4_DMACount	2

#define M4_UseHQ	1
#define M4_UseDMA2	1
#define M4_UseTONC	1
#define M4_ChngSG2	0
#define M4_ChngSG3	0
#define M4_MaxPly	4
#define M4_MaxChn	16
#define M4_Freq		18157
#define M4_BuffLen	(((4389*M4_Freq>>18)+3)&~3)

#define M4_Active	1
#define M4_Attack	2
#define M4_Decay	4
#define M4_Sustain	8
#define M4_Release	16
#define M4_NoteOn	32
#define M4_NoteOff	64
#define M4_FX		128

#define M4_CGB		0x07
#define M4_Fixed	0x08
#define M4_Split	0x40
#define M4_Rhythm	0x80

/*****************************/
#ifndef __ASSEMBLER__
/*****************************/

#if M4_UseTONC
#include	"../include/tonc.h"
#define		InBSS	__attribute__((section(".bss")))
#define		InSBSS	__attribute__((section(".sbss")))
#else
#include	<Agb.h>
#endif

/*****************************/

#ifdef __cplusplus
	extern "C" {
#endif

/*****************************/

/*         Data Type         */

typedef struct {
	u8 IsActive:1;
	u8 Activate:1;
	u8 IsActive2:1;
	u8 IsActive3:1;
	u8 IsActive4:1;
	u8 IsActive5:1;
	u8 IsActive6:1;
	u8 IsActive7:1;
} M4CGBChannelStatusBitField;


typedef struct {
	u16	Type;				//Always 0
	u16	Stat;				//Loop Mode
	u32	Freq;				//Frequency Q10
	u32	Loop;				//Loop Start
	u32	Size;				//Loop End/Length
	s8	Data[1];			//PCM Data
} WaveData;

typedef struct __ToneData {
	u8	Type;				//Type
	u8	Root;				//Root Key
	u8	Time;				//Length (CGB)
	u8	P_Sw;				//Pan Or Sweep (CGB)... Maybe Not :P
	WaveData *Wave;			//Wave Pointer

	union {
		struct {
			u8	Attack;		//Attack Envelope
			u8	Decay;		//Decay Envelope
			u8	Sustain;	//Sustain Envelope
			u8	Release;	//Release Envelope
		};

		u8	*Split;			//Pointer To Split Table
	};
} ToneData;

typedef struct {
	ToneData Tone[1];		//Array Of Tones
} BankData;

typedef struct {
	u8	Tracks;				//Track Count
	u8	Blocks;				//Block count
	u8	Priority;			//Priority
	u8	Reverb;				//Reverb Intensity
	BankData *Bank;			//Voice Bank Pointer
	u8	*Part[1];			//Tracks
} SongData;

/*        Engine Type        */

typedef struct {
	u8	Status;				//Channel Status
	u8	Scaler;				//Volume Scaler
	u8	LVol;				//Left output
	u8	RVol;				//Right output

	u32	Freq;				//Output Frequency
	u32	Error;				//Error in Frequency

	s8	*Src;				//Source
	s8	*Dst;				//Destination (End Pointer)
	s8	*Rst;				//Reset Position

	u8	Attack;				//Attack Delta
	u8	Decay;				//Decay Delta (256-x)
	u8	Sustain;			//Sustain Level
	u8	Release;			//Release Delta (256-x)

	u8	Note;				//Note Being Played
	u8	Velocity;			//Velocity Of Note
	u8	Song;				//Song Caller
	u8	Track;				//Track Caller

	u8	Timer;				//Clocks Left
	u8	Priority;			//Priority
	u8	ModCnt;				//Modulation Count
	u8	r1;					//Expansion

	WaveData *Wave;			//Wave Pointer
	ToneData *Tone;			//Tone Pointer

	s8	Shift;				//Shift At The Time
	u8	LFODelay;			//LFO Delay
	u8	LFOSpeed;			//LFO Speed
	u8	ModType;			//Modulation Type
} M4Channel;

typedef struct {
	union
	{
		u8	Status;				//Status Of Channel
		M4CGBChannelStatusBitField StatusBits;
	};
	s8	Scaler;				//Volume Scaler
	u8	Length;				//Length...
	s8	Shift;				//Shift Issued

	u8	Timer;				//Clock Countdown
	u8	Sweep;				//Sweep... Maybe Not :P
	u8	Track;				//Track Origin
	u8	Play0;				//Play Origin

	u8	Attack;				//Attack Envelope
	u8	Decay;				//Decay Envelope
	u8	Sustain;			//Sustain Envelope
	u8	Release;			//Release Envelope

	u8	Note;				//Note Issued (No Shift)
	u8	Velocity;			//Velocity Issued (No Scale)
	u8	Duty;				//Duty (CGB 1&2)
	u8	r1;					//Expansion

	ToneData *Tone;			//Tone Pointer

	u32 LVol;				//Last Volume
	u32 LFreq;				//Last Frequency
	u32	r2;					//Expansion
} M4CGBChan;

typedef struct {
	u32	Status;				//Driver Status
	u32	Divider;			//Division Of 1 By Freq (Q42)
	u16	Freq;				//Mixer Frequency
	u16	BuffLen;			//Buffering Length
	u8	Vol;				//Volume
	u8	Rev;				//Reverb Level
	u8	MaxChn;				//Maximum Channels
	u8	DMACnt;				//DMA Count

	M4Channel Chan[			//Virtual Channels
		M4_MaxChn
	];

	s8	Buffer [			//PCM Buffer
		M4_BuffLen * M4_DMACount * (M4_UseDMA2+1)
	];
} M4Driver;

/*        Player Type        */

typedef struct {
	u8	Status;				//Channel Status
	u8	Self;				//Self Index (0-16)
	u16	Index;				//Link Index

	u8	Note;				//Last Note Issued
	u8	Velo;				//Last Velocity Issued
	u8	Timer;				//Countdown
	u8	MML;				//Last MML Command Issued

	u8	Repeat;				//Repeats Left
	u8	Priority;			//Priority
	s8	KeyShift;			//Key Shift
	u8	Voice;				//Voice

	u8	Volume;				//Volume
	u8	Pan;				//Pan (0-7F)
	s8	Bend;				//Wheel
	u8	BendRange;			//Bend Range

	u8	LFOSpeed;			//LFO Speed...
	u8	LFODelay;			//LFO Delay...
	u8	ModDepth;			//Modulation Depth...
	u8	ModType;			//Modulation Type... Maybe Not :P

	s16	MicroTune;			//Tune*Range + MicroTune
	u16	LastByte;			//Last Command Parameter

	u8	*Data;				//Data Pointer
	u8	*Link[5];			//Links
} M4Track;

typedef struct {
	u16	Status;				//Player Status
	u16	Speed;				//Speed Q8
	s16	Tempo;				//Tempo
	s16	Clock;				//Clock Counter
	u8	Volume;				//Volume
	u8	Self;				//Self Index
	u16	ActTracks;			//Active Tracks

	SongData *Song;			//Song Pointer

	M4Track Track[16];		//Midi Tracks
} M4Player;

typedef struct _STT {
	SongData *Song;
	u16 Player;
	u16 r1;
} STT;

void M4_Mixer();
void M4_Init();
void M4_Intr();

/*****************************/
#ifdef __cplusplus
	}
#endif
/*****************************/
#endif
/*****************************/
#endif
/*****************************/
