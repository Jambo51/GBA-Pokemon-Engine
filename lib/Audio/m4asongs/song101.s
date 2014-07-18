@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song101_grp, group_5
	.equ	song101_pri, 5
	.equ	song101_rev, 178
	.equ	song101_mvl, 127
	.equ	song101_key, 0
	.equ	song101_tbs, 1
	.equ	song101_exg, 1
	.equ	song101_cmp, 1

	.text
	.global	song101
	.align	2

@**************** Track 00 ****************************@

song101_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 50
	.byte		VOICE , 4
	.byte		BENDR , 12
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 40*song101_mvl/mxv
	.byte		BEND  , c_v+4
	.byte		N01   , Gn4 , v127
	.byte	W01
	.byte		        Gn4 , v020
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song101:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song101_pri	@ Priority
	.byte	song101_rev	@ Reverb.

	.word	song101_grp

	.word	song101_0

	.end
