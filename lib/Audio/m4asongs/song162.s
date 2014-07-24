@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song162_grp, group_6
	.equ	song162_pri, 4
	.equ	song162_rev, 178
	.equ	song162_mvl, 127
	.equ	song162_key, 0
	.equ	song162_tbs, 1
	.equ	song162_exg, 1
	.equ	song162_cmp, 1

	.section .rodata
	.global	song162
	.align	2

@**************** Track 00 ****************************@

song162_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 18
	.byte		BENDR , 12
	.byte		VOL   , 55*song162_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte		N01   , Cn6 , v100
	.byte	W01
	.byte		VOL   , 110*song162_mvl/mxv
	.byte	W01
	.byte		VOICE , 36
	.byte		VOL   , 55*song162_mvl/mxv
	.byte		N02   , Gn6 , v080
	.byte	W01
	.byte		VOL   , 110*song162_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+20
	.byte		N01   , Gn6 , v024
	.byte	W03
	.byte		        Gn6 , v016
	.byte	W02
	.byte		PAN   , c_v-21
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song162:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song162_pri	@ Priority
	.byte	song162_rev	@ Reverb.

	.word	song162_grp

	.word	song162_0

	.end
