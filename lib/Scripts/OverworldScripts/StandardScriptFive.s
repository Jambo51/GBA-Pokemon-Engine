.include "OverworldScriptCommandIDs.s"
.global StandardScriptFive

StandardScriptFive:
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte YesNoBox
	.byte 0x14
	.byte 0x08
	.byte Return
