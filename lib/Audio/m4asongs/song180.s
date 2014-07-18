@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song180_grp, group_6
	.equ	song180_pri, 4
	.equ	song180_rev, 178
	.equ	song180_mvl, 127
	.equ	song180_key, 0
	.equ	song180_tbs, 1
	.equ	song180_exg, 1
	.equ	song180_cmp, 1

	.text
	.global	song180
	.align	2

@**************** Track 00 ****************************@

song180_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 24
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song180_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Cn5 , v127
	.byte	W01
	.byte		PAN   , c_v+10
	.byte		N01   , Cn6 
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N01   , Cn5 
	.byte	W04
	.byte		N01
	.byte	W01
	.byte		PAN   , c_v-11
	.byte		N01   , Cn6 
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N01   , Cn5 
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song180:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song180_pri	@ Priority
	.byte	song180_rev	@ Reverb.

	.word	song180_grp

	.word	song180_0

	.end
