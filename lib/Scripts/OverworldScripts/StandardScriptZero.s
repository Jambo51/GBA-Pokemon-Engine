.include "OverworldScriptCommandIDs.s"
.global StandardScriptZero



StandardScriptZero:
	.byte AddItem
	.short 0x8000
	.short 0x8001
	.byte CopyVar
	.short 0x8007
	.short 0x800D
	.byte Call
	.word standard0part1
	.byte Return


standard0part1:
	.byte BufferItemPluralName
	.byte 0x01
	.short 0x8000
	.short 0x8001
	.byte CheckItemType
	.short 0x8000
	.byte Call
	.word standard0part2
	.byte Switch
	.short 0x8007
	.short 0x0002
	.word standard0switchtable
	.byte Return

standard0switchtable:
	.word standard0part3
	.word standard0part4


standard0part2:
	.byte CopyVar
	.short 0x8000
	.short 0x800D
	.byte Switch
	.short 0x8000
	.short 0x0006
	.word standard0switchtable2
	.byte Return

standard0switchtable2:
	.word standard0part5
	.word standard0part5
	.word standard0part6
	.word standard0part7
	.word standard0part8
	.word standard0part9


standard0part3:
	.byte PrepareMessage
	.word standard0string1
	.byte WaitFanfare
	.byte SetBank
	.byte 0x00
	.word standard0string2
	.byte CallStd
	.byte 0x04
	.byte SetVar
	.short 0x800D
	.short 0x0001
	.byte Return


standard0part4:
	.byte SetVar
	.short 0x800D
	.short 0x0000
	.byte Return


standard0part5:
	.byte BufferStandardString
	.byte 0x02
	.short 0x000E
	.byte CompareVarToValue
	.short 0x8007
	.short 0x0001
	.byte IfCall
	.byte 0x01
	.word standard0part10
	.byte Return


standard0part9:
	.byte BufferStandardString
	.byte 0x02
	.short 0x000F
	.byte CompareVarToValue
	.short 0x8007
	.short 0x0001
	.byte IfCall
	.byte 0x01
	.word standard0part10
	.byte Return


standard0part6:
	.byte BufferStandardString
	.byte 0x02
	.short 0x0010
	.byte CompareVarToValue
	.short 0x8007
	.short 0x0001
	.byte IfCall
	.byte 0x01
	.word standard0part10
	.byte Return


standard0part7:
	.byte BufferStandardString
	.byte 0x02
	.short 0x0011
	.byte CompareVarToValue
	.short 0x8007
	.short 0x0001
	.byte IfCall
	.byte 0x01
	.word standard0part11
	.byte Return


standard0part8:
	.byte BufferStandardString
	.byte 0x02
	.short 0x0012
	.byte CompareVarToValue
	.short 0x8007
	.short 0x0001
	.byte IfCall
	.byte 0x01
	.word standard0part10
	.byte Return


standard0part10:
	.byte PlayFanfare
	.short 0x0005
	.byte Return


standard0part11:
	.byte PlayFanfare
	.short 0x000D
	.byte Return




standard0string1:
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


standard0string2:
	.byte 0xFB
	.byte 0x10
	.byte 0x20
	.byte 0x70
	.byte 0x75
	.byte 0x74
	.byte 0x20
	.byte 0x61
	.byte 0x77
	.byte 0x61
	.byte 0x79
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
	.byte 0x20
	.byte 0x50
	.byte 0x4F
	.byte 0x43
	.byte 0x4B
	.byte 0x45
	.byte 0x54
	.byte 0x2E
	.byte 0x00

