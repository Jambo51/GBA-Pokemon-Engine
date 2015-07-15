.include "OverworldScriptCommandIDs.s"
.global StandardScriptTwo

StandardScriptTwo:
	.byte Lock
	.byte FacePlayer
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte WaitKeyPress
	.byte Release
	.byte Return
