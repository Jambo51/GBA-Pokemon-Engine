/*
 * GBPSoundsMainEngine.h
 *
 *  Created on: 19 Oct 2013
 *      Author: Jamie
 */

#ifndef GBPSOUNDSMAINENGINE_H
#define GBPSOUNDSMAINENGINE_H

#include "Data/GlobalDefinitions.h"

typedef enum MusicInitialisationModes {
	ImmediateStart,
	FadeOutThenStart
} MusicInitialisationModes;

/*
 * GBPSoundsEngine.c
 *
 *  Created on: 17 Oct 2013
 *      Author: Jamie
 */

void ClearMusicPlaybackData(u32 channelSet);
u16 CalculateLengthOfTone(u8 frameDelay, u16 tempo, u8 bitLength, u16 previousLeftover);
u16 CalculateTonePitchFromMidiNumber(u8 commandID, s8 keyShift, u8 octave, u16 tone);
void ExecuteToneModifications(GBPToneData* theData, u8 trackID, u8 commandID, u16 tempo);
void ExecuteWaveModifications(GBPWaveData* theData, u8 commandID, u16 tempo);
void WriteNoisePattern(GBPNoiseData* theData);
void ExecuteNoiseModifications(GBPNoiseData* theData, u8 commandID, u16 tempo);
void NullifyHardware();
void StopSongPlayback();
void PauseSongPlayback();
void ResumeSongPlayback();
void ResumeSongPlaybackAndDisableFanfare();
void SetupSongForPlayback(u16 songID, u8 songStartMode);
void SetupFanfareForPlayback(u16 songID);
void SetupSFXForPlayback(u16 sfxID);
u16 U16LittleEndianToBigEndian(u16 input);
u8 ExecuteCommandsTone(GBPToneData* theData, u8 commandID, u8 trackID, u32 musicSetIndex);
void SwitchWavePattern(u8 patternID);
u8 ExecuteCommandsWave(GBPWaveData* theData, u8 commandID, u32 musicSetIndex);
u8 ExecuteCommandsNoise(GBPNoiseData* theData, u8 commandID, u32 musicSetIndex);
u16 GetModulationPitchAndUpdateData(GBPToneData* theData);
void ModulateToneTrack(GBPToneData* theData, u8 trackID);
void ResetToneModulationArpeggiationCounters(GBPToneData* theData, u8 trackID);
void ModulateWaveTrack(GBPWaveData* theData);
void ArpeggiateToneTrack(GBPToneData* theData, u8 trackID);
void UpdateCurrentlyPlayingSong();
void InitialiseGBPSoundsEngine();
GBPTrackHeader* ClearGBPData(u16 id, u32 channelSet);
void PutTrackDataIntoIWRAM(u16 songID, u32 channelSet);
void StartNewSongImmediately();
void StartNewFanfareImmediately();
void FadeSong();
void FadeSongOut();
void FadeSongIn();
void SetOnTrackEndFunction(VoidFunctionPointerVoid functionPtr, int channelNumber);
void GBPSoundsMainEngine();

#endif /* GBPSOUNDSMAINENGINE_H_ */
