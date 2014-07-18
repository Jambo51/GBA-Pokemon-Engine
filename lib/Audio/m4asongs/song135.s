@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song135_grp, group_6
	.equ	song135_pri, 4
	.equ	song135_rev, 178
	.equ	song135_mvl, 127
	.equ	song135_key, 0
	.equ	song135_tbs, 1
	.equ	song135_exg, 1
	.equ	song135_cmp, 1

	.text
	.global	song135
	.align	2

@**************** Track 00 ****************************@

song135_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 23
	.byte		VOL   , 100*song135_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+2
	.byte		N02   , Dn3 , v127
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		BEND  , c_v+4
	.byte	W02
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v+6
	.byte		N02   , Dn3 , v084
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+9
	.byte	W02
	.byte		        c_v-1
	.byte	W02
	.byte		        c_v+32
	.byte		N02   , Dn3 , v056
	.byte	W16
	.byte	FINE

@******************************************************@
	.align	2

song135:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song135_pri	@ Priority
	.byte	song135_rev	@ Reverb.

	.word	song135_grp

	.word	song135_0

	.end
