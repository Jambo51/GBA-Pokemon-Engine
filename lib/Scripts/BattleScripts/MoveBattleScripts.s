	.include "BattleScriptCommandIDs.s"
	.include "BattleScriptSecondaryEffectIDs.s"
	.include "AbilityIDs.s"
	.include "MoveIDs.s"
	.include "BattleScriptStringIDs.s"
	.text
	.global Script_Standard_Attack
	.global Script_Standard_Attack_Faint
	.global Script_Standard_Attack_End
	.global Script_Recoil
	.global	Script_Perish_Song
	.global Script_It_Failed
	.global Script_Attack_Missed
	.global	Script_Triple_Kick
	.global Script_Callable_Standard_Attack
	.global	Script_Wake_Up_Slap
	.global	Script_Smelling_Salt
	.global	Script_Spit_Up
	.global	Script_Present
	.align 1

Script_Attack_Missed:
	.byte	PrintUseMessage
	.byte	PauseIfText
	.short	0x0020
	.byte	ReducePP
	.byte	MessageByID
	.short	MissedString
	.byte	PauseIfText
	.byte	0x0040
	.byte	EndTurn

Script_It_Failed:
	.byte	Pause
	.short	0x0020
	.byte	ReducePP
	.byte	MessageByID
	.short	FailedString
	.byte	PauseIfText
	.byte	0x0040
	.byte	EndTurn

Script_Callable_Standard_Attack:
	.byte	PrintUseMessage
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
	.byte	Return

Script_Standard_Attack:
	.byte	MoveCanceler
	.byte	AccuracyCheck
	.word	Script_Attack_Missed
	.byte	PrintUseMessage
	.byte	ReducePP
Script_Standard_Attack_Damage_Calculation:
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

Script_Recoil:
	.byte	SetMovePrimaryEffect
	.byte	Recoil + HitsUser + AlwaysHits
	.byte	0x00
	.byte	Goto
	.word	Script_Standard_Attack

Script_Perish_Song:
	.byte	MoveCanceler
	.byte	PrintUseMessage
	.byte	ReducePP
	.byte	SetLoopCounter
	.short	0x0000
	.byte	SetGenericCounter
	.byte	0x00
	.byte	0x00
Perish_Song_Loop:
	.byte	CopyLoopCounterTo
	.byte	CopyToTargetBank
	.byte	JumpIf
	.byte	JumpIfAbility
	.byte	0x01
	.byte	Soundproof
	.byte	JumpIfComparisonEquals
	.word	Perish_Song_Skip
	.byte	JumpIf
	.byte	JumpIfSecondaryStatus
	.byte	0x01
	.word	0x00001800
	.byte	JumpIfComparisonIfAnyBitsSet
	.word	Perish_Song_Skip
	.byte	SetSecondaryStatus
	.byte	0x01
	.word	0x00001800
	.byte	IncrementGeneralCounter
	.byte	0x00
	.byte	0x00
Perish_Song_Skip:
	.byte	IncrementLoopCounter
	.byte	0x00
	.byte	JumpIf
	.byte	JumpIfLoopCounter
	.byte	JumpIfComparisonLessThan
	.word	Perish_Song_Loop
	.byte	JumpIf
	.byte	JumpIfGeneralCounter
	.byte	0x00
	.byte	0x00
	.byte	JumpIfComparisonEquals
	.word	Script_It_Failed
	.byte	ExecuteMoveAnimation
	.byte	WaitMoveAnimation
	.byte	EndTurn

Script_Triple_Kick:
	.byte	MoveCanceler
	.byte	ReducePP
	.byte	SetGenericCounter
	.byte	0x00
	.byte	0x00
Script_Triple_Kick_Loop:
	.byte	JumpIf
	.byte	JumpIfGenericCounter
	.byte	0x00
	.byte	0x00
	.byte	JumpIfComparisonEquals
	.word	Triple_Kick_Skip_Ability_Check
	.byte	JumpIf
	.byte	JumpIfAbility
	.byte	0x00
	.byte	Skill_Link
	.byte	JumpIfComparisonEquals
	.word	Triple_Kick_Skip_Accuracy_Check
Triple_Kick_Skip_Ability_Check:
	.byte	AccuracyCheck
	.word	Script_Attack_Missed
Triple_Kick_Skip_Accuracy_Check:
	.byte	Call
	.word	Script_Callable_Standard_Attack
	.byte	FaintIfNecessary
	.byte	IncrementGenericCounter
	.byte	0x00
	.byte	0x00
	.byte	JumpIf
	.byte	JumpIfGeneralCounter
	.byte	0x00
	.byte	0x03
	.byte	JumpIfComparisonLessThan
	.word	Script_Triple_Kick_Loop
	.byte	EndTurn

Script_Wake_Up_Slap:
	.byte	SetMovePrimaryEffect
	.byte	Sleep + HitsTarget + AlwaysHits
	.byte	0x01
	.byte	Goto
	.word	Script_Standard_Attack

Script_Smelling_Salt:
	.byte	SetMovePrimaryEffect
	.byte	Paralyse + HitsTarget + AlwaysHits
	.byte	0x01
	.byte	Goto
	.word	Script_Standard_Attack

Script_Spit_Up:
	.byte	MoveCanceler
	.byte	PrintUseMessage
	.byte	ReducePP
	.byte	JumpIf
	.byte	JumpIfSecondaryStatus
	.byte	0x0
	.word	0x00000018
	.byte	JumpIfComparisonIfNoBitsSet
	.word	Script_It_Failed
	.byte	AccuracyCheck
	.word	Script_Attack_Missed
	.byte	Goto
	.word	Script_Standard_Attack_Damage_Calculation

Script_Present:
	.byte	MoveCanceler
	.byte	AccuracyCheck
	.word	Script_Attack_Missed
	.byte	PrintUseMessage
	.byte	ReducePP
	.byte	GetRandomValue
	.byte	0x00
	.byte	0x64
	.byte	JumpIf
	.byte	JumpIfGeneralCounter
	.byte	0x00
	.byte	0x14
	.byte	JumpIfComparisonGreaterThanOrEqual
	.word	Script_Standard_Attack_Damage_Calculation
	.byte	EndTurn