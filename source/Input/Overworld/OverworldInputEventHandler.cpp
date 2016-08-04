/*
 * OverworldInputEventHandler.cpp
 *
 *  Created on: 9 Jun 2015
 *      Author: Jamie
 */

#include "Input/Overworld/OverworldInputEventHandler.h"
#include "Core/Game.h"
#include "Entities/NonPlayerCharacter.h"
#include "Core/Data/Flags.h"
#include "Scenes/Overworld/PrimaryOverworld.h"
#include "Scenes/SceneManager.h"
#include "Input/Menus/StartMenuInputEventHandler.h"
#include "Input/InputManager.h"
#include "SmartPointer.h"

using namespace Core;
using namespace Scenes;
using namespace Core::Data;
using namespace Scenes::Overworld;

namespace Input
{
	OverworldInputEventHandler::OverworldInputEventHandler()
	{
		// TODO Auto-generated constructor stub
		movementWord.allMovement = 0;
	}

	OverworldInputEventHandler::~OverworldInputEventHandler()
	{
		// TODO Auto-generated destructor stub
	}

	bool OverworldInputEventHandler::OnPressA()
	{
		if (!InputHandler::OnPressA() && !movementWord.movement.isMoving)
		{
			//SmartPointer<PrimaryOverworld> ow = SmartPointerFunctions::Cast<PrimaryOverworld>(SceneManager::GetScene());
			//ow->FacingClick();
		}
		return false;
	}

	bool OverworldInputEventHandler::OnPressB()
	{
		InputHandler::OnPressB();
		movementWord.movement.isBDown = 1;
		return false;
	}

	bool OverworldInputEventHandler::OnPressStart()
	{
		if (!InputHandler::OnPressStart() && !movementWord.movement.isMoving)
		{
			InputManager::SetEventHandler(new StartMenuInputEventHandler());
		}
		return false;
	}

	bool OverworldInputEventHandler::OnPressSelect()
	{
		if (!InputHandler::OnPressSelect() && !movementWord.movement.isMoving)
		{
			Game::ExecuteSelectMapped();
		}
		return false;
	}

	bool OverworldInputEventHandler::OnPressL()
	{
		if (!InputHandler::OnPressL() && !movementWord.movement.isMoving)
		{
			Game::ExecuteLMapped();
		}
		return false;
	}

	bool OverworldInputEventHandler::OnPressR()
	{
		if (!InputHandler::OnPressR() && !movementWord.movement.isMoving)
		{
			Game::ExecuteRMapped();
		}
		return false;
	}

