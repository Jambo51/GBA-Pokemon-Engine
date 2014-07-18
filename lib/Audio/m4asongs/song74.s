@ Songgroup: 3

	.include "MPlayDef.s"

	.equ	song74_grp, group_6
	.equ	song74_pri, 2
	.equ	song74_rev, 178
	.equ	song74_mvl, 127
	.equ	song74_key, 0
	.equ	song74_tbs, 1
	.equ	song74_exg, 1
	.equ	song74_cmp, 1

	.text
	.global	song74
	.align	2

@**************** Track 00 ****************************@

song74_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 15*song74_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Gn3 , v060
	.byte	W03
	.byte		VOL   , 27*song74_mvl/mxv
	.byte	W03
	.byte		        39*song74_mvl/mxv
	.byte	W03
	.byte		        44*song74_mvl/mxv
	.byte	W03
	.byte		        52*song74_mvl/mxv
	.byte	W03
	.byte		        59*song74_mvl/mxv
	.byte	W03
	.byte		        68*song74_mvl/mxv
	.byte	W03
	.byte		        80*song74_mvl/mxv
	.byte	W03
	.byte		N60   , Gn3 , v060
	.byte	W24
	.byte	W24
	.byte	W12
	.byte	GOTO
	 .word	song74_0 + 0x21
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song74:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song74_pri	@ Priority
	.byte	song74_rev	@ Reverb.

	.word	song74_grp

	.word	song74_0

	.end
