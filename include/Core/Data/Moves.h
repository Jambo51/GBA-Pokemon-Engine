/*
 * Moves.h
 *
 *  Created on: 24 Jul 2015
 *      Author: Jamie
 */

#ifndef MOVES_H_
#define MOVES_H_

#include "GlobalDefinitions.h"

namespace Core
{
	namespace Data
	{
		class Moves
		{
		private:
			static MoveData moveData[];
			static char moveNames[][17];
			Moves();
			~Moves();
		public:
			static MoveData* GetMoveDataByIndex(u32 moveID)
			{
				if (moveID < NumberOfMoves)
				{
					return (MoveData*)&moveData[moveID];
				}
				return (MoveData*)&moveData[0];
			}
			static char* GetMoveNameByIndex(u32 moveID)
			{
				if (moveID < NumberOfMoves)
				{
					return (char*)&moveNames[moveID];
				}
				return (char*)&moveNames[0];
			}
		};
	}
}

#endif /* MOVES_H_ */
