#ifndef VARIABLES_H
#define VARIABLES_H

#include "Data/GlobalDefinitions.h"

u16* VarDecryption(u32 varID);
u16 GetVarValue(u32 varID);
void SetVar(u32 varID, u16 value);

#endif
