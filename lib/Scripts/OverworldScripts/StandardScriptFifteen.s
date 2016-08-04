.include "OverworldScriptCommandIDs.s"
.global StandardScriptFifteen

StandardScriptFifteen:
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte WaitState
	.byte Return
