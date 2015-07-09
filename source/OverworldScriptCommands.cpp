/*
 * OverworldScriptCommands.cpp
 *
 *  Created on: 7 Jul 2015
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"
#include "ScriptRunner.h"
#include "LoadUnalignedCode.h"
#include "Variables.h"
#include "Flags.h"
#include "Game.h"
#include "Mapping.h"
#include "Pokemon.h"
#include "SoundEngine.h"
#include "GameModeManager.h"
#include "TrainerBattle.h"
#include "WildBattle.h"

u32 NoOperation(ScriptRunner* runner) // nop
{
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 ScriptSwitch(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 maximum = UnalignedNumberHandler::LoadUShortNumber(script, 3);
	u16 varValue = Variables::GetVar(UnalignedNumberHandler::LoadUShortNumber(script, 1));
	if (varValue >= maximum)
	{
		varValue = maximum - 1;
	}
	u8** table = (u8**)UnalignedNumberHandler::LoadUnalignedNumber(script, 5, 4);
	runner->IncrementScriptPointer(9);
	runner->Call(table[varValue]);
	return NotEnded;
}

u32 EndOverworldScript(ScriptRunner* runner)
{
	return Ended;
}

u32 ReturnOverworldScript(ScriptRunner* runner)
{
	runner->Return();
	return NotEnded;
}

u32 CallOverworldScript(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	runner->IncrementScriptPointer(5);
	runner->Call((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
	return NotEnded;
}

u32 GotoOverworldScript(ScriptRunner* runner)
{
	runner->SetScriptPointer((u8*)UnalignedNumberHandler::LoadUnalignedNumber(runner->GetScriptPointer(), 1, 4));
	return NotEnded;
}

u32 IfGoto(ScriptRunner* runner)
{
	u16 status = runner->GetStatus();
	u8* script = runner->GetScriptPointer();
	script++;
	switch (*script)
	{
		case 3:
			if (status < 2)
			{
				runner->SetScriptPointer((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
				return NotEnded;
			}
			break;
		case 4:
			if (status > 0)
			{
				runner->SetScriptPointer((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
				return NotEnded;
			}
			break;
		case 5:
			if (status != 1)
			{
				runner->SetScriptPointer((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
				return NotEnded;
			}
			break;
		default:
			if (*script == status)
			{
				runner->SetScriptPointer((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
				return NotEnded;
			}
			break;
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 IfCall(ScriptRunner* runner)
{
	u16 status = runner->GetStatus();
	u8* script = runner->GetScriptPointer();
	script++;
	switch (*script)
	{
		case 3:
			if (status < 2)
			{
				script++;
				runner->IncrementScriptPointer(6);
				runner->Call((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
				return NotEnded;
			}
			break;
		case 4:
			if (status > 0)
			{
				script++;
				runner->IncrementScriptPointer(6);
				runner->Call((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
				return NotEnded;
			}
			break;
		case 5:
			if (status != 1)
			{
				script++;
				runner->IncrementScriptPointer(6);
				runner->Call((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
				return NotEnded;
			}
			break;
		default:
			if (*script == status)
			{
				script++;
				runner->IncrementScriptPointer(6);
				runner->Call((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
				return NotEnded;
			}
			break;
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

#define NumStdScripts 1

TEXT_LOCATION ALIGN(4) u8* standardScripts[NumStdScripts] = { (u8*)0 };

u32 GotoStandardScript(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	if (*script < NumStdScripts)
	{
		runner->SetScriptPointer(standardScripts[*script]);
		return NotEnded;
	}
	runner->IncrementScriptPointer(2);
	return NotEnded;
}

u32 CallStandardScript(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	if (*script < NumStdScripts)
	{
		runner->IncrementScriptPointer(2);
		runner->Call(standardScripts[*script]);
		return NotEnded;
	}
	runner->IncrementScriptPointer(2);
	return NotEnded;
}

u32 IfGotoStandard(ScriptRunner* runner)
{
	u16 status = runner->GetStatus();
	u8* script = runner->GetScriptPointer();
	script++;
	switch (*script)
	{
		case 3:
			if (status < 2)
			{
				script++;
				runner->SetScriptPointer(standardScripts[*script]);
				return NotEnded;
			}
			break;
		case 4:
			if (status > 0)
			{
				script++;
				runner->SetScriptPointer(standardScripts[*script]);
				return NotEnded;
			}
			break;
		case 5:
			if (status != 1)
			{
				script++;
				runner->SetScriptPointer(standardScripts[*script]);
				return NotEnded;
			}
			break;
		default:
			if (*script == status)
			{
				script++;
				runner->SetScriptPointer(standardScripts[*script]);
				return NotEnded;
			}
			break;
	}
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 IfCallStandard(ScriptRunner* runner)
{
	u16 status = runner->GetStatus();
	u8* script = runner->GetScriptPointer();
	script++;
	switch (*script)
	{
		case 3:
			if (status < 2)
			{
				script++;
				runner->IncrementScriptPointer(3);
				runner->Call(standardScripts[*script]);
				return NotEnded;
			}
			break;
		case 4:
			if (status > 0)
			{
				script++;
				runner->IncrementScriptPointer(3);
				runner->Call(standardScripts[*script]);
				return NotEnded;
			}
			break;
		case 5:
			if (status != 1)
			{
				script++;
				runner->IncrementScriptPointer(3);
				runner->Call(standardScripts[*script]);
				return NotEnded;
			}
			break;
		default:
			if (*script == status)
			{
				script++;
				runner->IncrementScriptPointer(3);
				runner->Call(standardScripts[*script]);
				return NotEnded;
			}
			break;
	}
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 SetBankValue(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	runner->SetBank(*script, UnalignedNumberHandler::LoadUnalignedNumber((u8*)script, 1, 4));
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 SetByte2(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	runner->SetBank(*script, *(script + 1));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 WriteByteToOffset(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u8* location = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	*location = *script;
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 LoadByteFromPointer(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	runner->SetBank(*script, *((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4)));
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 SetFarByte(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u8* location = (u32*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	*location = runner->GetBank(*script);
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 CopyScriptBank(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	runner->SetBank(*script, runner->GetBank(*(script + 1)));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CopyByte(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u8* source = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 5, 4);
	u8* location = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	*location = *source;
	runner->IncrementScriptPointer(9);
	return NotEnded;
}

u32 SetVar(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, UnalignedNumberHandler::LoadUShortNumber(script, 3));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 AddVar(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, Variables::GetVar(varID) + UnalignedNumberHandler::LoadUShortNumber(script, 3));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 AddVarToVar(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, Variables::GetVar(varID) + Variables::GetVar(UnalignedNumberHandler::LoadUShortNumber(script, 3)));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 SubVar(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, Variables::GetVar(varID) - UnalignedNumberHandler::LoadUShortNumber(script, 3));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 SubVarFromVar(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, Variables::GetVar(varID) - Variables::GetVar(UnalignedNumberHandler::LoadUShortNumber(script, 3)));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CopyVar(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, Variables::GetVar(UnalignedNumberHandler::LoadUShortNumber(script, 3)));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CopyVarIfValid(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	u16 varID2 = UnalignedNumberHandler::LoadUShortNumber(script, 3);
	if (Variables::ValidateVarID(varID2) || Variables::IsTemporaryVar(varID2))
	{
		Variables::SetVar(varID, Variables::GetVar(varID2));
	}
	else
	{
		Variables::SetVar(varID, varID2);
	}
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CompareBanks(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u8 value1 = (u8)runner->GetBank(*script);
	script++;
	u8 value2 = (u8)runner->GetBank(*script);
	if (value1 < value2)
	{
		runner->SetStatus(0);
	}
	else if (value1 > value2)
	{
		runner->SetStatus(2);
	}
	else
	{
		runner->SetStatus(1);
	}
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CompareBankToByte(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u8 value1 = (u8)runner->GetBank(*script);
	script++;
	u8 value2 = *script;
	if (value1 < value2)
	{
		runner->SetStatus(0);
	}
	else if (value1 > value2)
	{
		runner->SetStatus(2);
	}
	else
	{
		runner->SetStatus(1);
	}
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CompareBankToFarByte(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u8 value1 = (u8)runner->GetBank(*script);
	script++;
	u8 value2 = *(u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 0, 4);
	if (value1 < value2)
	{
		runner->SetStatus(0);
	}
	else if (value1 > value2)
	{
		runner->SetStatus(2);
	}
	else
	{
		runner->SetStatus(1);
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 CompareFarByteToBank(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u8 value1 = *(u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 0, 4);
	script += 4;
	u8 value2 = (u8)runner->GetBank(*script);
	if (value1 < value2)
	{
		runner->SetStatus(0);
	}
	else if (value1 > value2)
	{
		runner->SetStatus(2);
	}
	else
	{
		runner->SetStatus(1);
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 CompareFarByteToByte(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u8 value1 = *(u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 0, 4);
	script += 4;
	u8 value2 = *script;
	if (value1 < value2)
	{
		runner->SetStatus(0);
	}
	else if (value1 > value2)
	{
		runner->SetStatus(2);
	}
	else
	{
		runner->SetStatus(1);
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 CompareFarByteToFarByte(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u8 value1 = *(u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 0, 4);
	script += 4;
	u8 value2 = *(u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 0, 4);
	if (value1 < value2)
	{
		runner->SetStatus(0);
	}
	else if (value1 > value2)
	{
		runner->SetStatus(2);
	}
	else
	{
		runner->SetStatus(1);
	}
	runner->IncrementScriptPointer(10);
	return NotEnded;
}

u32 CompareVarToValue(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u16 value1 = Variables::GetVar(UnalignedNumberHandler::LoadUShortNumber(script, 0));
	script += 2;
	u16 value2 = UnalignedNumberHandler::LoadUShortNumber(script, 0);
	if (value1 < value2)
	{
		runner->SetStatus(0);
	}
	else if (value1 > value2)
	{
		runner->SetStatus(2);
	}
	else
	{
		runner->SetStatus(1);
	}
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CompareVarToVar(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u16 value1 = Variables::GetVar(UnalignedNumberHandler::LoadUShortNumber(script, 0));
	script += 2;
	u16 value2 = Variables::GetVar(UnalignedNumberHandler::LoadUShortNumber(script, 0));
	if (value1 < value2)
	{
		runner->SetStatus(0);
	}
	else if (value1 > value2)
	{
		runner->SetStatus(2);
	}
	else
	{
		runner->SetStatus(1);
	}
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CallASM(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	VoidFunctionPointerVoid function = (VoidFunctionPointerVoid)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	function();
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

typedef u16 (*SpecialFunctionPointer)(ScriptRunner*);

TEXT_LOCATION ALIGN(4) SpecialFunctionPointer specials[] = { };

u32 Special(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	SpecialFunctionPointer ptr = specials[UnalignedNumberHandler::LoadUShortNumber(script, 0)];
	ptr(runner);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 SpecialWithReturn(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	SpecialFunctionPointer ptr = specials[UnalignedNumberHandler::LoadUShortNumber(script, 2)];
	Variables::SetVar(UnalignedNumberHandler::LoadUShortNumber(script, 0), ptr(runner));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 WaitState(ScriptRunner* runner)
{
	if (runner->GetWaitFrames())
	{
		return WaitForFrames;
	}
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 Pause(ScriptRunner* runner)
{
	u16 frames = runner->GetWaitFrames();
	if (frames)
	{
		frames--;
		runner->SetWaitFrames(frames);
		if (frames)
		{
			return WaitForFrames;
		}
		runner->IncrementScriptPointer(3);
		return NotEnded;
	}
	else
	{
		runner->SetWaitFrames(UnalignedNumberHandler::LoadUShortNumber(runner->GetScriptPointer(), 1));
		return WaitForFrames;
	}
}

u32 SetFlag(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	Flags::SetFlag(flagID);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 ClearFlag(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	Flags::ClearFlag(flagID);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CheckFlag(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	runner->SetStatus(Flags::CheckFlag(flagID));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 ResetVars(ScriptRunner* runner)
{
	Variables::SetVar(0x8000, 0);
	Variables::SetVar(0x8001, 0);
	Variables::SetVar(0x8002, 0);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 PlaySound(ScriptRunner* runner)
{
	SoundEngine::PlaySFX(UnalignedNumberHandler::LoadUShortNumber(runner->GetScriptPointer(), 1));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CheckSound(ScriptRunner* runner)
{
	if (SoundEngine::SFXPlaying())
	{
		return WaitForFrames;
	}
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 PlayFanfare(ScriptRunner* runner)
{
	SoundEngine::PlayFanfare(UnalignedNumberHandler::LoadUShortNumber(runner->GetScriptPointer(), 1));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CheckFanfare(ScriptRunner* runner)
{
	if (SoundEngine::FanfarePlaying())
	{
		return WaitForFrames;
	}
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 PlaySong(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	SoundEngine::PlaySong(UnalignedNumberHandler::LoadUShortNumber(script, 1), *(script + 3));
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 PlaySong2(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	SoundEngine::PlaySong(UnalignedNumberHandler::LoadUShortNumber(script, 1), 0);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 FadeDefault(ScriptRunner* runner)
{
	SoundEngine::PlaySong(Game::GetCurrentMap().musicTrack, 1);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 FadeSong(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	SoundEngine::PlaySong(UnalignedNumberHandler::LoadUShortNumber(script, 1), 1);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 FadeOut(ScriptRunner* runner)
{
	SoundEngine::FadeSongToSilence();
	runner->IncrementScriptPointer(2);
	return NotEnded;
}

u32 FadeIn(ScriptRunner* runner)
{
	SoundEngine::PlaySong(Game::GetCurrentMap().musicTrack, 2);
	runner->IncrementScriptPointer(2);
	return NotEnded;
}

u32 GetPlayerPos(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	const Vector2D pos = Game::GetPlayerPos();
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		Variables::SetVar(flagID, pos.GetX());
	}
	flagID = UnalignedNumberHandler::LoadUShortNumber(script, 3);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		Variables::SetVar(flagID, pos.GetY());
	}
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CountPokemon(ScriptRunner* runner)
{
	Variables::SetVar(LASTRESULT, Game::CountPartyPokemon());
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 CountBoxPokemon(ScriptRunner* runner)
{
	Variables::SetVar(LASTRESULT, Game::CountAllBoxPokemon());
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 AddItem(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	u16 flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 3);
	if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
	{
		flagID2 = Variables::GetVar(flagID2);
	}
	Variables::SetVar(LASTRESULT, Game::AddItemsToBag(flagID, flagID2));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 RemoveItem(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	u16 flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 3);
	if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
	{
		flagID2 = Variables::GetVar(flagID2);
	}
	Variables::SetVar(LASTRESULT, Game::RemoveItemsFromBag(flagID, flagID2));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CheckItemRoom(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	u16 flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 3);
	if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
	{
		flagID2 = Variables::GetVar(flagID2);
	}
	Variables::SetVar(LASTRESULT, Game::AddItemsToBag(flagID, flagID2, false));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CheckItem(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	u16 flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 3);
	if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
	{
		flagID2 = Variables::GetVar(flagID2);
	}
	Variables::SetVar(LASTRESULT, Game::FindItemsInBag(flagID, flagID2));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CheckItemType(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	Variables::SetVar(LASTRESULT, Items::GetItemCategory(flagID));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 AddItemToPC(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	u16 flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 3);
	if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
	{
		flagID2 = Variables::GetVar(flagID2);
	}
	Variables::SetVar(LASTRESULT, Game::AddItemsToPC(flagID, flagID2));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CheckItemPC(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	u16 flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 3);
	if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
	{
		flagID2 = Variables::GetVar(flagID2);
	}
	Variables::SetVar(LASTRESULT, Game::FindItemsInPC(flagID, flagID2));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 SetupTrainerBattle(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 trainerID = UnalignedNumberHandler::LoadUShortNumber(script, 2);
	u32 value = *(script + 1);
	bool battle = !Flags::CheckTrainerflag(trainerID);
	switch (value)
	{
		case 1:
		case 2:
			if (battle)
			{

			}
			else
			{
				runner->IncrementScriptPointer(18);
			}
			break;
		case 3:
			if (battle)
			{

			}
			else
			{
				runner->IncrementScriptPointer(10);
			}
			break;
		case 9:
			if (battle)
			{

			}
			else
			{
				runner->IncrementScriptPointer(14);
			}
		default:
			if (battle)
			{

			}
			else
			{
				runner->IncrementScriptPointer(14);
			}
			break;
	}
	return Ended;
}

u32 SetTrainerflag(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	Flags::SetTrainerflag(flagID);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 ClearTrainerflag(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	Flags::ClearTrainerflag(flagID);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CheckTrainerflag(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	runner->SetStatus(Flags::CheckTrainerflag(flagID));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 GivePokemon(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	if (flagID >= NumberOfPokemon)
	{
		flagID = 1;
	}
	Pokemon::GivePokemonToPlayer(*(script + 3), flagID, UnalignedNumberHandler::LoadUShortNumber(script, 4), *(script + 6));
	runner->IncrementScriptPointer(15);
	return NotEnded;
}

u32 Random(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	if (flagID == 0)
	{
		Variables::SetVar(LASTRESULT, Maths::GetDelimitedRandom32BitValue(0x10000));
	}
	else
	{
		Variables::SetVar(LASTRESULT, Maths::GetDelimitedRandom16BitValue(flagID));
	}
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 SetHealingPlace(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	Game::SetHealingPlace(Overworld::GetHealingPlaceByID(flagID));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CheckGender(ScriptRunner* runner)
{
	Variables::SetVar(LASTRESULT, Game::GetPlayer().gender == Gender_Female);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 SetWorldMapflag(ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	Flags::SetWorldMapFlag(flagID);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}
