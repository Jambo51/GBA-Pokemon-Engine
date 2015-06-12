/*
 * OverworldInputEventHandler.cpp
 *
 *  Created on: 9 Jun 2015
 *      Author: Jamie
 */

#include "OverworldInputEventHandler.h"
#include "Game.h"
#include "NonPlayerCharacter.h"
#include "MemoryLocations.h"
#include "Flags.h"
#include "Mapping.h"
#include "GameModeManager.h"

OverworldInputEventHandler::OverworldInputEventHandler()
{
	// TODO Auto-generated constructor stub
	movementWord.allMovement = 0;
}

OverworldInputEventHandler::~OverworldInputEventHandler()
{
	// TODO Auto-generated destructor stub
}

void OverworldInputEventHandler::OnPressA()
{
	InputEventHandler::OnPressA();
}

void OverworldInputEventHandler::OnPressB()
{
	InputEventHandler::OnPressB();
	movementWord.movement.isBDown = 1;
}

void OverworldInputEventHandler::OnPressStart()
{
	InputEventHandler::OnPressStart();
	if (!keyHeld[Key_Start] && !movementWord.movement.isMoving)
	{

	}
}

void OverworldInputEventHandler::OnPressSelect()
{
	InputEventHandler::OnPressSelect();
}

void OverworldInputEventHandler::OnPressL()
{
	InputEventHandler::OnPressL();
}

void OverworldInputEventHandler::OnPressR()
{
	InputEventHandler::OnPressR();
}

void OverworldInputEventHandler::OnPressUp()
{
	InputEventHandler::OnPressUp();
	if (!movementWord.movement.locked)
	{
		if (!movementWord.movement.isMoving)
		{
			NPCData* data = Game::GetNPCDataPointer();
			if (data[0].frameID != Facing_Up_Logical && !movementWord.movement.wasMoving)
			{
				if (!keyHeld[Key_Up])
				{
					data[0].dataPointer->ChangeFrame(Walking_Up_1);
					data[0].frameID = Facing_Up_Logical;
					data[0].dataPointer->HFlip(false);
					movementWord.movement.changeCounter = 4;
					movementWord.movement.ignoreCounter = 9;
				}
			}
			else if (!movementWord.movement.ignoreCounter)
			{
				Overworld* ow = (Overworld*)GameModeManager::GetScreen();
				ow->DecrementRow();
				ow->DrawRowOfBlocks(data[0].xLocation - 7, data[0].yLocation - 6, ow->GetRow(), ow->GetColumn());
				data[0].dataPointer->ChangeFrame(Walking_Up_1 + data[0].previousWalkingFrame);
				data[0].frameID = Facing_Up_Logical;
				data[0].dataPointer->HFlip(false);
				movementWord.movement.isMoving = 1;
				movementWord.movement.vertical = 1;
				movementWord.movement.positive = 0;
				if (Flags::CheckFlag(Flag_RunningShoes) && (Flags::CheckFlag(Flag_RunningShoesOn) || movementWord.movement.isBDown))
				{
					movementWord.movement.ppm = 2;
					movementWord.movement.movementCounter = 9;
					movementWord.movement.ignoreCounter = 9;
				}
				else
				{
					movementWord.movement.ppm = 1;
					movementWord.movement.movementCounter = 17;
					movementWord.movement.ignoreCounter = 17;
				}
			}
		}
	}
}

void OverworldInputEventHandler::OnPressDown()
{
	InputEventHandler::OnPressDown();
	if (!movementWord.movement.locked)
	{
		if (!movementWord.movement.isMoving)
		{
			NPCData* data = Game::GetNPCDataPointer();
			if (data[0].frameID != Facing_Down_Logical && !movementWord.movement.wasMoving)
			{
				if (!keyHeld[Key_Down])
				{
					data[0].dataPointer->ChangeFrame(Walking_Down_1);
					data[0].frameID = Facing_Down_Logical;
					data[0].dataPointer->HFlip(false);
					movementWord.movement.changeCounter = 4;
					movementWord.movement.ignoreCounter = 9;
				}
			}
			else if (!movementWord.movement.ignoreCounter)
			{
				data[0].dataPointer->ChangeFrame(Walking_Down_1 + data[0].previousWalkingFrame);
				data[0].frameID = Facing_Down_Logical;
				data[0].dataPointer->HFlip(false);
				movementWord.movement.isMoving = 1;
				movementWord.movement.vertical = 1;
				movementWord.movement.positive = 1;
				if (Flags::CheckFlag(Flag_RunningShoes) && (Flags::CheckFlag(Flag_RunningShoesOn) || movementWord.movement.isBDown))
				{
					movementWord.movement.ppm = 2;
					movementWord.movement.movementCounter = 9;
					movementWord.movement.ignoreCounter = 9;
				}
				else
				{
					movementWord.movement.ppm = 1;
					movementWord.movement.movementCounter = 17;
					movementWord.movement.ignoreCounter = 17;
				}
			}
		}
	}
}

