	.include "BattleScriptCommandIDs.s"
	.include "BattleScriptStringIDs.s"
	.text
	.global Script_Attack_Missed
	.align 1

Script_Attack_Missed:
	.byte	PrintUseMessage
	.byte	Pause
	.short	0x0020
	.byte	MessageByID
	.short	MissedString
	.byte	Pause
	.byte	0x0040
	.byte	EndTurn