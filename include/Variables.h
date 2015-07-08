#ifndef VARIABLES_H
#define VARIABLES_H

#include "GlobalDefinitions.h"

#define LASTRESULT 0x800D
#define LASTTALKED 0x800F

class Variables
{
private:
	static u16 varBank[];
	static SaveLocationStruct saveData[];
public:
	static bool ValidateVarID(u32 varID);
	static bool IsTemporaryVar(u32 varID);
	static u16 GetVar(u32 varID);
	static void SetVar(u32 varID, u16 value);
	static void Save();
	static void Load();
	static void Initialise();
};

#endif
