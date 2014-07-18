@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song72_grp, group_5
	.equ	song72_pri, 5
	.equ	song72_rev, 178
	.equ	song72_mvl, 127
	.equ	song72_key, 0
	.equ	song72_tbs, 1
	.equ	song72_exg, 1
	.equ	song72_cmp, 1

	.text
	.global	song72
	.align	2

@**************** Track 00 ****************************@

song72_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 16
	.byte		BENDR , 12
	.byte		VOL   , 110*song72_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Ds3 , v100
	.byte	W04
	.byte		N02
	.byte	W05
	.byte		N02
	.byte	W05
	.byte		N02
	.byte	W05
	.byte		N02
	.byte	W05
	.byte	FINE

@******************************************************@
	.align	2

song72:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song72_pri	@ Priority
	.byte	song72_rev	@ Reverb.

	.word	song72_grp

	.word	song72_0

	.end
