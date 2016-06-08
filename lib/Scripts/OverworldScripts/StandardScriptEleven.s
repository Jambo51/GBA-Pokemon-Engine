.include "OverworldScriptCommandIDs.s"
.global StandardScriptEleven

StandardScriptEleven:
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte WaitKeyPress
	.byte FadeScreen
	.byte 0x00
	.byte WaitState
	.byte Return
