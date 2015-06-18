/*
 * BattleKeyPresses.c
 *
 *  Created on: 16 Jun 2015
 *      Author: Jamie
 */



void RunBattleScripts()
{
	if (battleData.flags.waitAttack)
	{
		RunCallbackSystem();
	}
	else if (battleData.flags.endBattle)
	{
		SetTilesForTextRender();
		MemoryDeallocate(battleData.battleAIData);
		MemoryDeallocate(battleData.trainerData);
		MemoryDeallocate(battleData.pokemonStats);
		MemoryDeallocate(battleDataPointer);
		battleDataPointer = 0;
		u32 i;
		u16* address = (u16*)0x0600FBC4;
		for (i = 0; i < 24; i++)
		{
			address[i] = 0;
			address[0x20 + i] = 0;
			address[0x40 + i] = 0;
			address[0x60 + i] = 0;
		}
		CallbackMain = &LoadOverworld;
	}
	else if (battleData.flags.waitAttack == 0 && (battleData.currentBattlerIndex < battleData.numBattlers))
	{
		battleData.loopCounter = 0;
		battleData.moveEffects[0] = 0;
		battleData.moveEffectsExtraInfo[0] = 0;
		battleData.moveEffects[1] = 0;
		battleData.moveEffectsExtraInfo[1] = 0;
		battleData.battleDamageMultiplier = 100;
		u32 index = battleData.moveSelections[battleData.battleOrder[battleData.currentBattlerIndex]];
		switch (index)
		{
			case Selections_Move1:
			case Selections_Move2:
			case Selections_Move3:
			case Selections_Move4:
			{
				battleData.battleBanks[User] = battleData.currentBattlerIndex;
				battleData.battleBanks[Target] = battleData.targets[battleData.currentBattlerIndex];
				{
					u16 moveID = battleData.moveIndex;
					MoveData* moveInfo = (MoveData*)&moveData[moveID];
					u32 effectID = moveInfo[0].effectID;
					if (effectID >= Effects_Max)
					{
						effectID = 0;
					}
					battleScriptPointer = moveScriptsTable[effectID];
					{
						u16 itemEffect1 = GetItemEffect(battleData.pokemonStats[battleData.battleBanks[User]].heldItem) - Item_Effect_Double_Cash_Gain;
						u16 itemEffect2 = GetItemEffect(battleData.pokemonStats[battleData.battleBanks[Target]].heldItem) - Item_Effect_Double_Cash_Gain;
						if (itemEffect1 > (Item_Effect_Inversion - Item_Effect_Double_Cash_Gain))
						{
							itemEffect1 = 0;
						}
						if (itemEffect2 > (Item_Effect_Inversion - Item_Effect_Double_Cash_Gain))
						{
							itemEffect2 = 0;
						}
						battleData.typeChartCallback = typeChartCallbackFunctions[itemEffect1][itemEffect2];
					}
				}
				break;
			}
			case Selections_AI_Fleeing:
			{
				battleScriptPointer = (u8*)&Script_AI_Flee;
				break;
			}
			case Selections_Flee:
			{
				if (battleType.info.isWildBattle || battleType.info.isLinkBattle)
				{
					battleScriptPointer = (u8*)&Script_Player_Flee;
				}
				else
				{
					battleScriptPointer = (u8*)&Script_Player_Call;
				}
				break;
			}
			case Selections_Item:
			{
				battleScriptPointer = (u8*)&Script_Item_Used;
				break;
			}
			case Selections_Switch:
			{
				battleScriptPointer = (u8*)&Script_Pokemon_Switched;
				break;
			}
		}
		//AddFunction(&RunBattleScript, 0);
		battleData.flags.waitAttack = 1;
		RunCallbackSystem();
	}
	else
	{
		battleData.battleBanks[User] = 0;
		battleData.currentBattlerIndex = 0;
		UpdateCounters();
		DrawMainSelectionMenu();
		CallbackMain = &BattleWaitForKeyPress;
		//HandleKeyPresses = &MainBattleSelectionKeyPresses;
	}
}

void RunAI(BattleAIData* battleAIData)
{
	u32 i;
	for (i = 0; i < (battleData.numBattlers >> 1); i++)
	{
		// This is how to store the final decision on what to do
		// Note that values 0-3 inclusive are moves
		// and the rest of the possible moves for the AI
		// are enumed as follows
		// enum BattleSelectionIndices { Selections_Move1, Selections_Move2, Selections_Move3, Selections_Move4, Selections_Roaming_Fleeing, Selections_Switch, Selections_Item, Selections_Flee };
		// The roaming flee is for AI and Flee is for players
		// as these require 2 completely separate handlers
		battleData.moveSelections[(i << 1) + 1] = 0;
		// this next line tells the rest of the battle system who the AI is choosing to target
		battleData.targets[(i << 1) + 1] = 0;//target here
	}
}

