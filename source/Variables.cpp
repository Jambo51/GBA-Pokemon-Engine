#include "Variables.h"

#define UpperVarLimit 0x4200
#define LowerVarLimit 0x4000
#define NumTempVars 0x20

EWRAM_LOCATION ALIGN(2) u16 Variables::varBank[UpperVarLimit - LowerVarLimit + NumTempVars];

bool Variables::ValidateVarID(u32 varID)
{
	return (varID >= LowerVarLimit && varID < UpperVarLimit);
}

u16 Variables::GetVar(u32 varID)
{
	if (ValidateVarID(varID))
	{
		return varBank[varID - LowerVarLimit];
	}
	if ((varID & 0x8000) != 0)
	{
		varID -= 0x8000;
		if (varID < NumTempVars)
		{
			return varBank[UpperVarLimit - LowerVarLimit + varID];
		}
	}
	return 0xFFFF;
}

void Variables::SetVar(u32 varID, u16 value)
{
	if (ValidateVarID(varID))
	{
		varBank[varID - LowerVarLimit] = value;
	}
	if ((varID & 0x8000) != 0)
	{
		varID -= 0x8000;
		if (varID < NumTempVars)
		{
			varBank[UpperVarLimit - LowerVarLimit + varID] = value;
		}
	}
}
