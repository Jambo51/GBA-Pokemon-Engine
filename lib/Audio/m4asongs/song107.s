@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song107_grp, group_6
	.equ	song107_pri, 5
	.equ	song107_rev, 178
	.equ	song107_mvl, 127
	.equ	song107_key, 0
	.equ	song107_tbs, 1
	.equ	song107_exg, 1
	.equ	song107_cmp, 1

	.section .rodata
	.global	song107
	.align	2

@**************** Track 00 ****************************@

song107_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 16*song107_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N09   , Gn5 , v032
	.byte	W01
	.byte		VOL   , 63*song107_mvl/mxv
	.byte	W01
	.byte		        98*song107_mvl/mxv
	.byte	W01
	.byte		        110*song107_mvl/mxv
	.byte	W01
	.byte		        99*song107_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		VOL   , 63*song107_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 22*song107_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 9*song107_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W04
	.byte	FINE

@**************** Track 01 ****************************@

song107_1:
	.byte	KEYSH , 0
	.byte		VOICE , 71
	.byte		PAN   , c_v+32
	.byte		VOL   , 110*song107_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N09   , Fs4 , v060
	.byte	W06
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song107:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song107_pri	@ Priority
	.byte	song107_rev	@ Reverb.

	.word	song107_grp

	.word	song107_0
	.word	song107_1

	.end
