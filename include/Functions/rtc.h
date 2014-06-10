#ifndef RTC_H
#define RTC_H

#include "Data/GlobalDefinitions.h"

void OverworldPaletteUpdate();
void rtc_cmd(int v);
int CompareTimeTo(u8 hour, u8 minute, u8 second);
void rtc_update();
void rtc_data(int v);
int rtc_read(void);
void rtc_enable(void);
int rtc_check(void);
int rtc_get(u8 *data);
void rtc_set(u8 *data);
void IncrementPlayerPlayedCounter();
void RTCMainLoopUpdate();

#endif
