/*
 * M4APlayer.h
 *
 *  Created on: 10 Jan 2016
 *      Author: CoolerMaster
 */

#ifndef M4APLAYER_H_
#define M4APLAYER_H_

class M4APlayer
{
private:
	static const u16 maxTracks;
	bool isActive;
	u8	masterPlayerVolume;				//Volume
	s16	tempo;				//Tempo
	u16	numActiveTracks;			//Active Tracks
	SongData* Song;			//Song Pointer
	LinkedList tracks;
public:
	M4APlayer();
	virtual ~M4APlayer();
	bool AddTrack(M4ATrack* track);
	bool RemoveTrack(M4ATrack* track);
	bool Update();
	bool IsActive() { return isActive; }
	void Kill();
};

#endif /* M4APLAYER_H_ */
