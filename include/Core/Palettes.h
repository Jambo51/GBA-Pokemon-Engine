/*
 * Palettes.h
 *
 *  Created on: 1 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_CORE_PALETTES_H_
#define INCLUDE_CORE_PALETTES_H_

#include "GlobalDefinitions.h"
#include "Callbacks/Callback.h"

namespace Core
{
	enum FadeIDs { EighthSecond, QuarterSecond, HalfSecond, Second, TwoSecond, MaxFadeIDs };

	class Palettes
	{
		private:
			static bool doFade;
			static bool doFade2;
			static bool fadeStyle;
			static bool fadeBack;
			static bool doCallback;
			static bool doExitCallback;
			static bool paletteWriteDetected;
			static bool fade256;
			static u16* currentPalette;
			static u16* targetPalette;
			static u32 numFrames;
			static u32 originalFrames;
			static u32 alphaSteps;
			static u32 currentAlpha;
			static Callbacks::Callback* callbackFunction;
			static u16 blackPalette[];
			static u16 whitePalette[];
			static u32 framesInFades[];
			static u32 alphaStepsInFades[];
			Palettes();
			~Palettes();
			static u32 GetFadeColour(u16 clra, u16 clrb);
			static void DoFadeOnPalette(u32 paletteID, u16* target, u16* current);
			static void DoFade();
		public:
			static u16* GetCurrentPalette();
			static void SetAllPalettes(u16* source, u16* destination = 0);
			static void SetPalette(u32 paletteID, u16* source, u16* destination = 0);
			static void SetColour(u32 paletteID, u32 slotID, Colour c, u16* destination = 0);
			static void FadeToPalette(const u16* newPalette, bool fade256Colours = false, FadeIDs FrameCount = HalfSecond, bool callback = false, bool exitCallback = true);
			static void FadeToGreyScale(FadeIDs FrameCount = HalfSecond, bool callback = false, bool exitCallback = true);
			static void FadeToBlack(bool fade256Colours = false, FadeIDs FrameCount = HalfSecond, bool callback = false, bool exitCallback = true) { FadeToPalette((const u16*)&blackPalette, fade256Colours, FrameCount, callback, exitCallback); }
			static void FadeToWhite(bool fade256Colours = false, FadeIDs FrameCount = HalfSecond, bool callback = false, bool exitCallback = true) { FadeToPalette((const u16*)&whitePalette, fade256Colours, FrameCount, callback, exitCallback); }
			static void PaletteFlash(const u16 *newPalette, bool fade256Colours, FadeIDs FrameCount, bool callback, bool exitCallback, u32 blendAmount);
			static void BlackPaletteFlash(bool fade256Colours = false, FadeIDs FrameCount = HalfSecond, bool callback = false, bool exitCallback = true, u32 blendAmount = 50) { PaletteFlash((const u16*)&blackPalette, fade256Colours, FrameCount, callback, exitCallback, blendAmount); }
			static void WhitePaletteFlash(bool fade256Colours = false, FadeIDs FrameCount = HalfSecond, bool callback = false, bool exitCallback = true, u32 blendAmount = 50) { PaletteFlash((const u16*)&whitePalette, fade256Colours, FrameCount, callback, exitCallback, blendAmount); }
			static u16* GetGreyScale(const u16* original);
			static void SetCustomFadeCallback(Callbacks::Callback* function) { callbackFunction = function; }
			static void SetPaletteToWhite();
			static void Update();
	};
}

#endif /* INCLUDE_CORE_PALETTES_H_ */
