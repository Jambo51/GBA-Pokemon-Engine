/*
 * RTC.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef RTC_H_
#define RTC_H_

#include "GlobalDefinitions.h"

class RTC
{
private:
	static RealTimeClock rtcData;
	static s32 check_val;
	static SeasonClockValues seasonValues[];
	RTC();
	~RTC();
	static void Cmd(s32 v);
	static s32 Read(void);
	static s32 Get(u8 *data);
	static void InnerUpdate();
	static void Data(s32 v);
	static bool Check(void);
	static void Set(u8 *data);
	static void IncrementPlayerPlayedCounter();
public:
	static s32 CompareTimeTo(u8 hour, u8 minute, u8 second);
	static s32 CompareDateTo(u8 day, u8 month, u16 year);
	static void Update();
	static void Enable(void);
	static const RealTimeClock & GetTime() { return rtcData; }
};

#endif /* RTC_H_ */
