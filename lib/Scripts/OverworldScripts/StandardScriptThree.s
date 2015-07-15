.include "OverworldScriptCommandIDs.s"
.global StandardScriptThree

StandardScriptThree:
	.byte LockAll
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte WaitKeyPress
	.byte ReleaseAll
	.byte Return
