	.include "BattleScriptCommandIDs.s"
	.section .rodata
	.global Script_Standard_Attack
	.align 1

Script_Standard_Attack:
	.byte	MoveCanceler
	.byte	AccuracyCheck
	.word	Script_Attack_Missed
	.byte	ReducePP
	.byte	CalculateDamage
	.byte	ExecuteMoveAnimation
	.byte	WaitMoveAnimation
	.byte	ExecuteDamageReceptionAnimation
	.byte	WaitMoveAnimation
	.byte	ApplyCalculatedDamage
	.byte	UpdateHPBar
	.byte	WaitMoveAnimation
	.byte	PauseIfText
	.short	0x0040
	.byte	FaintIfNecessary
	.byte	End