	bool OverworldInputEventHandler::OnPressUp()
	{
		bool keyHeld = InputHandler::OnPressUp();
		if (!movementWord.movement.locked)
		{
			if (!movementWord.movement.isMoving)
			{
				NPCData* data = Game::GetNPCData();
				if (data[0].frameID != Facing_Up_Logical && !movementWord.movement.wasMoving)
				{
					if (!keyHeld)
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
					SmartPointer<PrimaryOverworld> ow = SmartPointerFunctions::Cast<Scene, PrimaryOverworld>(SceneManager::GetScene());
					if (ow->CalculateBlockMovementPermissions(data[0].xLocation, data[0].yLocation - 1) == 0xC)
					{
						if (!ow->IsNewLocationInBounds(data[0].xLocation, data[0].yLocation - 1))
						{
							const MapHeader &header = Game::GetCurrentMap();
							u32 side = ow->CalculateYConnectionLocation(header.connections, data[0].xLocation, data[0].yLocation - 1, header.footerLocation->height);
							if (side < 0xFF && side < header.connections->numberOfConnections)
							{
								const MapConnectionData &conn = header.connections->mainData[side];
								ConnectionStruct str = ConnectionStruct();
								str.isActive = 1;
								str.map = conn.map;
								str.mapBank = conn.mapBank;
								str.offset = conn.offset;
								str.direction = conn.type;
								ow->AddConnection(str);
							}
						}
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
					else if (ow->CalculateBlockAttributes(data[0].xLocation, data[0].yLocation - 1).behaviourByte == 0x69 || ow->CalculateBlockAttributes(data[0].xLocation, data[0].yLocation - 1).behaviourByte == 0x60)
					{
						if (Game::GetCurrentMap().eventsLocation)
						{
							const EventsHeader &events = *Game::GetCurrentMap().eventsLocation;
							for (int i = 0; i < events.numWarps; i++)
							{
								if (events.warpEvents[i].xPos == data[0].xLocation && events.warpEvents[i].yPos == data[0].yLocation - 1)
								{
									ow->DecrementRow();
									ow->DrawRowOfBlocks(data[0].xLocation - 7, data[0].yLocation - 6, ow->GetRow(), ow->GetColumn());
									data[0].dataPointer->ChangeFrame(Walking_Up_1 + data[0].previousWalkingFrame);
									data[0].frameID = Facing_Up_Logical;
									data[0].dataPointer->HFlip(false);
									movementWord.movement.isMoving = 1;
									movementWord.movement.vertical = 1;
									movementWord.movement.positive = 0;
									movementWord.movement.ppm = 1;
									movementWord.movement.movementCounter = 17;
									movementWord.movement.ignoreCounter = 17;
									ow->WarpOnCompleteMove(true, events.warpEvents[i]);
									break;
								}
							}
						}
					}
				}
			}
		}
		return false;
	}

	bool OverworldInputEventHandler::OnPressDown()
	{
		bool keyHeld = InputHandler::OnPressDown();
		if (!movementWord.movement.locked)
		{
			if (!movementWord.movement.isMoving)
			{
				NPCData* data = Game::GetNPCData();
				if (data[0].frameID != Facing_Down_Logical && !movementWord.movement.wasMoving)
				{
					if (!keyHeld)
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
					SmartPointer<PrimaryOverworld> ow = SmartPointerFunctions::Cast<Scene, PrimaryOverworld>(SceneManager::GetScene());
					if (ow->CalculateBlockMovementPermissions(data[0].xLocation, data[0].yLocation + 1) == 0xC)
					{
						if (!ow->IsNewLocationInBounds(data[0].xLocation, data[0].yLocation + 1))
						{
							const MapHeader &header = Game::GetCurrentMap();
							u32 side = ow->CalculateYConnectionLocation(header.connections, data[0].xLocation, data[0].yLocation + 1, header.footerLocation->height);
							if (side < 0xFF && side < header.connections->numberOfConnections)
							{
								const MapConnectionData &conn = header.connections->mainData[side];
								ConnectionStruct str = ConnectionStruct();
								str.isActive = 1;
								str.map = conn.map;
								str.mapBank = conn.mapBank;
								str.offset = conn.offset;
								str.direction = conn.type;
								ow->AddConnection(str);
							}
						}
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
					else if (ow->CalculateBlockAttributes(data[0].xLocation, data[0].yLocation).behaviourByte == 0x65)
					{
						if (Game::GetCurrentMap().eventsLocation)
						{
							const EventsHeader &events = *Game::GetCurrentMap().eventsLocation;
							for (int i = 0; i < events.numWarps; i++)
							{
								if (events.warpEvents[i].xPos == data[0].xLocation && events.warpEvents[i].yPos == data[0].yLocation)
								{
									ow->WarpOnCompleteMove(true, events.warpEvents[i]);
									ow->OnCompleteMove(0);
									break;
								}
							}
						}
					}
				}
			}
		}
		return false;
	}

	bool OverworldInputEventHandler::OnPressLeft()
	{
		bool keyHeld = InputHandler::OnPressLeft();
		if (!movementWord.movement.locked)
		{
			if (!movementWord.movement.isMoving)
			{
				NPCData* data = Game::GetNPCData();
				if (data[0].frameID != Facing_Left_Logical && !movementWord.movement.wasMoving)
				{
					if (!keyHeld)
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
					SmartPointer<PrimaryOverworld> ow = SmartPointerFunctions::Cast<Scene, PrimaryOverworld>(SceneManager::GetScene());
					if (ow->CalculateBlockMovementPermissions(data[0].xLocation - 1, data[0].yLocation) == 0xC)
					{
						if (!ow->IsNewLocationInBounds(data[0].xLocation - 1, data[0].yLocation))
						{
							const MapHeader &header = Game::GetCurrentMap();
							u32 side = ow->CalculateXConnectionLocation(header.connections, data[0].xLocation - 1, data[0].yLocation, header.footerLocation->width);
							if (side < 0xFF && side < header.connections->numberOfConnections)
							{
								const MapConnectionData &conn = header.connections->mainData[side];
								ConnectionStruct str = ConnectionStruct();
								str.isActive = 1;
								str.map = conn.map;
								str.mapBank = conn.mapBank;
								str.offset = conn.offset;
								str.direction = conn.type;
								ow->AddConnection(str);
							}
						}
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
		return false;
	}

	bool OverworldInputEventHandler::OnPressRight()
	{
		bool keyHeld = InputHandler::OnPressRight();
		if (!movementWord.movement.locked)
		{
			if (!movementWord.movement.isMoving)
			{
				NPCData* data = Game::GetNPCData();
				if (data[0].frameID != Facing_Right_Logical && !movementWord.movement.wasMoving)
				{
					if (!keyHeld)
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
					SmartPointer<PrimaryOverworld> ow = SmartPointerFunctions::Cast<Scene, PrimaryOverworld>(SceneManager::GetScene());
					if (ow->CalculateBlockMovementPermissions(data[0].xLocation + 1, data[0].yLocation) == 0xC)
					{
						if (!ow->IsNewLocationInBounds(data[0].xLocation + 1, data[0].yLocation))
						{
							const MapHeader &header = Game::GetCurrentMap();
							u32 side = ow->CalculateXConnectionLocation(header.connections, data[0].xLocation + 1, data[0].yLocation, header.footerLocation->width);
							if (side < 0xFF && side < header.connections->numberOfConnections)
							{
								const MapConnectionData &conn = header.connections->mainData[side];
								ConnectionStruct str = ConnectionStruct();
								str.isActive = 1;
								str.map = conn.map;
								str.mapBank = conn.mapBank;
								str.offset = conn.offset;
								str.direction = conn.type;
								ow->AddConnection(str);
							}
						}
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
		return false;
	}

	void OverworldInputEventHandler::Update()
	{
		InputHandler::Update();
		if (movementWord.movement.ignoreCounter)
		{
			movementWord.movement.ignoreCounter--;
			if (!movementWord.movement.ignoreCounter && !movementWord.movement.isMoving)
			{
				SmartPointer<PrimaryOverworld> ow = SmartPointerFunctions::Cast<Scene, PrimaryOverworld>(SceneManager::GetScene());
				ow->OnCompleteTurn();
			}
		}
		if (movementWord.movement.changeCounter)
		{
			movementWord.movement.changeCounter--;
			if (!movementWord.movement.changeCounter)
			{
				NPCData* data = Game::GetNPCData();
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
				SmartPointer<PrimaryOverworld> ow = SmartPointerFunctions::Cast<Scene, PrimaryOverworld>(SceneManager::GetScene());
				u32 direction = 0;
				movementWord.movement.isMoving = 0;
				movementWord.movement.wasMoving = 1;
				NPCData* data = Game::GetNPCData();
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
						ow->DrawRowOfBlocks(data[0].xLocation - 7, data[0].yLocation + 10, ow->GetRow(), ow->GetColumn());
						ow->IncrementRow();
					}
					else
					{
						data[0].prevXLocation = data[0].xLocation;
						data[0].prevYLocation = data[0].yLocation;
						data[0].yLocation--;
						direction = 1;
					}
				}
				else
				{
					if (movementWord.movement.positive)
					{
						data[0].prevXLocation = data[0].xLocation;
						data[0].prevYLocation = data[0].yLocation;
						data[0].xLocation++;
						ow->DrawColumnOfBlocks(data[0].xLocation + 8, data[0].yLocation - 5, ow->GetColumn(), ow->GetRow());
						ow->IncrementColumn();
						direction = 3;
					}
					else
					{
						data[0].prevXLocation = data[0].xLocation;
						data[0].prevYLocation = data[0].yLocation;
						data[0].xLocation--;
						direction = 2;
					}
				}
				ow->OnCompleteMove(direction);
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
}
