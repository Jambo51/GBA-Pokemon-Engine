/*
 * M4APlayer.h
 *
 *  Created on: 10 Jan 2016
 *      Author: CoolerMaster
 */

#ifndef M4APLAYER_H_
#define M4APLAYER_H_

#include "SmartPointer.h"
#include "M4ATrack.h"
#include "Controllers/M4ANullController.h"
#include "Audio/M4A/EngineM4.h"

#define BPM_PER_FRAME 150

namespace Audio
{
	namespace M4A
	{
		class M4APlayer
		{
		private:
			static bool initialised;
			static SmartPointer<Controllers::M4AController> nullController;
			SmartArrayPointer<M4ATrack> channels;
			u8 channelCount;
			u8 activeChannelCount;
			bool isActive;
			bool isPaused;
			u16 bpmStack;
			u8	masterPlayerVolume;				//Volume
			u16	tempo;				//Tempo
			SongData* song;			//Song Pointer
		public:
			M4APlayer();
			~M4APlayer();
			static bool Initialised() { return initialised; }
			static void Initialise()
			{
				nullController = new Controllers::M4ANullController();
				initialised = true;
			}
			bool Update();
			void Start(const STT &stt);
			void Stop();
			void Pause();
			void Resume();
			void SetTempo(u16 tempo) { this->tempo = tempo; }
			bool IsActive() { return isActive; }
			bool IsPaused() { return isPaused; }
		};
	}
}

#endif /* M4APLAYER_H_ */