void BattleAISelections()
{
	RunAI((BattleAIData*)&battleData.battleAIData);
	battleData.combinedOrder = 0x03020100;
	battleData.currentBattlerIndex = 0;
	battleData.flags.waitAttack = 0;
	PrioritisePokemon();
	CallbackMain = &RunBattleScripts;
}

void MoveSelectionKeyPresses(void);

void ChooseTargetBattleKeyPress()
{
	if (IsKeyDownButNotHeld(Key_A))
	{
		u32 selectorIndex = battleData.selectorIndex + 2;
		if (selectorIndex == battleData.numBattlers)
		{
			HandleKeyPresses = &IgnoreKeyPresses;
			CallbackMain = &BattleAISelections;
		}
	}
	else if (IsKeyDownButNotHeld(Key_B))
	{
		HandleKeyPresses = &MoveSelectionKeyPresses;
	}
	else if (IsKeyDownButNotHeld(Key_Left) || IsKeyDownButNotHeld(Key_Right))
	{
		u32 newPos = battleData.targets[battleData.selectorIndex] ^ 2;
		if (newPos != battleData.selectorIndex)
		{
			battleData.targets[battleData.selectorIndex] = newPos;
		}
	}
	else if (IsKeyDownButNotHeld(Key_Down) || IsKeyDownButNotHeld(Key_Up))
	{
		u32 newPos = battleData.targets[battleData.selectorIndex] ^ 1;
		if (newPos != battleData.selectorIndex)
		{
			battleData.targets[battleData.selectorIndex] = newPos;
		}
	}
}

void MainBattleSelectionKeyPresses(void);

void MoveSelectionKeyPresses()
{
	u32 selectorIndex = battleData.selectorIndex;
	MoveData* moveInfo = (MoveData*)&moveData[battleData.pokemonStats[selectorIndex].moves[battleData.internalSelection[selectorIndex]]];
	if (IsKeyDownButNotHeld(Key_A))
	{
		if (moveInfo[0].targetsStruct.targetsSelf)
		{
			if (moveInfo[0].targetsStruct.hitsAllyInDouble)
			{
				battleData.targets[selectorIndex] = 8 | selectorIndex;
			}
			else
			{
				battleData.targets[selectorIndex] = selectorIndex;
			}
			battleData.moveSelections[selectorIndex] = battleData.internalSelection[selectorIndex];
			selectorIndex += 2;
		}
		else if (moveInfo[0].targetsStruct.hitsBothInDouble)
		{
			if (moveInfo[0].targetsStruct.hitsAllyInDouble)
			{
				battleData.targets[selectorIndex] = 12 | ((selectorIndex ^ 1) & 1);
			}
			else
			{
				battleData.targets[selectorIndex] = 4 | ((selectorIndex ^ 1) & 1);
			}
			battleData.moveSelections[selectorIndex] = battleData.internalSelection[selectorIndex];
			selectorIndex += 2;
		}
		else
		{
			if (battleType.info.isDoubleBattle)
			{
				battleData.targets[selectorIndex] = ((selectorIndex ^ 1) & 1);
				HandleKeyPresses = &ChooseTargetBattleKeyPress;
				battleData.moveSelections[selectorIndex] = battleData.internalSelection[selectorIndex >> 1];
			}
			else
			{
				battleData.targets[selectorIndex] = selectorIndex ^ 1;
				battleData.moveSelections[selectorIndex] = battleData.internalSelection[selectorIndex >> 1];
				selectorIndex += 2;
			}
		}
		battleData.selectorIndex = selectorIndex;
		if (selectorIndex == battleData.numBattlers)
		{
			HandleKeyPresses = &IgnoreKeyPresses;
			CallbackMain = &BattleAISelections;
		}
	}
	else if (IsKeyDownButNotHeld(Key_B))
	{
		HandleKeyPresses = &MainBattleSelectionKeyPresses;
		DrawMainSelectionMenu();
		// Return to original graphics
	}
	else if (IsKeyDownButNotHeld(Key_Left) || IsKeyDownButNotHeld(Key_Right))
	{
		u32 newPos = battleData.internalSelection[battleData.selectorIndex >> 1] ^ 1;
		if (battleData.pokemonStats[battleData.selectorIndex].moves[newPos])
		{
			memset32((void*)(0x0600C280 + ((battleData.internalSelection[battleData.selectorIndex >> 1] >> 1) * 0x40) + ((battleData.internalSelection[battleData.selectorIndex >> 1] & 1) * 0x1900)), WHITETEXTBG, 16);
			battleData.internalSelection[battleData.selectorIndex >> 1] = newPos;
			DrawCharacter(ARROWCHAR, (80 * (battleData.internalSelection[battleData.selectorIndex >> 1] & 1)) + 8, 0x10 * (battleData.internalSelection[battleData.selectorIndex >> 1] >> 1));
		}
	}
	else if (IsKeyDownButNotHeld(Key_Up) || IsKeyDownButNotHeld(Key_Down))
	{
		u32 newPos = battleData.internalSelection[battleData.selectorIndex >> 1] ^ 2;
		if (battleData.pokemonStats[battleData.selectorIndex].moves[newPos])
		{
			memset32((void*)(0x0600C280 + ((battleData.internalSelection[battleData.selectorIndex >> 1] >> 1) * 0x40) + ((battleData.internalSelection[battleData.selectorIndex >> 1] & 1) * 0x1900)), WHITETEXTBG, 16);
			battleData.internalSelection[battleData.selectorIndex >> 1] = newPos;
			DrawCharacter(ARROWCHAR, (80 * (battleData.internalSelection[battleData.selectorIndex >> 1] & 1)) + 8, 0x10 * (battleData.internalSelection[battleData.selectorIndex >> 1] >> 1));
		}
	}
}

