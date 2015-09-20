/*
 * M4AEngine.h
 *
 *  Created on: 22 May 2015
 *      Author: Jamie
 */

#ifndef M4AENGINE_H_
#define M4AENGINE_H_

#ifndef __ASSEMBLER__

#ifdef __cplusplus
extern "C" {
#endif

#include "MusicEngine.h"
#include "EngineM4.h"

#define FADESPEED 4
#define M4_MAXVOL 127

enum Fades { Fade_Out, Fade_In };

typedef struct M4FadeStruct
{
	u8 isActive:1;
	u8 empty:7;
	u8 playerID;
	u8 direction;
} M4FadeStruct;

class M4AEngine : public MusicEngine
{
	static u16 Sqrt[];
	static u32 M4_MixArea[];
	M4Driver M4DriverArea;
	M4CGBChan M4CGBArea[4];
	M4Player M4Players[M4_MaxPly];
	s32	M4MixArea[M4_BuffLen];
	M4FadeStruct fadeStruct;
	void StartSong(u16 songID, bool startWithZeroVolume = false);
	void StartFanfare(u16 fanfareID);
	void StartSFX(u16 sfxID);
	void FadeSong();
	void FadeSongOut();
	void FadeSongIn();
	void M4_Main();
	void MidiUpdate(M4Player *Play);
	void M4_Update(M4Player *Play);
	void M4_Player(u8* eightBitAddress);
	void M4_StopSong(u32 Player);
	void M4_PlaySong(u32 Player, const SongData *Song);
	void M4_PlayByName(SongData *Song);
	void M4_PlayByIdx(u32 Idx);
	void M4_StopByName(SongData *Song);
	void M4_PlayerStopAll(void);
	M4Channel* M4_FetchChannel(M4Track *Trck, ToneData *Tone);
	void HandleNote(M4Track *Track, M4Player *Play, u32 Time);
	void M4_Fine(M4Track *Track, M4Player *Play);
	void M4_Goto(M4Track *Track);
	void M4_Patt(M4Track *Track);
	void M4_Pend(M4Track *Track);
	void M4_Rept(M4Track *Track);
	void M4_MemAcc(M4Track *Track);
	void M4_Prio(M4Track *Track);
	void M4_Tempo(M4Track *Track, M4Player *Play);
	void M4_KeyShift(M4Track *Track);
	void M4_Voice(M4Track *Track);
	void M4_Volume(M4Track *Track);
	void M4_Pan(M4Track *Track);
	void M4_Bend(M4Track *Track);
	void M4_Range(M4Track *Track);
	void M4_LFOSpeed(M4Track *Track);
	void M4_LFODelay(M4Track *Track);
	void M4_ModDepth(M4Track *Track);
	void M4_ModType(M4Track *Track);
	void M4_FineTune(M4Track *Track);
	void M4_XCmd(M4Track *Track);
	void M4_Eot(M4Track *Track, M4Player *Play);
	void M4_Tie(M4Track *Track, M4Player *Play);
	void M4_TrackUpdate(M4Track *Track, M4Player *Play);
	M4Channel* FetchChannel();
	M4Channel* M4_SFX(const WaveData *Wave);
public:
	M4AEngine()
	{

	}
	~M4AEngine()
	{

	}
	void Interrupt();
	void Update();
	void SetSongOnEndFunction(VoidFunctionPointerVoid function);
	void SetSFXOnEndFunction(VoidFunctionPointerVoid function);
	void SwitchWavePattern(u8 patternID) const;
	void Initialise();
	void ResumeSong();
	bool FanfarePlaying();
	bool SFXPlaying();
};

#ifdef __cplusplus
}
#endif

#endif

#endif /* M4AENGINE_H_ */
