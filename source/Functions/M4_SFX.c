/*****************************/
/*    Engine M4 2009, Aik    */
/*****************************/

#include "EngineM4.h"

/*****************************/

static inline M4Channel *FetchChannel(void) {
	int Chan = M4DriverArea.MaxChn, LP = 0x100;
	M4Channel *ChanP = M4DriverArea.Chan, *Chan0 = 0;

	do {
		if(!ChanP->Status) return ChanP;
		if(ChanP->Priority <= LP) Chan0 = ChanP, LP = ChanP->Priority;

		ChanP++;
	} while(--Chan > 0);

	return Chan0;
}

/*****************************/

M4Channel *M4_SFX(const WaveData *Wave) {
	M4Channel *Chan = FetchChannel();

	Chan->Status   = M4_NoteOn | M4_FX;
	Chan->LVol     = 127;
	Chan->RVol     = 127;
	Chan->Freq     = Wave->Freq>>10;
	Chan->Attack   = 0;
	Chan->Decay    = 0;
	Chan->Sustain  = 255;
	Chan->Release  = 0;
	Chan->Note     = 60;
	Chan->Velocity = 64;
	Chan->Song     = 0xFF;
	Chan->Track    = 0xFF;
	Chan->Timer    = 0;
	Chan->Priority = 0;
	Chan->Wave     = (WaveData*)Wave;

	return Chan;
}

/*****************************/
