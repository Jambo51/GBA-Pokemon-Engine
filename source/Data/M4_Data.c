/*****************************/
/*    Engine M4 2009, Aik    */
/*****************************/

#include "Functions/MusicEngine/EngineM4.h"

/*****************************/

InBSS	M4Driver	M4DriverArea;
InBSS	M4CGBChan	M4CGBArea[4];
InBSS	M4Player	M4Players[M4_MaxPly];
InBSS	s32			M4MixArea[M4_BuffLen];

/*****************************/
