.include "OverworldScriptCommandIDs.s"
.global StandardScriptFourteen


StandardScriptFourteen:
	.byte SetKeepTextboxOpen
	.byte 0x01
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte YesNoBox
	.byte 0x14
	.byte 0x08
	.byte CompareVarToValue
	.short 0x800D
	.short 0x0000
	.byte IfGoto
	.byte 0x05
	.word StandardScriptFourteenAlt
	.byte HideBox
	.byte 0x14
	.byte 0x08
	.byte 0x08
	.byte 0x06

StandardScriptFourteenAlt:
	.byte Return
