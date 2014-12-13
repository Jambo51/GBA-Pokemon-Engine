	.include "BattleScriptCommandIDs.s"
	.include "BattleScriptStringIDs.s"
	.text
	.global Battle_Script_White_Out
	.global Battle_Script_Faint_With_Battle_End
	.global Battle_Script_Faint
	.align 1

Battle_Script_Faint_Main:
	.byte	PrintFaintMessage
	.byte	WaitKeyPressTextBattle
	.byte	CalculateExperience
	.byte	PrintExperienceMessage
	.byte	WaitKeyPressTextBattle
	.byte	Return

Battle_Script_White_Out:
	.byte	0x00

Battle_Script_End_Wild_Battle:
	.byte	PlayBattleEndFanfare
	.byte	Call
	.word	Battle_Script_Faint_Main
	.byte	Goto
	.word	Battle_Script_End_Battle_Victory

Battle_Script_Faint_With_Battle_End:
	.byte	JumpIf
	.byte	JumpIfBattleType
	.word	0x00000001
	.byte	JumpIfComparisonIfAnyBitsSet
	.word	Battle_Script_End_Wild_Battle
	.byte	Call
	.word	Battle_Script_Faint_Main
	.byte	PlayBattleEndFanfare
	.byte	PrintTrainerVictoryMessage
	.byte	WaitKeyPressTextBattle
	.byte	PrintTrainerAfterMessage
	.byte	WaitKeyPressTextBattle
	.byte	CalculateTrainerWinnings
	.byte	PrintTrainerCashGainMessage
	.byte	WaitKeyPressTextBattle
	.byte	PrintMumCashGainMessage
	.byte	WaitKeyPressTextBattle
Battle_Script_End_Battle_Victory:
	.byte	CalculatePickupWinnings
	.byte	PrintPayDayCashGainMessage
	.byte	WaitKeyPressTextBattle
	.byte	End

Battle_Script_Faint:
	.byte	0x00
