/*
 * RTC.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "RTC.h"
#include "Maths.h"
#include "Game.h"
#include "EntityManager.h"

#define RTC_DATA ((vu16 *)0x080000C4)
#define RTC_RW ((vu16 *)0x080000C6)
#define RTC_ENABLE ((vu16 *)0x080000C8)
#define CART_NAME ((vu8 *)0x080000A0)
#define RTC_CMD_READ(x) (((x)<<1) | 0x61)
#define RTC_CMD_WRITE(x) (((x)<<1) | 0x60)
#define _YEAR	0
#define _MONTH	1
#define _DAY	2
#define _WKD	3
#define _HOUR	4
#define _MIN	5
#define _SEC	6

EWRAM_LOCATION ALIGN(4) RealTimeClock RTC::rtcData;
EWRAM_LOCATION ALIGN(4) s32 RTC::check_val = 0;
RODATA_LOCATION ALIGN(1) SeasonClockValues RTC::seasonValues[4] = {  };

RTC::RTC()
{
	// TODO Auto-generated constructor stub

}

RTC::~RTC()
{
	// TODO Auto-generated destructor stub
}

s32 RTC::CompareTimeTo(u8 hour, u8 minute, u8 second)
{
	if (hour < rtcData.hour || (hour == rtcData.hour && minute < rtcData.minute) || (hour == rtcData.hour && minute == rtcData.minute && second < rtcData.second))
	{
		return 1;
	}
	else if (hour == rtcData.hour && minute == rtcData.minute && second == rtcData.second)
	{
		return 0;
	}
	return -1;
}

s32 RTC::CompareDateTo(u8 day, u8 month, u16 year)
{
	if (year < rtcData.year || (year == rtcData.year && month < rtcData.month) || (year == rtcData.hour && month == rtcData.month && day < rtcData.day))
	{
		return 1;
	}
	else if (year == rtcData.year && month == rtcData.month && day == rtcData.day)
	{
		return 0;
	}
	return -1;
}

void RTC::Cmd(s32 v)
{
	s32 l;
	u16 b;
	v = v<<1;
	for(l=7; l>=0; l--)
	{
		b = (v>>l) & 0x2;
		*RTC_DATA = b | 4;
		*RTC_DATA = b | 4;
		*RTC_DATA = b | 4;
		*RTC_DATA = b | 5;
	}
}

s32 RTC::Read(void)
{
	s32 j,l;
	u16 b;
	s32 v = 0;
	for(l=0; l<8; l++)
	{
		for(j=0; j<5; j++)
		{
			*RTC_DATA = 4;
		}
		*RTC_DATA = 5;
		b = *RTC_DATA;
		v = v | ((b & 2)<<l);
	}
	v = v>>1;
	return v;
}

s32 RTC::Get(u8 *data)
{
	s32 i;
	*RTC_DATA = 1;
	*RTC_RW = 7;
	*RTC_DATA = 1;
	*RTC_DATA = 5;
	Cmd(RTC_CMD_READ(2));
	*RTC_RW = 5;
	for(i=0; i<4; i++)
	{
		data[i] = (u8)Read();
	}
	*RTC_RW = 5;
	for(i=4; i<7; i++)
	{
		data[i] = (u8)Read();
	}
	return 0;
}

void RTC::InnerUpdate()
{
	u8 dateTime[7];
	Get(dateTime);
	rtcData.year = Maths::ToHex(dateTime[0]) + 2000;
	rtcData.month = Maths::ToHex(dateTime[1]);
	rtcData.day = Maths::ToHex(dateTime[2]);
	rtcData.dayOfWeek = Maths::ToHex(dateTime[3]);
	rtcData.hour = Maths::ToHex(dateTime[4] & 0x7F);
	rtcData.minute = Maths::ToHex(dateTime[5]);
	if (rtcData.second != Maths::ToHex(dateTime[6]))
	{
		rtcData.second = Maths::ToHex(dateTime[6]);
		Player player = Game::GetPlayer();
		u8 currentSeconds = player.secondsPlayed + 1;
		u8 additionalMinutes = 0;
		u8 additionalHours = 0;
		if (currentSeconds == 60)
		{
			currentSeconds = 0;
			additionalMinutes = 1;
		}
		u8 currentMinutes = player.minutesPlayed + additionalMinutes;
		if (currentMinutes == 60)
		{
			currentMinutes = 0;
			additionalHours = 1;
		}
		player.secondsPlayed = currentSeconds;
		player.minutesPlayed = currentMinutes;
		u16 hours = player.hoursPlayed;
		if (hours + additionalHours <= 0xFFFF)
		{
			player.hoursPlayed += additionalHours;
		}
	}
	u8 timeToWrite = 3;
	if (CompareTimeTo(17, 0, 0) >= 0 && CompareTimeTo(20, 30, 0) < 0)
	{
		timeToWrite = Time_Afternoon;
	}
	else if (CompareTimeTo(10, 0, 0) >= 0 && CompareTimeTo(17, 0, 0) < 0)
	{
		timeToWrite = Time_Day;
	}
	else if (CompareTimeTo(5, 0, 0) >= 0 && CompareTimeTo(10, 0, 0) < 0)
	{
		timeToWrite = Time_Morning;
	}
	else
	{
		timeToWrite = Time_Night;
	}
	if (timeToWrite != rtcData.timeOfDay)
	{
		rtcData.timeOfDay = timeToWrite;
		EntityManager::TimeTick(timeToWrite);
	}
}

//this pipes data out to the RTC
//remember that data must be BCDs
void RTC::Data(s32 v)
{
	s32 l;
	u16 b;
	v = v<<1;
	for(l=0; l<8; l++)
	{
		b = (v>>l) & 0x2;
		*RTC_DATA = b | 4;
		*RTC_DATA = b | 4;
		*RTC_DATA = b | 4;
		*RTC_DATA = b | 5;
	}
}

//this pipes data in from the RTC

void RTC::Enable(void)
{
	*RTC_ENABLE = 1;
	*RTC_DATA = 1;
	*RTC_DATA = 5;
	*RTC_RW = 7;
	Cmd(RTC_CMD_READ(1));
	*RTC_RW = 5;
	check_val = Read();
}

// Normally returns 0x40
bool RTC::Check(void)
{
	return ((check_val & 0x40) != 0); //01000000
}

void RTC::Set(u8 *data) {
	s32 i;
	u8 newdata[7];
	for(i=0; i<7; i++)
	{
		newdata[i] = Maths::ToHex(data[i]);
	}
	*RTC_ENABLE = 1;
	*RTC_DATA = 1;
	*RTC_DATA = 5;
	*RTC_RW = 7;
	Cmd(RTC_CMD_WRITE(2));
	//*RTC_RW = 0;
	for(i=0; i<4; i++)
	{
		Data(newdata[i]);
	}
	//*RTC_RW = 0;
	for(i=4; i<7; i++)
	{
		Data(newdata[i]);
	}
}

void RTC::IncrementPlayerPlayedCounter()
{
	Player player = Game::GetPlayer();
	player.framesPlayed++;
	if (player.framesPlayed == 60)
	{
		player.framesPlayed = 0;
		player.secondsPlayed++;
		if (player.secondsPlayed == 60)
		{
			player.secondsPlayed = 0;
			player.minutesPlayed++;
			if (player.minutesPlayed == 60)
			{
				player.minutesPlayed = 0;
				u16 hours = player.hoursPlayed;
				if (hours < 0xFFFF)
				{
					player.hoursPlayed++;
				}
			}
		}
	}
}

void RTC::Update()
{
	if (Check())
	{
		InnerUpdate();
	}
	else
	{
		rtcData.timeOfDay = 0;
		IncrementPlayerPlayedCounter();
	}
}


