/*
 * ToneTrack.h
 *
 *  Created on: 12 May 2015
 *      Author: Jamie
 */

#ifndef TONETRACK_H_
#define TONETRACK_H_

#include "Track.h"

class ToneTrack : public Track
{
private:
	static u16 CGBFreq[];
	u8 trackID;
	u8 currentOctave;
	u8 currentVoice;
	u8 fadeSpeed;
	u8 channelVolume;
	u8 fadeDirection;
	u8 arpeggiationVoice;
	u8 arpeggiationDelayCount;
	u8 arpeggiationCountdown;
	u8 modulationCountdown;
	u8 modulationDelay;
	u8 modulationMode;
	u8 modulationDepth;
	u8 modulationSpeedDelay;
	u8 modulationSpeed;
	s8 pitchBendRate;
	u8 portamentoCountdown;
	u8 portamentoDelay;
	u8 portamentoTarget;
	u8 portamentoSpeedDelay;
	u8 portamentoSpeed;
	bool reacquireTempo;
	void ExecuteModifications(u8 commandID, u16 tempo, GBPChannel &masterChannel);
	void ResetModulationArpeggiationCounters(GBPChannel &masterChannel);
	void ModulateTrack(GBPChannel &masterChannel);
	u16 GetModulationPitch(GBPChannel &masterChannel);
	void ArpeggiateTrack(GBPChannel &masterChannel);
	u16 CalculatePitch(u8 commandID, s8 keyShift, u8 octave, u16 tone);
	u8 ExecuteCommands(u8 commandID, GBPChannel &masterChannel);
public:
	ToneTrack(u8 trackID);
	virtual ~ToneTrack();
	void Update(u16 tempo, GBPChannel &masterChannel);
	void Clear();
};

#endif /* TONETRACK_H_ */
