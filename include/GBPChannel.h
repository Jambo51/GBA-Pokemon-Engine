/*
 * GBPChannel.h
 *
 *  Created on: 12 May 2015
 *      Author: Jamie
 */

#ifndef GBPCHANNEL_H_
#define GBPCHANNEL_H_

#include "ToneTrack.h"
#include "WaveTrack.h"
#include "NoiseTrack.h"

#define NUMWAVEPATTERNS 15

enum ValidTrack { ToneOne, ToneTwo, Wave, Noise };

class GBPSoundsEngine;

class GBPChannel
{
protected:
	GBPSoundsEngine* address;
	bool tracksIncluded[5];
	u16 tempo;
	ToneTrack* toneTracks[2];
	WaveTrack* waveTrack;
	NoiseTrack* noiseTrack;
	VoidFunctionPointerVoid onEndFunction;
public:
	GBPChannel();
	GBPChannel(GBPSoundsEngine* hostEngine);
	virtual ~GBPChannel();
	bool Update();
	void Clear();
	void SetOnTrackEndFunction(VoidFunctionPointerVoid functionPtr);
	void SetTempo(u16 newTempo) { tempo = newTempo; }
	bool TrackIncluded(ValidTrack trackID) const { return tracksIncluded[trackID]; }
	void TrackIncluded(ValidTrack trackID, bool newValue) { tracksIncluded[trackID] = newValue; }
	u16* GetBufferAddress() const;
	void ExecuteOnEndFunction() const { if (onEndFunction) { onEndFunction(); } }
	void StartTrack(GBPTrackHeader* header);
	const NoiseTrack & GetNoise() const { return *noiseTrack; }
	const WaveTrack & GetWave() const { return *waveTrack; }
	const ToneTrack & GetToneOne() const { return *toneTracks[0]; }
	const ToneTrack & GetToneTwo() const { return *toneTracks[1]; }
	void Pause() { tracksIncluded[5] = true; }
	void Unpause() { tracksIncluded[5] = false; }
	bool IsPaused() const { return tracksIncluded[5]; }
	void SwitchWavePattern(u8 voiceID) const;
	u16 GetTempo() const { return tempo; }
	bool IsPlaying() const { for (int i = 0; i < 4; i++) { if (!tracksIncluded[i]) { return false; } } return true; }
};

#endif /* GBPCHANNEL_H_ */
