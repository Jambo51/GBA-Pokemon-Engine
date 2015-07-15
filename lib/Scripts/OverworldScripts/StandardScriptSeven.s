.include "OverworldScriptCommandIDs.s"
.global StandardScriptSeven


StandardScriptSeven:
	.byte GetTimeOfDay
	.byte Switch
	.short 0x800D
	.short 0x0004
	.word standard7switchtable
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte WaitKeyPress
	.byte Release
	.byte Return

standard7day:
	.byte BufferString
	.byte 0x00
	.word standard7daystring
	.byte Return

standard7night:
	.byte BufferString
	.byte 0x00
	.word standard7nightstring
	.byte Return

standard7morning:
	.byte BufferString
	.byte 0x00
	.word standard7morningstring
	.byte Return

standard7afternoon:
	.byte BufferString
	.byte 0x00
	.word standard7afternoonstring
	.byte Return

standard7switchtable:
	.word standard7day
	.word standard7morning
	.word standard7afternoon
	.word standard7night

standard7daystring:
	.byte 0x64
	.byte 0x61
	.byte 0x79
	.byte 0x00


standard7morningstring:
	.byte 0x6D
	.byte 0x6F
	.byte 0x72
	.byte 0x6E
	.byte 0x69
	.byte 0x6E
	.byte 0x67
	.byte 0x00


standard7afternoonstring:
	.byte 0x61
	.byte 0x66
	.byte 0x74
	.byte 0x65
	.byte 0x72
	.byte 0x6E
	.byte 0x6F
	.byte 0x6F
	.byte 0x6E
	.byte 0x00


standard7nightstring:
	.byte 0x65
	.byte 0x76
	.byte 0x65
	.byte 0x6E
	.byte 0x69
	.byte 0x6E
	.byte 0x67
	.byte 0x00

