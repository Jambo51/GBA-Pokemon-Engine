#include "Data.h"

#define upperVarLimit 0x4200

u16* VarDecryption(u32 varID)
{
	if ((varID & 0x8000) == 0)
	{
		if (varID <= 0x3FFF || varID >= upperVarLimit)
		{
			return 0;
		}
		return (u16*)(&(varBank[(varID - 0x4000)]));
	}
	varID = varID - 0x8000;
	if (varID >= 0x20)
	{
		return 0;
	}
	return (u16*)(&(varBank[(varID + 0x200)]));
}

u16 GetVarValue(u32 varID)
{
	u16* location = (u16*)VarDecryption(varID);
	if (location == 0)
	{
		return 0;
	}
	return location[0];
}

void SetVar(u32 varID, u16 value)
{
	u16* location = (u16*)VarDecryption(varID);
	if (location == 0)
	{
		return;
	}
	location[0] = value;
}
