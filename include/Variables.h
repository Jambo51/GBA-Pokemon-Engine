#ifndef VARIABLES_H
#define VARIABLES_H

#include "GlobalDefinitions.h"

class Variables
{
private:
	static u16 varBank[];
	static bool ValidateVarID(u32 varID);
public:
	static u16 GetVar(u32 varID);
	static void SetVar(u32 varID, u16 value);
};

#endif
