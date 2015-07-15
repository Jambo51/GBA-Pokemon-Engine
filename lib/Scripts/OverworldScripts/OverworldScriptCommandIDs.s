.equ	NoOperation,	0
.equ	Switch,	1
.equ	End,	2
.equ	Return,	3
.equ	Call,	4
.equ	Goto,	5
.equ	IfGoto,	6
.equ	IfCall,	7
.equ	GotoStd,8	
.equ	CallStd,9	
.equ	GotoStdIf,	10
.equ	CallStdIf,	11
.equ	SetBank,	15
.equ	SetByte2,	16
.equ	WriteByteToOffset,	17
.equ	LoadByteFromPointer,	18
.equ	SetFarByte,	19
.equ	CopyScriptBanks,20	
.equ	CopyByte,	21
.equ	SetVar,	22
.equ	AddVar,	23
.equ	SubVar,	24
.equ	CopyVar,25	
.equ	CopyVarIfValid,26	
.equ	CompareBanks,	27
.equ	CompareBankToByte,28	
.equ	CompareBankToFarByte,29	
.equ	CompareFarByteToBank,	30
.equ	CompareFarByteToByte,	31
.equ	CompareFarByteToFarByte,32	
.equ	CompareVarToValue,	33
.equ	CompareVarToVar,	34
.equ	CallASM,	35
.equ	CallASM2,	36
.equ	Special,	37
.equ	SpecialWithReturn,38	
.equ	WaitState,	39
.equ	Pause,	40
.equ	SetFlag,41	
.equ	ClearFlag,42	
.equ	CheckFlag,43	
.equ	ResetVars,46	
.equ	PlaySound,47	
.equ	WaitSound,48	
.equ	PlayFanfare,49	
.equ	WaitFanfare,50	
.equ	PlaySong,	51
.equ	PlaySong2,	52
.equ	FadeDefault,	53
.equ	FadeSong,	54
.equ	FadeOut,	55
.equ	FadeIn,	56
.equ	Warp,	57
.equ	WarpMuted,58	
.equ	WarpWalk,59	
.equ	WarpHole,60	
.equ	WarpTeleport,61	
.equ	Warp3,	62
.equ	SetLastWarp,63	
.equ	Warp4,	64
.equ	Warp5,	65
.equ	GetPlayerPosition,66	
.equ	CountPokemon,	67
.equ	AddItem,	68
.equ	RemoveItem,	69
.equ	CheckItemRoom,	70
.equ	CheckItem,	71
.equ	CheckItemType,	72
.equ	AddPCItem,	73
.equ	CheckPCItem,	74
.equ	ApplyMovement,	79
.equ	ApplyMovementToVarSprite,80	
.equ	WaitMovement,	81
.equ	WaitMovementFromVarSprite,82	
.equ	HideSprite,	83
.equ	HideSpritePosition,84	
.equ	ShowSprite,	85
.equ	ShowSpritePos,	86
.equ	MoveSprite,	87
.equ	SpriteVisible,	88
.equ	SpriteInvisible,89	
.equ	FacePlayer,	90
.equ	SpriteFace,	91
.equ	TrainerBattle,	92
.equ	DoTrainerBattle,93	
.equ	EndTrainerBattle,94	
.equ	EndTrainerBattle2,95	
.equ	CheckTrainerFlag,96	
.equ	SetTrainerFlag,	97
.equ	ClearTrainerFlag,98	
.equ	MoveSprite2,	99
.equ	MoveOffscreen,	100
.equ	SetSpriteBehaviour,101	
.equ	WaitMessage,	102
.equ	PrepareMessage,	103
.equ	CloseOnKeyPress,104	
.equ	LockAll,	105
.equ	Lock,	106
.equ	ReleaseAll,107	
.equ	Release,	108
.equ	WaitKeyPress,	109
.equ	YesNoBox,	110
.equ	MutiChoice,	111
.equ	DefaultMultiChoice,112	
.equ	MultiChoice3,	113
.equ	DrawBox,114	
.equ	HideBox,115	
.equ	ClearBox,116	
.equ	ShowPokemonSprite,	117
.equ	HidePokemonSprite,	118
.equ	GivePokemon,	121
.equ	GiveEgg,	122
.equ	SetPokemonPP,	123
.equ	CheckAttack,	124
.equ	BufferSpeciesName,125	
.equ	BufferFirstPartyMemberName,126	
.equ	BufferPartyMemberName,	127
.equ	BufferItemName,	128
.equ	BufferMoveName,	130
.equ	BufferNumber,	131
.equ	BufferStandardString,132	
.equ	BufferString,	133
.equ	ShowPokeMart,	134
.equ	ShowCasinoSystem,137
.equ	GotoSwitch, 138
.equ	Random,	143
.equ	GiveMoney,144	
.equ	RemoveMoney,145	
.equ	CheckPlayerMoney,146	
.equ	ShowMoney,	147
.equ	HideMoney,	148
.equ	UpdateMoney,	149
.equ	FadeScreen,	151
.equ	FadeScreenDelay,152	
.equ	DarkenScreen,	153
.equ	LightenScreen,	154
.equ	PrepareMessage2,155	
.equ	DoAnimation,	156
.equ	SetAnimation,	157
.equ	CheckAnimation,	158
.equ	SetHealingPlace,159	
.equ	CheckPlayerGender,160	
.equ	PlayCry,	161
.equ	WaitPokemonCry,	197
.equ	SetMapTile,	162
.equ	ResetWeather,	163
.equ	SetMapWeather,	164
.equ	DoWeather,	165
.equ	ManageTileChanges,166	
.equ	SetMapFooter,	167
.equ	MoveSpriteUpLayer,168	
.equ	RestoreDefaultSpriteLevel,169	
.equ	CreateVirtualSprite,	170
.equ	SpriteFace2,	171
.equ	SetDoorOpened,	172
.equ	SetDoorClosed,	173
.equ	DoDoorChange,	174
.equ	SetDoorOpenedNoAnimation,175	
.equ	SetDoorClosedNoAnimation,176		
.equ	CheckCoins,	179
.equ	GiveCoins,	180
.equ	RemoveCoins,	181
.equ	SetupWildBattle,182	
.equ	DoWildBattle,	183
.equ	ShowCoins,	192
.equ	HideCoins,	193
.equ	UpdateCoins,	194
.equ	IncrementHiddenVariable,195	
.equ	Warp6,	196
.equ	BufferBoxName,198	
.equ	TextColour,	199	
.equ	SetSignMessageGFX,202	
.equ	SetNormalMessageGFX,203	
.equ	CompareHiddenVar,204	
.equ	SetObedience,	205
.equ	CheckObedience,	206
.equ	SetWorldMapFlag,208	
.equ	WarpTeleport2,	209
.equ	SetCaptureLocation,210	
.equ	BufferItemPluralName,212	
.equ	MultiplyVar,	214
.equ	DivideVar,	215
.equ	AddVarToVar,	216
.equ	SubVarFromVar,	217
.equ	MultiplyVarByVar,218	
.equ	DivideVarByVar,	219
.equ	CountBoxPokemon,220	
.equ	DoDoubleTrainerBattle,221	
.equ	GiveMoneyMum,	222
.equ	PayMoneyMum,	223
.equ	TransferMoney,	224
.equ	SetupDoubleWildBattle,225	
.equ	GetTimeOfDay,	226
