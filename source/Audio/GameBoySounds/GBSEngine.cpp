/*
 * GBSEngine.c
 *
 *  Created on: 17 Oct 2013
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"
#include "Audio/GameBoySounds/GBSEngine.h"
#include "Audio/SoundEngine.h"
#include "Audio/GameBoySounds/MusicData.h"
#include "Callbacks/ResumeSongCallback.h"

namespace Audio
{
	namespace GameBoySounds
	{
		RODATA_LOCATION ALIGN(4) WavePattern GBSEngine::wavePatterns[] = {
			{ 0xCE8A4602, 0xDCEDFEFF, 0x6587A9CB, 0x11223344 },
			{ 0xCE8A4602, 0xEEFEFFEF, 0x87A9CBDD, 0x11224365 },
			{ 0xEEBD6913, 0xEDFFFFEE, 0xEEFFFFDE, 0x3196DBEE },
			{ 0xCD8A4602, 0xFFDEFEEF, 0x98BADCEE, 0x10325476 },
			{ 0x67452301, 0xF7EECD8A, 0xA8DCEE7F, 0x10325476 },
			{ 0x33221100, 0x11223344, 0xAACCEEFF, 0xEECCAA88 },
			{ 0xCE8A4602, 0x6587A9CB, 0xDCEDFEFF, 0x11223344 },
			{ 0xF587A9C0, 0xDCEDFEFF, 0xF1223344, 0xCE8A4602 },
			{ 0x1F223344, 0xCE8A4600, 0xDCEDFEF8, 0x6587A9CB },
			{ 0x08000011, 0x9A571300, 0x98A9BAB4, 0x21436587 },
			{ 0x2833E221, 0xEAFF22E1, 0x10DC1410, 0x735141E3 },
			{ 0x000000FF, 0x00000000, 0x000000FF, 0x00000000 },
			{ 0x0000FFFF, 0x00000000, 0x0000FFFF, 0x00000000 },
			{ 0xFFFFFFFF, 0x00000000, 0xFFFFFFFF, 0x00000000 },
			{ 0xFFFFFFFF, 0x0000FFFF, 0xFFFFFFFF, 0x0000FFFF }
		};

		void GBSEngine::Initialise(void* songTablePointer)
		{
			*((vu32*)0x04000084) = 0x80;
			*((vu16*)0x04000088) = 0xC200;
			*((vu16*)0x04000074) = 0x8000;
			*((vu16*)0x04000070) = 0x80;
			buffer[0x10] = 0xFF77;
			buffer[0x11] = 0x2;
			songTable = (GBSTrackHeader**)songTablePointer;
			SwitchWavePattern(0);
		}

		void GBSEngine::Update()
		{
			switch (SoundEngine::GetStatus())
			{
				case DoNothing:
					break;
				case InitialiseSong:
					this->StartSong(SoundEngine::GetSongID());
					SoundEngine::SetStatus(ContinueSong);
					break;
				case InitialiseFanfare:
					this->StartFanfare(SoundEngine::GetFanfareID());
					SoundEngine::SetStatus(ContinueSong);
					break;
				case InitialiseSFX:
					this->StartSFX(SoundEngine::GetSFXID());
					SoundEngine::SetStatus(ContinueSong);
					break;
				case FadeToSilence:
					FadeSongOut();
					break;
				case FadeIn:
				{
					this->StartSong(SoundEngine::GetSongID(), true);
					buffer[0x10] &= 0xFF00;
					FadeSongIn();
					SoundEngine::SetStatus(FadeInSecond);
					break;
				}
				case FadeToSong:
					FadeSongOut();
					if (SoundEngine::GetStatus() == InitialiseSong)
					{
						this->StartSong(SoundEngine::GetSongID());
						SoundEngine::SetStatus(ContinueSong);
					}
					break;
				case FadeInSecond:
					FadeSongIn();
					break;
				case Pause:
					channels[0]->Pause();
					SoundEngine::SetStatus(DoNothing);
					break;
				default:
					SoundEngine::SetStatus(ContinueSong);
					break;
			}
			for (int i = 0; i < 3; i++)
			{
				if (!channels[i]->Update() && channelsPlaying[i])
				{
					channelsPlaying[i] = false;
					channels[i]->ExecuteOnEndFunction();
					channels[i]->Clear();
				}
			}
			MusicEngine::Update();
			skipWaveChange = false;
		}

		void GBSEngine::StartSong(u16 songID, bool startWithZeroVolume)
		{
			Callbacks::Callback* callback = onEndSongCallback;
			channels[0]->Clear(true);
			onEndSongCallback = callback;
			memset32(&buffer, 0, 8);
			if (songID > 0)
			{
				channels[0]->StartTrack(songTable[songID - 1]);
				buffer[0x10] = 0xFF77;
				SwitchWavePattern(0);
				skipWaveChange = true;
				channelsPlaying[0] = true;
			}
		}

		void GBSEngine::SwitchWavePattern(u8 patternID) const
		{
			vu16* tone1Controller = (vu16*)(0x04000060);
			if (patternID < NUMWAVEPATTERNS)
			{
				WavePattern* mainPattern = (WavePattern*)0x04000090;
				tone1Controller[8] = 0x40;
				mainPattern[0] = wavePatterns[patternID];
				tone1Controller[8] = 0x0;
			}
		}

		void GBSEngine::ResumeSong()
		{
			channels[0]->Unpause();
			if (!skipWaveChange && channels[0]->GetWave().GetCurrentVoice() != channels[1]->GetWave().GetCurrentVoice())
			{
				SwitchWavePattern(channels[0]->GetWave().GetCurrentVoice());
			}
			if (!channels[0]->Update() && channelsPlaying[0])
			{
				channelsPlaying[0] = false;
				channels[0]->ExecuteOnEndFunction();
				channels[0]->Clear();
			}
		}

		void GBSEngine::StartFanfare(u16 fanfareID)
		{
			channels[0]->Pause();
			channels[1]->StartTrack(songTable[fanfareID - 1]);
			channelsPlaying[1] = true;
		}

		void GBSEngine::StartSFX(u16 sfxID)
		{
			channelsPlaying[2] = true;
		}

		void GBSEngine::Interrupt()
		{
			// Unnecessary for this engine, but since the M4A requires it
			// This function needs to simply return
			return;
		}

		void GBSEngine::FadeSong()
		{
			u16* tone1Controller = (u16*)(&buffer);
			if (fadeInfo.active)
			{
				if (fadeInfo.frameDelay == 0)
				{
					u8 target = (fadeInfo.direction == 1) ? 0x77 : 0;
					u8 currentValue = tone1Controller[0x10] & 0xFF;
					if (currentValue == target)
					{
						fadeInfo.active = false;
						switch (SoundEngine::GetStatus() - FadeToSilence)
						{
							case 0:
								SoundEngine::SetStatus(DoNothing);
								break;
							case 2:
								SoundEngine::SetStatus(InitialiseSong);
								break;
							case 4:
								SoundEngine::SetStatus(ContinueSong);
							default:
								break;
						}
					}
					else
					{
						if (fadeInfo.direction == 1)
						{
							currentValue += 0x11;
						}
						else
						{
							currentValue -= 0x11;
						}
						tone1Controller[0x10] = (tone1Controller[0x10] & 0xFF00) | currentValue;
						fadeInfo.frameDelay = SONG_FADE_FRAME_DELAY;
						fadeInfo.stepNumber++;
					}
				}
				else
				{
					fadeInfo.frameDelay--;
				}
			}
		}

		void GBSEngine::FadeSongOut()
		{
			if (!fadeInfo.active)
			{
				fadeInfo.active = true;
				fadeInfo.direction = 0;
				fadeInfo.frameDelay = SONG_FADE_FRAME_DELAY;
				fadeInfo.stepNumber = 0;
			}
			FadeSong();
		}

		void GBSEngine::FadeSongIn()
		{
			if (!fadeInfo.active)
			{
				fadeInfo.active = true;
				fadeInfo.direction = 1;
				fadeInfo.frameDelay = SONG_FADE_FRAME_DELAY;
				fadeInfo.stepNumber = 0;
			}
			FadeSong();
		}

		bool GBSEngine::SFXPlaying()
		{
			const GBSChannel &channel = *channels[2];
			return channel.IsPlaying();
		}

		bool GBSEngine::FanfarePlaying()
		{
			const GBSChannel &channel = *channels[1];
			return channel.IsPlaying();
		}
	}
}
