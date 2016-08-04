#ifndef VARIABLES_H
#define VARIABLES_H

#include "GlobalDefinitions.h"
#include "Tasks/Memory/MemoryTask.h"

#define LASTRESULT 0x800D
#define LASTTALKED 0x800F
#define UpperVarLimit 0x4200
#define LowerVarLimit 0x4000
#define NumTempVars 0x20

namespace Core
{
	namespace Data
	{
		class Variables
		{
			friend class Tasks::Memory::MemoryTask;
		private:
			static u16 varBank[];
		public:
			static bool ValidateVarID(u32 varID);
			static bool IsTemporaryVar(u32 varID);
			static u16 GetVar(u32 varID);
			static void SetVar(u32 varID, u16 value);
			static void Initialise();
			static void ClearTemporaryVars();
		};
	}
}

#endif