void OverworldInputEventHandler::OnPressLeft()
{
	InputEventHandler::OnPressLeft();
	if (!movementWord.movement.locked)
	{
		if (!movementWord.movement.isMoving)
		{
			NPCData* data = Game::GetNPCDataPointer();
			if (data[0].frameID != Facing_Left_Logical && !movementWord.movement.wasMoving)
			{
				if (!keyHeld[Key_Left])
				{
					data[0].dataPointer->ChangeFrame(Walking_Left_1);
					data[0].frameID = Facing_Left_Logical;
					data[0].dataPointer->HFlip(false);
					movementWord.movement.changeCounter = 4;
					movementWord.movement.ignoreCounter = 9;
				}
			}
			else if (!movementWord.movement.ignoreCounter)
			{
				Overworld* ow = (Overworld*)GameModeManager::GetScreen();
				ow->DecrementColumn();
				ow->DrawColumnOfBlocks(data[0].xLocation - 8, data[0].yLocation - 5, ow->GetColumn(), ow->GetRow());
				data[0].dataPointer->ChangeFrame(Walking_Left_1 + data[0].previousWalkingFrame);
				data[0].frameID = Facing_Left_Logical;
				data[0].dataPointer->HFlip(false);
				movementWord.movement.isMoving = 1;
				movementWord.movement.vertical = 0;
				movementWord.movement.positive = 0;
				if (Flags::CheckFlag(Flag_RunningShoes) && (Flags::CheckFlag(Flag_RunningShoesOn) || movementWord.movement.isBDown))
				{
					movementWord.movement.ppm = 2;
					movementWord.movement.movementCounter = 9;
					movementWord.movement.ignoreCounter = 9;
				}
				else
				{
					movementWord.movement.ppm = 1;
					movementWord.movement.movementCounter = 17;
					movementWord.movement.ignoreCounter = 17;
				}
			}
		}
	}
}

void OverworldInputEventHandler::OnPressRight()
{
	InputEventHandler::OnPressRight();
	if (!movementWord.movement.locked)
	{
		if (!movementWord.movement.isMoving)
		{
			NPCData* data = Game::GetNPCDataPointer();
			if (data[0].frameID != Facing_Right_Logical && !movementWord.movement.wasMoving)
			{
				if (!keyHeld[Key_Right])
				{
					data[0].dataPointer->ChangeFrame(Walking_Left_1);
					data[0].frameID = Facing_Right_Logical;
					data[0].dataPointer->HFlip(true);
					movementWord.movement.changeCounter = 4;
					movementWord.movement.ignoreCounter = 9;
				}
			}
			else if (!movementWord.movement.ignoreCounter)
			{
				data[0].dataPointer->ChangeFrame(Walking_Left_1 + data[0].previousWalkingFrame);
				data[0].frameID = Facing_Right_Logical;
				data[0].dataPointer->HFlip(true);
				movementWord.movement.isMoving = 1;
				movementWord.movement.vertical = 0;
				movementWord.movement.positive = 1;
				if (Flags::CheckFlag(Flag_RunningShoes) && (Flags::CheckFlag(Flag_RunningShoesOn) || movementWord.movement.isBDown))
				{
					movementWord.movement.ppm = 2;
					movementWord.movement.movementCounter = 9;
					movementWord.movement.ignoreCounter = 9;
				}
				else
				{
					movementWord.movement.ppm = 1;
					movementWord.movement.movementCounter = 17;
					movementWord.movement.ignoreCounter = 17;
				}
			}
		}
	}
}

