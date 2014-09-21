	.text
	.include "BattleScriptCommandIDs.s"
	.include "BattleScriptStringIDs.s"
	.global Script_Cure_Burn
	.align 1

Script_Cure_Burn:
	.byte	MessageByID
	.short	CureBurnString
	.byte	Pause
	.short	0x0020
	.byte	Return