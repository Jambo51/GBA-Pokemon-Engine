	.include "BattleScriptCommandIDs.s"
	.section .rodata
	.global Script_Standard_Attack
	.global Script_Standard_Attack_Faint
	.global Script_Standard_Attack_End
	.align 1

Script_Standard_Attack:
	.byte	MoveCanceler
	.byte	AccuracyCheck
	.word	Script_Attack_Missed
	.byte	PrintUseMessage
	.byte	ReducePP
	.byte	CalculateDamage
	.byte	ExecuteMoveAnimation
	.byte	WaitMoveAnimation
	.byte	ExecuteDamageReceptionAnimation
	.byte	WaitMoveAnimation
	.byte	ApplyCalculatedDamage
	.byte	UpdateHPBar
	.byte	WaitMoveAnimation
	.byte	CritMessage
	.byte	PauseIfText
	.short	0x0020
	.byte	EffectivenessMessage
	.byte	PauseIfText
	.short	0x0040
Script_Standard_Attack_Faint:
	.byte	FaintIfNecessary
Script_Standard_Attack_End:
	.byte	EndTurn