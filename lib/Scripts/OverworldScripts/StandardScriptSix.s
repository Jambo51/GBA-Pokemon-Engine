.include "OverworldScriptCommandIDs.s"
.global StandardScriptSix

StandardScriptSix:
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte WaitKeyPress
	.byte Release
	.byte Return
