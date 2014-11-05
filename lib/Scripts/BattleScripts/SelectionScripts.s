	.text
	.include "BattleScriptCommandIDs.s"
	.include "BattleScriptStringIDs.s"
	.global Script_Item_Used
	.global Script_Pokemon_Switched
	.global Script_AI_Flee
	.global Script_Player_Flee
	.global Script_Player_Call
	.global	Script_Unable_To_Flee
	.align 1

Script_Item_Used:
	.byte	MessageByID
	.short	ItemUsedString
	.byte	PauseIfText
	.short	0x0020
	.byte	PrintAndExecuteItemEffectMessage
	.byte	PauseIfText
	.short	0x0040
	.byte	EndTurn

Script_Pokemon_Switched:
	.byte	EndTurn

Script_AI_Flee:
	.byte	MessageByID
	.short	FledString
	.byte	WaitKeyPressTextBattle
	.byte	End

Script_Unable_To_Flee:
	.byte	PauseIfText
	.short	0x0040
	.byte	EndTurn

Script_Player_Flee:
	.byte	CalculateRunSuccess
	.byte	PrintAndExecuteRunResultMessage
	.byte	WaitKeyPressTextBattle
	.byte	End

Script_Player_Call:
	.byte	MessageByID
	.short	CallString
	.byte	PauseIfText
	.short	0x0020
	.byte	PrintAndExecuteCallEffectMessage
	.byte	PauseIfText
	.short	0x0040
	.byte	EndTurn