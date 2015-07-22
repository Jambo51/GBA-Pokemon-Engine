.include "OverworldScriptCommandIDs.s"
.global StandardScriptEight


StandardScriptEight:
	.byte BufferItemPluralName
	.byte 0x01
	.short 0x8000
	.short 0x8001
	.byte CheckItemType
	.short 0x8000
	.byte Call
	.word standard8part1
	.byte SetBank
	.byte 0x00
	.word standard8string
	.byte CallStd
	.byte 0x04
	.byte Return

standard8part1:
	.byte CopyVar
	.short 0x8000
	.short 0x800D
	.byte Switch
	.short 0x8000
	.short 0x0006
	.word standard8switchtable1
	.byte Return

standard8switchtable1:
	.word standard8part2
	.word standard8part2
	.word standard8part3
	.word standard8part4
	.word standard8part5
	.word standard8part6

standard8part2:
	.byte BufferStandardString
	.byte 0x02
	.short 0x0018
	.byte Return

standard8part3:
	.byte BufferStandardString
	.byte 0x02
	.short 0x0019
	.byte Return

standard8part4:
	.byte BufferStandardString
	.byte 0x02
	.short 0x001A
	.byte Return

standard8part5:
	.byte BufferStandardString
	.byte 0x02
	.short 0x001B
	.byte Return

standard8part6:
	.byte BufferStandardString
	.byte 0x02
	.short 0x001C
	.byte Return

standard8string:
	.byte 0xFB
	.byte 0x10
	.byte 0x20
	.byte 0x70
	.byte 0x75
	.byte 0x74
	.byte 0x20
	.byte 0x74
	.byte 0x68
	.byte 0x65
	.byte 0x20
	.byte 0xFB
	.byte 0x02
	.byte 0x0A
	.byte 0x69
	.byte 0x6E
	.byte 0x20
	.byte 0x74
	.byte 0x68
	.byte 0x65
	.byte 0x20
	.byte 0xFB
	.byte 0x03
	.byte 0x2E
	.byte 0x00

