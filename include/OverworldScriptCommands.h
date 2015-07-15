/*
 * OverworldScriptCommands.h
 *
 *  Created on: 9 Jul 2015
 *      Author: Jamie
 */

#ifndef INCLUDE_OVERWORLDSCRIPTCOMMANDS_H_
#define INCLUDE_OVERWORLDSCRIPTCOMMANDS_H_

extern u32 NoOperation(ScriptRunner* runner);
extern u32 ScriptSwitch(ScriptRunner* runner);
extern u32 EndOverworldScript(ScriptRunner* runner);
extern u32 ReturnOverworldScript(ScriptRunner* runner);
extern u32 CallOverworldScript(ScriptRunner* runner);
extern u32 GotoOverworldScript(ScriptRunner* runner);
extern u32 IfGoto(ScriptRunner* runner);
extern u32 IfCall(ScriptRunner* runner);
extern u32 GotoStandardScript(ScriptRunner* runner);
extern u32 CallStandardScript(ScriptRunner* runner);
extern u32 IfGotoStandard(ScriptRunner* runner);
extern u32 IfCallStandard(ScriptRunner* runner);
extern u32 SetBankValue(ScriptRunner* runner);
extern u32 SetByte2(ScriptRunner* runner);
extern u32 WriteByteToOffset(ScriptRunner* runner);
extern u32 LoadByteFromPointer(ScriptRunner* runner);
extern u32 SetFarByte(ScriptRunner* runner);
extern u32 CopyScriptBank(ScriptRunner* runner);
extern u32 CopyByte(ScriptRunner* runner);
extern u32 SetVar(ScriptRunner* runner);
extern u32 AddVar(ScriptRunner* runner);
extern u32 AddVarToVar(ScriptRunner* runner);
extern u32 SubVar(ScriptRunner* runner);
extern u32 SubVarFromVar(ScriptRunner* runner);
extern u32 CopyVar(ScriptRunner* runner);
extern u32 CopyVarIfValid(ScriptRunner* runner);
extern u32 CompareBanks(ScriptRunner* runner);
extern u32 CompareBankToByte(ScriptRunner* runner);
extern u32 CompareBankToFarByte(ScriptRunner* runner);
extern u32 CompareFarByteToBank(ScriptRunner* runner);
extern u32 CompareFarByteToByte(ScriptRunner* runner);
extern u32 CompareFarByteToFarByte(ScriptRunner* runner);
extern u32 CompareVarToValue(ScriptRunner* runner);
extern u32 CompareVarToVar(ScriptRunner* runner);
extern u32 CallASM(ScriptRunner* runner);
extern u32 CallASM2(ScriptRunner* runner);
extern u32 Special(ScriptRunner* runner);
extern u32 SpecialWithReturn(ScriptRunner* runner);
extern u32 WaitState(ScriptRunner* runner);
extern u32 PauseOWScript(ScriptRunner* runner);
extern u32 SetFlag(ScriptRunner* runner);
extern u32 ClearFlag(ScriptRunner* runner);
extern u32 CheckFlag(ScriptRunner* runner);
extern u32 ResetVars(ScriptRunner* runner);
extern u32 PlaySound(ScriptRunner* runner);
extern u32 CheckSound(ScriptRunner* runner);
extern u32 PlayFanfare(ScriptRunner* runner);
extern u32 CheckFanfare(ScriptRunner* runner);
extern u32 PlaySong(ScriptRunner* runner);
extern u32 PlaySong2(ScriptRunner* runner);
extern u32 FadeDefault(ScriptRunner* runner);
extern u32 FadeSong(ScriptRunner* runner);
extern u32 FadeOut(ScriptRunner* runner);
extern u32 FadeInOWScriptVersion(ScriptRunner* runner);
extern u32 GetPlayerPos(ScriptRunner* runner);
extern u32 CountPokemon(ScriptRunner* runner);
extern u32 CountBoxPokemon(ScriptRunner* runner);
extern u32 AddItem(ScriptRunner* runner);
extern u32 RemoveItem(ScriptRunner* runner);
extern u32 CheckItemRoom(ScriptRunner* runner);
extern u32 CheckItem(ScriptRunner* runner);
extern u32 CheckItemType(ScriptRunner* runner);
extern u32 AddItemToPC(ScriptRunner* runner);
extern u32 CheckItemPC(ScriptRunner* runner);
extern u32 SetupTrainerBattle(ScriptRunner* runner);
extern u32 DoTrainerBattle(ScriptRunner* runner);
extern u32 DoDoubleTrainerBattle(ScriptRunner* runner);
extern u32 SetTrainerflag(ScriptRunner* runner);
extern u32 ClearTrainerflag(ScriptRunner* runner);
extern u32 CheckTrainerflag(ScriptRunner* runner);
extern u32 WaitMessage(ScriptRunner* runner);
extern u32 PrepareMessage(ScriptRunner* runner);
extern u32 CloseMessageOnKeyPress(ScriptRunner* runner);
extern u32 WaitKeyPress(ScriptRunner* runner);
extern u32 GivePokemon(ScriptRunner* runner);
extern u32 CheckAttack(ScriptRunner* runner);
extern u32 BufferSpecies(ScriptRunner* runner);
extern u32 BufferFirstPokemon(ScriptRunner* runner);
extern u32 BufferPartyPokemon(ScriptRunner* runner);
extern u32 BufferItem(ScriptRunner* runner);
extern u32 BufferMoveName(ScriptRunner* runner);
extern u32 BufferNumber(ScriptRunner* runner);
extern u32 BufferStandard(ScriptRunner* runner);
extern u32 BufferString(ScriptRunner* runner);
extern u32 Random(ScriptRunner* runner);
extern u32 GiveMoney(ScriptRunner* runner);
extern u32 PayMoney(ScriptRunner* runner);
extern u32 GiveMoneyMum(ScriptRunner* runner);
extern u32 PayMoneyMum(ScriptRunner* runner);
extern u32 TransferMoney(ScriptRunner* runner);
extern u32 CheckMoney(ScriptRunner* runner);
extern u32 SetHealingPlace(ScriptRunner* runner);
extern u32 CheckGender(ScriptRunner* runner);
extern u32 SetupWildBattle(ScriptRunner* runner);
extern u32 SetupDoubleWildBattle(ScriptRunner* runner);
extern u32 DoWildBattle(ScriptRunner* runner);
extern u32 SetObedience(ScriptRunner* runner);
extern u32 CheckObedience(ScriptRunner* runner);
extern u32 SetWorldMapflag(ScriptRunner* runner);
extern u32 SetCatchLocation(ScriptRunner* runner);
extern u32 MultiplyVar(ScriptRunner* runner);
extern u32 MultiplyVarByVar(ScriptRunner* runner);
extern u32 DivideVar(ScriptRunner* runner);
extern u32 DivideVarByVar(ScriptRunner* runner);
extern u32 GetTimeOfDay(ScriptRunner* runner);

#endif /* INCLUDE_OVERWORLDSCRIPTCOMMANDS_H_ */
