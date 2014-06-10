@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song159_grp, group_6
	.equ	song159_pri, 4
	.equ	song159_rev, 178
	.equ	song159_mvl, 127
	.equ	song159_key, 0
	.equ	song159_tbs, 1
	.equ	song159_exg, 1
	.equ	song159_cmp, 1

	.section .rodata
	.global	song159
	.align	2

@**************** Track 00 ****************************@

song159_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 21
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song159_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N01   , Bn5 , v127
	.byte	W02
	.byte		VOICE , 18
	.byte		N01   , Cn4 
	.byte	W02
	.byte		VOICE , 36
	.byte		N06   , Gn5 , v040
	.byte	W02
	.byte		VOL   , 58*song159_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOL   , 71*song159_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 84*song159_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 97*song159_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 110*song159_mvl/mxv
	.byte	W14
	.byte	FINE

@******************************************************@
	.align	2

song159:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song159_pri	@ Priority
	.byte	song159_rev	@ Reverb.

	.word	song159_grp

	.word	song159_0

	.end
