	.text
	.include "BattleScriptCommandIDs.s"
	.include "BattleScriptStringIDs.s"
	.global Script_Wake_Up
	.global Script_Fast_Asleep
	.align 1

Script_Wake_Up:
	.byte	MessageByID
	.short	WakingUpString
	.byte	Pause
	.short	0x0020
	.byte	Return

Script_Fast_Asleep:
	.byte	MessageByID
	.short	SleepingString
	.byte	Pause
	.short	0x0040
	.byte	EndTurn