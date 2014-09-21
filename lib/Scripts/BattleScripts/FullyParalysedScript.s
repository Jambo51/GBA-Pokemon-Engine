	.text
	.include "BattleScriptStringIDs.s"
	.include "BattleScriptCommandIDs.s"
	.global Script_Fully_Paralysed
	.align 1

Script_Fully_Paralysed:
	.byte	MessageByID
	.short	ParalysedString
	.byte	Pause
	.short	0x0040
	.byte	EndTurn