#include "Variables.h"

#include "FlashFunctions.h"

#define UpperVarLimit 0x4200
#define LowerVarLimit 0x4000
#define NumTempVars 0x20

EWRAM_LOCATION ALIGN(2) u16 Variables::varBank[UpperVarLimit - LowerVarLimit + NumTempVars];
RODATA_LOCATION ALIGN(4) SaveLocationStruct Variables::saveData[] = {
		{ (u8*)0x11000, (u8*)&Variables::varBank, (UpperVarLimit - LowerVarLimit) << 1 },
		{ (u8*)0xFFFFFFFF, 0, 0 }
};

bool Variables::ValidateVarID(u32 varID)
{
	return (varID >= LowerVarLimit && varID < UpperVarLimit);
}

bool Variables::IsTemporaryVar(u32 varID)
{
	return (varID >= 0x8000 && varID < (0x8000 + NumTempVars));
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

void Variables::Save()
{
	FlashFunctions::WriteToFlash((SaveLocationStruct*)&saveData);
}

void Variables::Load()
{
	FlashFunctions::ReadFromFlash((SaveLocationStruct*)&saveData);
	memset16((void*)&varBank[UpperVarLimit - LowerVarLimit], 0, NumTempVars);
}

void Variables::Initialise()
{
	memset16((void*)&varBank, 0, UpperVarLimit - LowerVarLimit + NumTempVars);
}
