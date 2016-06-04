/*
 * OverworldScriptCommands.cpp
 *
 *  Created on: 7 Jul 2015
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"
#include "Tasks.h"
#include "Scenes.h"
#include "Input.h"
#include "Core.h"
#include "Audio.h"
#include "Text.h"
#include "LibraryHeaders/liboverworldscripts.h"
#include "Callbacks/NotifyTextEndCallback.h"

using namespace Text;
using namespace Core;
using namespace Core::Data;
using namespace Audio;
using namespace Scenes;
using namespace Input;
using namespace Scenes::Battles;
using namespace Scenes::Overworld;

u32 NoOperation(Tasks::ScriptRunners::ScriptRunner* runner) // nop
{
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 ScriptSwitch(Tasks::ScriptRunners::ScriptRunner* runner)
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
	if (((u32)table & 3) == 0)
	{
		runner->Call(table[varValue]);
	}
	else
	{
		runner->Call((u8*)UnalignedNumberHandler::LoadUnalignedNumber((u8*)table, varValue * 4, 4));
	}
	return NotEnded;
}

u32 EndOverworldScript(Tasks::ScriptRunners::ScriptRunner* runner)
{
	return Ended;
}

u32 ReturnOverworldScript(Tasks::ScriptRunners::ScriptRunner* runner)
{
	runner->Return();
	return NotEnded;
}

u32 CallOverworldScript(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	runner->IncrementScriptPointer(5);
	runner->Call((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
	return NotEnded;
}

u32 GotoOverworldScript(Tasks::ScriptRunners::ScriptRunner* runner)
{
	runner->SetScriptPointer((u8*)UnalignedNumberHandler::LoadUnalignedNumber(runner->GetScriptPointer(), 1, 4));
	return NotEnded;
}

u32 IfGoto(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 IfCall(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u16 status = runner->GetStatus();
	u8* script = runner->GetScriptPointer();
	script++;
	bool callNeeded = false;
	switch (*script)
	{
		case 3:
			if (status < 2)
			{
				callNeeded = true;
			}
			break;
		case 4:
			if (status > 0)
			{
				callNeeded = true;
			}
			break;
		case 5:
			if (status != 1)
			{
				callNeeded = true;
			}
			break;
		default:
			if (*script == status)
			{
				callNeeded = true;
			}
			break;
	}
	runner->IncrementScriptPointer(6);
	if (callNeeded)
	{
		runner->Call((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4));
	}
	return NotEnded;
}

#define NumStdScripts 11

TEXT_LOCATION ALIGN(4) u8* standardScripts[NumStdScripts] = {
		(u8*)StandardScriptZero,
		(u8*)StandardScriptOne,
		(u8*)StandardScriptTwo,
		(u8*)StandardScriptThree,
		(u8*)StandardScriptFour,
		(u8*)StandardScriptFive,
		(u8*)StandardScriptSix,
		(u8*)StandardScriptSeven,
		(u8*)StandardScriptEight,
		(u8*)StandardScriptNine,
		(u8*)StandardScriptTen
};

u32 GotoStandardScript(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CallStandardScript(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 IfGotoStandard(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 IfCallStandard(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 SetBankValue(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	runner->SetBank(*script, UnalignedNumberHandler::LoadUnalignedNumber((u8*)script, 1, 4));
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 SetByte2(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	runner->SetBank(*script, *(script + 1));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 WriteByteToOffset(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u8* location = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	*location = *script;
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 LoadByteFromPointer(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	runner->SetBank(*script, *((u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4)));
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 SetFarByte(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	u8* location = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	*location = runner->GetBank(*script);
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 CopyScriptBank(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	runner->SetBank(*script, runner->GetBank(*(script + 1)));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CopyByte(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u8* source = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 5, 4);
	u8* location = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	*location = *source;
	runner->IncrementScriptPointer(9);
	return NotEnded;
}

u32 SetVar(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, UnalignedNumberHandler::LoadUShortNumber(script, 3));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 AddVar(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, Variables::GetVar(varID) + UnalignedNumberHandler::LoadUShortNumber(script, 3));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 AddVarToVar(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, Variables::GetVar(varID) + Variables::GetVar(UnalignedNumberHandler::LoadUShortNumber(script, 3)));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 SubVar(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, Variables::GetVar(varID) - UnalignedNumberHandler::LoadUShortNumber(script, 3));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 SubVarFromVar(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, Variables::GetVar(varID) - Variables::GetVar(UnalignedNumberHandler::LoadUShortNumber(script, 3)));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CopyVar(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 varID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	Variables::SetVar(varID, Variables::GetVar(UnalignedNumberHandler::LoadUShortNumber(script, 3)));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CopyVarIfValid(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CompareBanks(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CompareBankToByte(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CompareBankToFarByte(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CompareFarByteToBank(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CompareFarByteToByte(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CompareFarByteToFarByte(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CompareVarToValue(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CompareVarToVar(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CallASM(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	VoidFunctionPointerVoid function = (VoidFunctionPointerVoid)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	function();
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CallASM2(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	U32FunctionPointerVoid function = (U32FunctionPointerVoid)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	if (function())
	{
		runner->IncrementScriptPointer(5);
		return NotEnded;
	}
	return WaitForFrames;
}

typedef u16 (*SpecialFunctionPointer)(Tasks::ScriptRunners::ScriptRunner*);

TEXT_LOCATION ALIGN(4) SpecialFunctionPointer specials[] = {
		(SpecialFunctionPointer)&Special0HealParty,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&EmptySpecial,
		(SpecialFunctionPointer)&Special38PlayTrainerMusic
};

u32 Special(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	SpecialFunctionPointer ptr = specials[UnalignedNumberHandler::LoadUShortNumber(script, 0)];
	ptr(runner);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 SpecialWithReturn(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	script++;
	SpecialFunctionPointer ptr = specials[UnalignedNumberHandler::LoadUShortNumber(script, 2)];
	Variables::SetVar(UnalignedNumberHandler::LoadUShortNumber(script, 0), ptr(runner));
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 WaitState(Tasks::ScriptRunners::ScriptRunner* runner)
{
	if (runner->GetWaitFrames())
	{
		return WaitForFrames;
	}
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 PauseOWScript(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 SetFlag(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 ClearFlag(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CheckFlag(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 ResetVars(Tasks::ScriptRunners::ScriptRunner* runner)
{
	Variables::SetVar(0x8000, 0);
	Variables::SetVar(0x8001, 0);
	Variables::SetVar(0x8002, 0);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 PlaySound(Tasks::ScriptRunners::ScriptRunner* runner)
{
	SoundEngine::PlaySFX(UnalignedNumberHandler::LoadUShortNumber(runner->GetScriptPointer(), 1));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CheckSound(Tasks::ScriptRunners::ScriptRunner* runner)
{
	if (SoundEngine::SFXPlaying())
	{
		return WaitForFrames;
	}
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 PlayFanfare(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(runner->GetScriptPointer(), 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	SoundEngine::PlayFanfare(flagID);
	runner->IncrementScriptPointer(3);
	return WaitForFrames;
}

u32 CheckFanfare(Tasks::ScriptRunners::ScriptRunner* runner)
{
	if (SoundEngine::FanfarePlaying())
	{
		return WaitForFrames;
	}
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 PlaySong(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	SoundEngine::PlaySong(UnalignedNumberHandler::LoadUShortNumber(script, 1), *(script + 3));
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 PlaySong2(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	SoundEngine::PlaySong(UnalignedNumberHandler::LoadUShortNumber(script, 1), 0);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 FadeDefault(Tasks::ScriptRunners::ScriptRunner* runner)
{
	SoundEngine::PlaySong(Game::GetCurrentMap().musicTrack, 1);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 FadeSong(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	SoundEngine::PlaySong(UnalignedNumberHandler::LoadUShortNumber(script, 1), 1);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 FadeOut(Tasks::ScriptRunners::ScriptRunner* runner)
{
	SoundEngine::FadeSongToSilence();
	runner->IncrementScriptPointer(2);
	return NotEnded;
}

u32 FadeInOWScriptVersion(Tasks::ScriptRunners::ScriptRunner* runner)
{
	SoundEngine::PlaySong(Game::GetCurrentMap().musicTrack, 2);
	runner->IncrementScriptPointer(2);
	return NotEnded;
}

u32 GetPlayerPos(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CountPokemon(Tasks::ScriptRunners::ScriptRunner* runner)
{
	Variables::SetVar(LASTRESULT, Game::CountPartyPokemon());
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 CountBoxPokemon(Tasks::ScriptRunners::ScriptRunner* runner)
{
	Variables::SetVar(LASTRESULT, Game::CountAllBoxPokemon());
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 AddItem(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 RemoveItem(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CheckItemRoom(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CheckItem(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CheckItemType(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 AddItemToPC(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CheckItemPC(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 SetupTrainerBattle(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 trainerID = UnalignedNumberHandler::LoadUShortNumber(script, 2);
	trainerID |= UnalignedNumberHandler::LoadUShortNumber(script, 4) << 0x10;
	char* beforeText = (char*)UnalignedNumberHandler::LoadUnalignedNumber(script, 6, 4);
	char* defeatText = NULL;
	u8* afterScript = NULL;
	u32 value = *(script + 1);
	bool battle = !Flags::CheckTrainerflag(trainerID);
	switch (value)
	{
		case 1:
			if (battle)
			{
				defeatText = (char*)UnalignedNumberHandler::LoadUnalignedNumber(script, 10, 4);
				afterScript = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 14, 4);
				runner->SetScriptPointer((u8*)&InitialiseTrainerBattleNoEncounter);
			}
			else
			{
				runner->IncrementScriptPointer(18);
			}
			break;
		case 2:
			if (battle)
			{
				defeatText = (char*)UnalignedNumberHandler::LoadUnalignedNumber(script, 10, 4);
				afterScript = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(script, 14, 4);
				runner->SetScriptPointer((u8*)&InitialiseTrainerBattle);
			}
			else
			{
				runner->IncrementScriptPointer(18);
			}
			break;
		case 3:
			if (!battle)
			{
				runner->IncrementScriptPointer(10);
			}
			else
			{
				runner->SetScriptPointer((u8*)&InitialiseTrainerBattle);
			}
			break;
		case 9:
			if (battle)
			{
				defeatText = (char*)UnalignedNumberHandler::LoadUnalignedNumber(script, 10, 4);
				runner->SetScriptPointer((u8*)&InitialiseTrainerBattleNoEncounter);
			}
			else
			{
				runner->IncrementScriptPointer(14);
			}
		default:
			if (battle)
			{
				defeatText = (char*)UnalignedNumberHandler::LoadUnalignedNumber(script, 10, 4);
				runner->SetScriptPointer((u8*)&InitialiseTrainerBattle);
			}
			else
			{
				runner->IncrementScriptPointer(14);
			}
			break;
	}
	if (battle)
	{
		runner->SetBank(0, trainerID);
		runner->SetBank(1, (u32)beforeText);
		runner->SetBank(2, (u32)defeatText);
		runner->SetBank(3, (u32)afterScript);
	}
	return NotEnded;
}

u32 DoTrainerBattle(Tasks::ScriptRunners::ScriptRunner* runner)
{
	BattleTypeStruct bts = BattleTypeStruct();
	bts.basicInfo = 0;
	bts.info.isTrainerBattle = 1;
	SceneManager::SetScene(new SingleTrainerBattle(bts, runner->GetBank(0), (const char*)runner->GetBank(2), (const u8*)runner->GetBank(3)));
	runner->SetWaitFrames(1);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 DoDoubleTrainerBattle(Tasks::ScriptRunners::ScriptRunner* runner)
{
	BattleTypeStruct bts = BattleTypeStruct();
	bts.basicInfo = 0;
	bts.info.isTrainerBattle = 1;
	bts.info.isDoubleBattle = 1;
	//SceneManager::SetScene(new DoubleTrainerBattle(bts, runner->GetBank(0), (const char*)runner->GetBank(2), (const u8*)runner->GetBank(3)));
	runner->SetWaitFrames(1);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 SetTrainerflag(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 ClearTrainerflag(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 CheckTrainerflag(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 WaitMessage(Tasks::ScriptRunners::ScriptRunner* runner)
{
	if (runner->Text())
	{
		return WaitForFrames;
	}
	runner->Text(false);
	runner->TextWait(false);
	runner->KeyPressReceived(false);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 PrepareMessage(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 value = UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	if (value < 4)
	{
		value = runner->GetBank(value);
	}
	runner->SetWaitFrames(1);
	InputManager::SetEventHandler(new TextInputHandler(new TextDrawer((char*)value, 0, 0, 2 - Game::GetConstOptions().textSpeed, new Callbacks::NotifyTextEndCallback(runner))));
	runner->Text(true);
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CloseMessageOnKeyPress(Tasks::ScriptRunners::ScriptRunner* runner)
{
	if (runner->Text() || (runner->TextWait() && !runner->KeyPressReceived()))
	{
		return WaitForFrames;
	}
	runner->Text(false);
	runner->TextWait(false);
	runner->KeyPressReceived(false);
	runner->IncrementScriptPointer(1);
	InputManager::SetEventHandler(new DoNothingInputEventHandler());
	return NotEnded;
}

u32 WaitKeyPress(Tasks::ScriptRunners::ScriptRunner* runner)
{
	if (!runner->EventHandlerSet())
	{
		InputManager::SetEventHandler(new ScriptWaitKeyPressEventHandler(runner));
	}
	if (!runner->KeyPressReceived())
	{
		return WaitForFrames;
	}
	runner->KeyPressReceived(false);
	runner->IncrementScriptPointer(1);
	InputManager::SetEventHandler(new DoNothingInputEventHandler());
	runner->EventHandlerSet(false);
	return NotEnded;
}

u32 GivePokemon(Tasks::ScriptRunners::ScriptRunner* runner)
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
	Pokemon::Pokemon::GivePokemonToPlayer(flagID, *(script + 3), UnalignedNumberHandler::LoadUShortNumber(script, 4), *(script + 6));
	runner->IncrementScriptPointer(15);
	return NotEnded;
}

u32 GiveEgg(Tasks::ScriptRunners::ScriptRunner* runner)
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
	Pokemon::Pokemon::GiveEggToPlayer(flagID);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 SetPokemonPP(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 3);
	{
		flagID = Variables::GetVar(flagID);
	}
	Pokemon::Pokemon &p = *Game::GetPartyPokemon(*(script + 1));
	const PPBonusStruct &ppBonuses = p.GetPPBonuses();
	u32 maxPP = 0;
	switch (*(script + 2))
	{
		case 1:
			maxPP = ppBonuses.move2PPBonus;
			break;
		case 2:
			maxPP = ppBonuses.move3PPBonus;
			break;
		case 3:
			maxPP = ppBonuses.move4PPBonus;
			break;
		default:
			maxPP = ppBonuses.move1PPBonus;
			break;
	}
	const MoveData &moveData = *Moves::GetMoveDataByIndex(p.Decrypt(Move1 + *(script + 2)));
	maxPP = Maths::UnsignedFractionalMultiplication(moveData.basePP, maxPP * 20 + 100);
	if (flagID <= maxPP)
	{
		p.Encrypt(Move1PP + *(script + 2), flagID);
	}
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 CheckAttack(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 attackID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	bool found = false;
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	if (attackID)
	{
		for (u32 i = 0; i < PartyLength; i++)
		{
			const Pokemon::Pokemon &p = *Game::GetPartyPokemon(i);
			if (p.HasMove(attackID))
			{
				Variables::SetVar(LASTRESULT, i);
				found = true;
				break;
			}
		}
	}
	if (!found)
	{
		Variables::SetVar(LASTRESULT, 6);
	}
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 BufferSpecies(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 attackID = UnalignedNumberHandler::LoadUShortNumber(script, 2);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	if (attackID >= NumberOfPokemon)
	{
		attackID = 1;
	}
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferPokemonSpeciesName(attackID, buffer);
	}
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 BufferFirstPokemon(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferPokemonNameFromPointer(Game::GetPartyPokemon(0), buffer);
	}
	runner->IncrementScriptPointer(2);
	return NotEnded;
}

u32 BufferPartyPokemon(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 attackID = UnalignedNumberHandler::LoadUShortNumber(script, 2);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	if (attackID >= PartyLength)
	{
		attackID = 0;
	}
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferPokemonNameFromPointer(Game::GetPartyPokemon(attackID), buffer);
	}
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 BufferItem(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 attackID = UnalignedNumberHandler::LoadUShortNumber(script, 2);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	if (attackID >= NumberOfItems)
	{
		attackID = 1;
	}
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferItemName(attackID, buffer);
	}
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 BufferPluralItem(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 attackID = UnalignedNumberHandler::LoadUShortNumber(script, 2);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	if (attackID >= NumberOfItems)
	{
		attackID = 1;
	}
	u16 amount = UnalignedNumberHandler::LoadUShortNumber(script, 4);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		amount = Variables::GetVar(attackID);
	}
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		if (amount > 1)
		{
			TextFunctions::BufferPluralItemName(attackID, buffer);
		}
		else
		{
			TextFunctions::BufferItemName(attackID, buffer);
		}
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 BufferMoveName(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 attackID = UnalignedNumberHandler::LoadUShortNumber(script, 2);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	if (attackID >= NumberOfMoves)
	{
		attackID = 1;
	}
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferMoveName(attackID, buffer);
	}
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 BufferNumber(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 attackID = UnalignedNumberHandler::LoadUShortNumber(script, 2);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferNumber(attackID, 5, buffer);
	}
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 BufferStandard(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 attackID = UnalignedNumberHandler::LoadUShortNumber(script, 2);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferStandardString(attackID, buffer);
	}
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 BufferString(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	char* attackID = (char*)UnalignedNumberHandler::LoadUnalignedNumber(script, 2, 4);
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferString(attackID, buffer, BUFFERLENGTH);
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 Random(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 GiveMoney(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 flagID = UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	if (*(script + 5))
	{
		Variables::SetVar(LASTRESULT, Game::GivePlayerMoney(flagID));
	}
	else
	{
		Variables::SetVar(LASTRESULT, Game::RemovePlayerMoney(flagID));
	}
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 PayMoney(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 flagID = UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	if (*(script + 5))
	{
		Variables::SetVar(LASTRESULT, Game::RemovePlayerMoney(flagID));
	}
	else
	{
		Variables::SetVar(LASTRESULT, Game::GivePlayerMoney(flagID));
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 GiveMoneyMum(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 flagID = UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	if (*(script + 5))
	{
		Variables::SetVar(LASTRESULT, Game::GivePlayerMumMoney(flagID));
	}
	else
	{
		Variables::SetVar(LASTRESULT, Game::RemovePlayerMumMoney(flagID));
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 PayMoneyMum(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 flagID = UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	if (*(script + 5))
	{
		Variables::SetVar(LASTRESULT, Game::RemovePlayerMumMoney(flagID));
	}
	else
	{
		Variables::SetVar(LASTRESULT, Game::GivePlayerMumMoney(flagID));
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 TransferMoney(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 flagID = UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	if (*(script + 5))
	{
		bool removed = Game::RemovePlayerMoney(flagID);
		if (removed)
		{
			removed = Game::GivePlayerMumMoney(flagID);
			if (removed)
			{
				Variables::SetVar(LASTRESULT, true);
			}
			else
			{
				Variables::SetVar(LASTRESULT, 2);
			}
		}
		else
		{
			Variables::SetVar(LASTRESULT, false);
		}
	}
	else
	{
		bool removed = Game::RemovePlayerMumMoney(flagID);
		if (removed)
		{
			removed = Game::GivePlayerMoney(flagID);
			if (removed)
			{
				Variables::SetVar(LASTRESULT, true);
			}
			else
			{
				Variables::SetVar(LASTRESULT, 2);
			}
		}
		else
		{
			Variables::SetVar(LASTRESULT, false);
		}
	}
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 CheckMoney(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 flagID = UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	if (*(script + 5))
	{
		Variables::SetVar(LASTRESULT, Game::GetPlayer().mumBalance >= flagID);
	}
	else
	{
		Variables::SetVar(LASTRESULT, Game::GetPlayer().balance >= flagID);
	}
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 SetHealingPlace(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	Game::SetHealingPlace(PrimaryOverworld::GetHealingPlaceByID(flagID));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CheckGender(Tasks::ScriptRunners::ScriptRunner* runner)
{
	Variables::SetVar(LASTRESULT, Game::GetPlayer().gender == Gender_Female);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 SetupWildBattle(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	u16 flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 4);
	if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
	{
		flagID2 = Variables::GetVar(flagID2);
	}
	Pokemon::Pokemon* p = new Pokemon::Pokemon(*(script + 3), flagID);
	p->Encrypt(HeldItem, flagID2);
	runner->SetBank(0, (u32)p);
	runner->SetBank(1, 0);
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 SetupDoubleWildBattle(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	u16 flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 4);
	if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
	{
		flagID2 = Variables::GetVar(flagID2);
	}
	Pokemon::Pokemon* p = new Pokemon::Pokemon(*(script + 3), flagID);
	p->Encrypt(HeldItem, flagID2);
	runner->SetBank(0, (u32)p);
	flagID = UnalignedNumberHandler::LoadUShortNumber(script, 6);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 9);
	if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
	{
		flagID2 = Variables::GetVar(flagID2);
	}
	p = new Pokemon::Pokemon(*(script + 8), flagID);
	p->Encrypt(HeldItem, flagID2);
	runner->SetBank(1, (u32)p);
	runner->IncrementScriptPointer(11);
	return NotEnded;
}

u32 DoWildBattle(Tasks::ScriptRunners::ScriptRunner* runner)
{
	Pokemon::Pokemon* p1 = (Pokemon::Pokemon*)runner->GetBank(0);
	Pokemon::Pokemon* p2 = (Pokemon::Pokemon*)runner->GetBank(1);
	BattleTypeStruct bts = BattleTypeStruct();
	bts.basicInfo = 0;
	bts.info.isWildBattle = 1;
	WildBattle* wb = 0;
	if (p2)
	{
		bts.info.isDoubleBattle = 1;
		wb = new DoubleWildBattle(bts);
	}
	else
	{
		wb = new SingleWildBattle(bts);
	}
	wb->SetPokemonOne(*p1);
	delete p1;
	if (p2)
	{
		((DoubleWildBattle*)wb)->SetPokemonTwo(*p2);
		delete p2;
	}
	wb->SkipGeneration(true);
	SceneManager::SetScene(wb);
	runner->IncrementScriptPointer(1);
	runner->SetWaitFrames(1);
	return NotEnded;
}

u32 SetObedience(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	Game::GetPartyPokemon(flagID)->Encrypt(IsObedient, true);
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 CheckObedience(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	Variables::SetVar(LASTRESULT, Game::GetPartyPokemon(flagID)->Decrypt(IsObedient));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 SetWorldMapflag(Tasks::ScriptRunners::ScriptRunner* runner)
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

u32 SetCatchLocation(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		flagID = Variables::GetVar(flagID);
	}
	if (flagID < 6)
	{
		Variables::SetVar(LASTRESULT, true);
		Game::GetPartyPokemon(flagID)->Encrypt(MetLocation, *(script + 3));
	}
	else
	{
		Variables::SetVar(LASTRESULT, false);
	}
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 MultiplyVar(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		Variables::SetVar(flagID, Variables::GetVar(flagID) * UnalignedNumberHandler::LoadUShortNumber(script, 3));
	}
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 MultiplyVarByVar(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		u16 flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 3);
		if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
		{
			flagID2 = Variables::GetVar(flagID2);
		}
		Variables::SetVar(flagID, Variables::GetVar(flagID) * flagID2);
	}
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 DivideVar(Tasks::ScriptRunners::ScriptRunner* runner)
// Note that overuse of this will badly hang the engine
// Unless the denominator is a power of 2
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		Variables::SetVar(flagID, Maths::UnsignedDivide(Variables::GetVar(flagID), UnalignedNumberHandler::LoadUShortNumber(script, 3)));
	}
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 DivideVarByVar(Tasks::ScriptRunners::ScriptRunner* runner)
// Note that overuse of this will badly hang the engine
// Unless the denominator is a power of 2
{
	u8* script = runner->GetScriptPointer();
	u16 flagID = UnalignedNumberHandler::LoadUShortNumber(script, 1);
	if (Variables::ValidateVarID(flagID) || Variables::IsTemporaryVar(flagID))
	{
		u16 flagID2 = UnalignedNumberHandler::LoadUShortNumber(script, 3);
		if (Variables::ValidateVarID(flagID2) || Variables::IsTemporaryVar(flagID2))
		{
			flagID2 = Variables::GetVar(flagID2);
		}
		Variables::SetVar(flagID, Maths::UnsignedDivide(Variables::GetVar(flagID), flagID2));
	}
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 GetTimeOfDay(Tasks::ScriptRunners::ScriptRunner* runner)
{
	Variables::SetVar(LASTRESULT, RTC::GetTime().timeOfDay);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 BufferNegativeNumber(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u16 attackID = UnalignedNumberHandler::LoadUShortNumber(script, 2);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferNegativeNumber(attackID, 5, buffer);
	}
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 BufferDecimal(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 attackID = UnalignedNumberHandler::LoadUnalignedNumber(script, 2, 4);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferFractionalNumber(attackID, 5, buffer, *(script + 6));
	}
	runner->IncrementScriptPointer(7);
	return NotEnded;
}

u32 BufferSignedDecimal(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 attackID = UnalignedNumberHandler::LoadUnalignedNumber(script, 2, 4);
	if (Variables::ValidateVarID(attackID) || Variables::IsTemporaryVar(attackID))
	{
		attackID = Variables::GetVar(attackID);
	}
	u8 buffer = *(script + 1);
	Variables::SetVar(LASTRESULT, buffer < NUMBUFFERS);
	if (buffer < NUMBUFFERS)
	{
		TextFunctions::BufferSignedFractionalNumber(attackID, 5, buffer, *(script + 6));
	}
	runner->IncrementScriptPointer(7);
	return NotEnded;
}
