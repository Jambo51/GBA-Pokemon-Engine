.include "OverworldScriptCommandIDs.s"
.global StandardScriptThirteen

StandardScriptThirteen:
	.byte SetKeepTextboxOpen
	.byte 0x01
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte WaitKeyPress
	.byte Return
