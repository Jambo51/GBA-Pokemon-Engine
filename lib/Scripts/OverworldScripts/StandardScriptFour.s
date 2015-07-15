.include "OverworldScriptCommandIDs.s"
.global StandardScriptFourAlt
.global StandardScriptFour

StandardScriptFour:
	.byte PrepareMessage
	.word 0x00000000

StandardScriptFourAlt:
	.byte WaitMessage
	.byte WaitKeyPress
	.byte Return
