.include "OverworldScriptCommandIDs.s"
.global StandardScriptTen


StandardScriptTen:
	.byte GetTimeOfDay
	.byte Switch
	.short 0x800D
	.short 0x0004
	.word standard10switchtable
	.byte PrepareMessage
	.word 0x00000000
	.byte WaitMessage
	.byte WaitKeyPress
	.byte Release
	.byte Return

standard10day:
	.byte BufferString
	.byte 0x00
	.word standard10daystring
	.byte Return

standard10night:
	.byte BufferString
	.byte 0x00
	.word standard10nightstring
	.byte Return

standard10morning:
	.byte BufferString
	.byte 0x00
	.word standard10morningstring
	.byte Return

standard10afternoon:
	.byte BufferString
	.byte 0x00
	.word standard10afternoonstring
	.byte Return

standard10switchtable:
	.word standard10day
	.word standard10morning
	.word standard10afternoon
	.word standard10night

standard10daystring:
	.byte 0x64
	.byte 0x61
	.byte 0x79
	.byte 0x00


standard10morningstring:
	.byte 0x6D
	.byte 0x6F
	.byte 0x72
	.byte 0x6E
	.byte 0x69
	.byte 0x6E
	.byte 0x67
	.byte 0x00


standard10afternoonstring:
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


standard10nightstring:
	.byte 0x65
	.byte 0x76
	.byte 0x65
	.byte 0x6E
	.byte 0x69
	.byte 0x6E
	.byte 0x67
	.byte 0x00

