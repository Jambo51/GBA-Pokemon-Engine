.include "OverworldScriptCommandIDs.s"
.global StandardScriptSeven


StandardScriptSeven:
	.byte NoOperation
	.byte CopyVar
	.short 0x8007
	.short 0x800D
	.byte Call
	.word standard7part1
	.byte Return

standard7part1:
	.byte NoOperation
	.byte Switch
	.short 0x8007
	.short 0x0002
	.word standard7switchtable1
	.byte Return

standard7switchtable1:
	.word standard7part3
	.word standard7part2

standard7part2:
	.byte PlayFanfare
	.short 0x0102
	.byte PrepareMessage
	.word standard7string1
	.byte WaitFanfare
	.byte WaitMessage
	.byte SetBank
	.byte 0x00
	.word standard7string2
	.byte CallStd
	.byte 0x04
	.byte SetVar
	.short 0x800D
	.short 0x0001
	.byte Return

standard7part3:
	.byte SetVar
	.short 0x800D
	.short 0x0000
	.byte Return

standard7string1:
	.byte 0x4F
	.byte 0x62
	.byte 0x74
	.byte 0x61
	.byte 0x69
	.byte 0x6E
	.byte 0x65
	.byte 0x64
	.byte 0x20
	.byte 0x74
	.byte 0x68
	.byte 0x65
	.byte 0x20
	.byte 0xFB
	.byte 0x02
	.byte 0x21
	.byte 0x00


standard7string2:
	.byte 0x54
	.byte 0x68
	.byte 0x65
	.byte 0x20
	.byte 0xFB
	.byte 0x02
	.byte 0x20
	.byte 0x77
	.byte 0x61
	.byte 0x73
	.byte 0x20
	.byte 0x74
	.byte 0x72
	.byte 0x61
	.byte 0x6E
	.byte 0x73
	.byte 0x66
	.byte 0x65
	.byte 0x72
	.byte 0x72
	.byte 0x65
	.byte 0x64
	.byte 0x0A
	.byte 0x74
	.byte 0x6F
	.byte 0x20
	.byte 0x74
	.byte 0x68
	.byte 0x65
	.byte 0x20
	.byte 0x50
	.byte 0x43
	.byte 0x2E
	.byte 0x00