void OverworldInputEventHandler::Update()
{
	InputEventHandler::Update();
	if (movementWord.movement.ignoreCounter)
	{
		movementWord.movement.ignoreCounter--;
		if (!movementWord.movement.ignoreCounter)
		{
			Overworld* ow = (Overworld*)GameModeManager::GetScreen();
			ow->OnCompleteTurn();
		}
	}
	if (movementWord.movement.changeCounter)
	{
		movementWord.movement.changeCounter--;
		if (!movementWord.movement.changeCounter)
		{
			NPCData* data = Game::GetNPCDataPointer();
			switch (data[0].frameID)
			{
				case Facing_Down_Logical:
					data[0].dataPointer->ChangeFrame(Facing_Down);
					data[0].dataPointer->HFlip(false);
					break;
				case Facing_Up_Logical:
					data[0].dataPointer->ChangeFrame(Facing_Up);
					data[0].dataPointer->HFlip(false);
					break;
				case Facing_Left_Logical:
					data[0].dataPointer->ChangeFrame(Facing_Left);
					data[0].dataPointer->HFlip(false);
					break;
				case Facing_Right_Logical:
					data[0].dataPointer->ChangeFrame(Facing_Left);
					data[0].dataPointer->HFlip(true);
					break;
			}
		}
	}
	movementWord.movement.wasMoving = 0;
	if (movementWord.movement.isMoving)
	{
		movementWord.movement.movementCounter--;
		if (!movementWord.movement.movementCounter)
		{
			movementWord.movement.isMoving = 0;
			movementWord.movement.wasMoving = 1;
			NPCData* data = Game::GetNPCDataPointer();
			data[0].previousWalkingFrame = (data[0].previousWalkingFrame == 1) ? 0 : 1;
			if (data[0].frameID == Facing_Right_Logical)
			{
				data[0].dataPointer->ChangeFrame(Facing_Left);
				data[0].dataPointer->HFlip(true);
			}
			else
			{
				data[0].dataPointer->ChangeFrame(data[0].frameID);
				data[0].dataPointer->HFlip(false);
			}
			if (movementWord.movement.vertical)
			{
				if (movementWord.movement.positive)
				{
					data[0].prevXLocation = data[0].xLocation;
					data[0].prevYLocation = data[0].yLocation;
					data[0].yLocation++;
					Overworld* ow = (Overworld*)GameModeManager::GetScreen();
					ow->DrawRowOfBlocks(data[0].xLocation - 7, data[0].yLocation + 10, ow->GetRow(), ow->GetColumn());
					ow->IncrementRow();
				}
				else
				{
					data[0].prevXLocation = data[0].xLocation;
					data[0].prevYLocation = data[0].yLocation;
					data[0].yLocation--;
				}
			}
			else
			{
				if (movementWord.movement.positive)
				{
					data[0].prevXLocation = data[0].xLocation;
					data[0].prevYLocation = data[0].yLocation;
					data[0].xLocation++;
					Overworld* ow = (Overworld*)GameModeManager::GetScreen();
					ow->DrawColumnOfBlocks(data[0].xLocation + 8, data[0].yLocation - 5, ow->GetColumn(), ow->GetRow());
					ow->IncrementColumn();
				}
				else
				{
					data[0].prevXLocation = data[0].xLocation;
					data[0].prevYLocation = data[0].yLocation;
					data[0].xLocation--;
				}
			}
			Overworld* ow = (Overworld*)GameModeManager::GetScreen();
			ow->OnCompleteMove();
		}
		else
		{
			Vector2D delta = Vector2D();
			if (movementWord.movement.vertical)
			{
				if (movementWord.movement.positive)
				{
					delta.SetY(movementWord.movement.ppm);
				}
				else
				{
					delta.SetY(-1 * movementWord.movement.ppm);
				}
			}
			else
			{
				if (movementWord.movement.positive)
				{
					delta.SetX(movementWord.movement.ppm);
				}
				else
				{
					delta.SetX(-1 * movementWord.movement.ppm);
				}
			}
			Game::MoveCamera(delta);
		}
	}
	movementWord.movement.isBDown = 0;
}
