.include "OverworldScriptCommandIDs.s"
.global InitialiseTrainerBattleNoEncounter
.global InitialiseTrainerBattle


InitialiseTrainerBattle:
	.byte Special
	.short 0x0038

InitialiseTrainerBattleNoEncounter:
	.byte PrepareMessage
	.word 0x00000001
	.byte Call
	.word StandardScriptFourAlt
	.byte DoTrainerBattle
	.byte End
