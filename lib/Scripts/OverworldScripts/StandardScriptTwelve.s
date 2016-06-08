.include "OverworldScriptCommandIDs.s"
.global StandardScriptTwelve

StandardScriptTwelve:
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte WaitKeyPress
	.byte FadeScreen
	.byte 0x01
	.byte WaitState
	.byte Return
