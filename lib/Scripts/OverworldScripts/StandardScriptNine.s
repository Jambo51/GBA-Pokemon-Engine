.include "OverworldScriptCommandIDs.s"
.global StandardScriptNine

StandardScriptNine:
	.byte TextColour
	.byte 0x03
	.byte PlayFanfare
	.short 0x8002
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte WaitFanfare
	.byte CopyVarIfValid
	.short 0x8000
	.short 0x8000
	.byte CopyVarIfValid
	.short 0x8001
	.short 0x8001
	.byte CallStd
	.byte 0x08
	.byte CopyVar
	.short 0x8012
	.short 0x8013
	.byte Return
