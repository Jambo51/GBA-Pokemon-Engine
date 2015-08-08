.include "OverworldScriptCommandIDs.s"
.global StandardScriptOne



StandardScriptOne:
	.byte Lock
	.byte FacePlayer
	.byte WaitSound
	.byte CopyVar
	.short 0x8004
	.short 0x8000
	.byte CopyVar
	.short 0x8005
	.short 0x8001
	.byte CheckItemRoom
	.short 0x8000
	.short 0x8001
	.byte CopyVar
	.short 0x8007
	.short 0x800D
	.byte BufferItemPluralName
	.byte 0x01
	.short 0x8000
	.short 0x8001
	.byte CheckItemType
	.short 0x8000
	.byte Call
	.word standard1part1
	.byte GotoSwitch
	.short 0x8007
	.short 0x0002
	.word standard1switchtable
	.byte Release
	.byte Return

standard1switchtable:
	.word standard1part2
	.word standard1part3


standard1part1:
	.byte CopyVar
	.short 0x8000
	.short 0x800D
	.byte Switch
	.short 0x8000
	.short 0x0006
	.word standard1switchtable2
	.byte Return

standard1switchtable2:
	.word standard1part4
	.word standard1part4
	.word standard1part5
	.word standard1part6
	.word standard1part7
	.word standard1part8


standard1part3:
	.byte HideSprite
	.short 0x800F
	.byte AddItem
	.short 0x8004
	.short 0x8005
	.byte SpecialWithReturn
	.short 0x800D
	.short 0x019E
	.byte CopyVar
	.short 0x8008
	.short 0x800D
	.byte Switch
	.short 0x8008
	.short 0x0002
	.word standard1switchtable3
	.byte WaitFanfare
	.byte WaitMessage
	.byte BufferItemPluralName
	.byte 0x01
	.short 0x8004
	.short 0x8005
	.byte SetVar
	.short 0x8004
	.short 0x000C
	.byte Special
	.short 0x00F3
	.byte CompareVarToValue
	.short 0x800D
	.short 0x0001
	.byte IfGoto
	.byte 0x01
	.word standard1part11
	.byte SetBank
	.byte 0x00
	.word standard1string1
	.byte CallStd
	.byte 0x04
	.byte Return

standard1switchtable3:
	.word standard1part10
	.word standard1part9


standard1part2:
	.byte SetBank
	.byte 0x00
	.word standard1string2
	.byte CallStd
	.byte 0x04
	.byte SetBank
	.byte 0x00
	.word standard1string3
	.byte CallStd
	.byte 0x04
	.byte SetVar
	.short 0x800D
	.short 0x0000
	.byte Return


standard1part4:
	.byte BufferStandardString
	.byte 0x02
	.short 0x000E
	.byte CompareVarToValue
	.short 0x8007
	.short 0x0001
	.byte IfCall
	.byte 0x01
	.word standard1part12
	.byte Return


standard1part8:
	.byte BufferStandardString
	.byte 0x02
	.short 0x000F
	.byte CompareVarToValue
	.short 0x8007
	.short 0x0001
	.byte IfCall
	.byte 0x01
	.word standard1part12
	.byte Return


standard1part5:
	.byte BufferStandardString
	.byte 0x02
	.short 0x0010
	.byte CompareVarToValue
	.short 0x8007
	.short 0x0001
	.byte IfCall
	.byte 0x01
	.word standard1part12
	.byte Return


standard1part6:
	.byte BufferStandardString
	.byte 0x02
	.short 0x0011
	.byte CompareVarToValue
	.short 0x8007
	.short 0x0001
	.byte IfCall
	.byte 0x01
	.word standard1part13
	.byte Return


standard1part7:
	.byte BufferStandardString
	.byte 0x02
	.short 0x0012
	.byte CompareVarToValue
	.short 0x8007
	.short 0x0001
	.byte IfCall
	.byte 0x01
	.word standard1part12
	.byte Return


standard1part9:
	.byte BufferItemPluralName
	.byte 0x00
	.short 0x8004
	.short 0x8005
	.byte PrepareMessage
	.word standard1string4
	.byte Return


standard1part10:
	.byte PrepareMessage
	.word standard1string5
	.byte Return


standard1part11:
	.byte SetBank
	.byte 0x00
	.word standard1string6
	.byte CallStd
	.byte 0x04
	.byte Return


standard1part12:
	.byte PlayFanfare
	.short 0x0005
	.byte Return


standard1part13:
	.byte PlayFanfare
	.short 0x000D
	.byte Return




standard1string1:
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
	.byte 0x01
	.byte 0x0A
	.byte 0x69
	.byte 0x6E
	.byte 0x20
	.byte 0x74
	.byte 0x68
	.byte 0x65
	.byte 0x20
	.byte 0xFB
	.byte 0x02
	.byte 0x20
	.byte 0x50
	.byte 0x4F
	.byte 0x43
	.byte 0x4B
	.byte 0x45
	.byte 0x54
	.byte 0x2E
	.byte 0x00


standard1string2:
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
	.byte 0x01
	.byte 0x21
	.byte 0x00


standard1string3:
	.byte 0x54
	.byte 0x6F
	.byte 0x6F
	.byte 0x20
	.byte 0x62
	.byte 0x61
	.byte 0x64
	.byte 0x21
	.byte 0x0A
	.byte 0x54
	.byte 0x68
	.byte 0x65
	.byte 0x20
	.byte 0x42
	.byte 0x41
	.byte 0x47
	.byte 0x20
	.byte 0x69
	.byte 0x73
	.byte 0x20
	.byte 0x66
	.byte 0x75
	.byte 0x6C
	.byte 0x6C
	.byte 0x70
	.byte 0x00


standard1string4:
	.byte 0xFB
	.byte 0x10
	.byte 0x20
	.byte 0x66
	.byte 0x6F
	.byte 0x75
	.byte 0x6E
	.byte 0x64
	.byte 0x20
	.byte 0x6F
	.byte 0x6E
	.byte 0x65
	.byte 0x20
	.byte 0xFB
	.byte 0x00
	.byte 0x0A
	.byte 0xFB
	.byte 0x01
	.byte 0x21
	.byte 0x00


standard1string5:
	.byte 0xFB
	.byte 0x10
	.byte 0x20
	.byte 0x66
	.byte 0x6F
	.byte 0x75
	.byte 0x6E
	.byte 0x64
	.byte 0x20
	.byte 0x6F
	.byte 0x6E
	.byte 0x65
	.byte 0x20
	.byte 0xFB
	.byte 0x01
	.byte 0x21
	.byte 0x00


standard1string6:
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
	.byte 0x01
	.byte 0x0A
	.byte 0x69
	.byte 0x6E
	.byte 0x20
	.byte 0x74
	.byte 0x68
	.byte 0x65
	.byte 0x20
	.byte 0x42
	.byte 0x41
	.byte 0x47
	.byte 0x2E
	.byte 0x00