void MainBattleSelectionKeyPresses()
{
	if (IsKeyDownButNotHeld(Key_A))
	{
		switch (battleData.mainSelection[battleData.selectorIndex >> 1])
		{
			case 0:
				MoveSelectionRender();
				HandleKeyPresses = &MoveSelectionKeyPresses;
				break;
			case 1:
				// Go To Bag
				HandleKeyPresses = &MoveSelectionKeyPresses;
				break;
			case 2:
				// Go To Pokemon Menu
				HandleKeyPresses = &MoveSelectionKeyPresses;
				break;
			case 3:
				battleData.moveSelections[battleData.selectorIndex] = Selections_Flee;
				if (battleType.info.isWildBattle || battleType.info.isLinkBattle)
				{
					HandleKeyPresses = &IgnoreKeyPresses;
					CallbackMain = &BattleAISelections;
				}
				else
				{
					u32 selectorIndex = battleData.selectorIndex;
					selectorIndex += 2;
					if (selectorIndex == battleData.numBattlers)
					{
						HandleKeyPresses = &IgnoreKeyPresses;
						CallbackMain = &BattleAISelections;
					}
					battleData.selectorIndex = selectorIndex;
				}
				break;
		}
	}
	else if (IsKeyDownButNotHeld(Key_Left) || IsKeyDownButNotHeld(Key_Right))
	{
		memset32((void*)(0x0600E300 + ((battleData.mainSelection[battleData.selectorIndex >> 1] >> 1) * 0x40) + ((battleData.mainSelection[battleData.selectorIndex >> 1] & 1) * 0xF00)), WHITETEXTBG, 16);
		battleData.mainSelection[battleData.selectorIndex >> 1] ^= 1;
		DrawCharacter(ARROWCHAR, (0x30 * (battleData.mainSelection[battleData.selectorIndex >> 1] & 1)) + 0x70, 0x10 * (battleData.mainSelection[battleData.selectorIndex >> 1] >> 1));
	}
	else if (IsKeyDownButNotHeld(Key_Up) || IsKeyDownButNotHeld(Key_Down))
	{
		memset32((void*)(0x0600E300 + ((battleData.mainSelection[battleData.selectorIndex >> 1] >> 1) * 0x40) + ((battleData.mainSelection[battleData.selectorIndex >> 1] & 1) * 0xF00)), WHITETEXTBG, 16);
		battleData.mainSelection[battleData.selectorIndex >> 1] ^= 2;
		DrawCharacter(ARROWCHAR, (0x30 * (battleData.mainSelection[battleData.selectorIndex >> 1] & 1)) + 0x70, 0x10 * (battleData.mainSelection[battleData.selectorIndex >> 1] >> 1));
	}
}
