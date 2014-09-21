	.text
	.include "BattleScriptCommandIDs.s"
	.include "BattleScriptStringIDs.s"
	.global Script_Unfreeze
	.align 1

Script_Unfreeze:
	.byte	MessageByID
	.short	DefrostingString
	.byte	Pause
	.short	0x0020
	.byte	Return