@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song187_grp, group_6
	.equ	song187_pri, 4
	.equ	song187_rev, 178
	.equ	song187_mvl, 127
	.equ	song187_key, 0
	.equ	song187_tbs, 1
	.equ	song187_exg, 1
	.equ	song187_cmp, 1

	.text
	.global	song187
	.align	2

@**************** Track 00 ****************************@

song187_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 56
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 65*song187_mvl/mxv
	.byte		BEND  , c_v+8
	.byte		N01   , Cs6 , v112
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N01   , Dn6 , v100
	.byte	W01
	.byte		        Dn6 , v060
	.byte	W04
	.byte		BEND  , c_v-8
	.byte		N01   , Ds6 , v112
	.byte	W01
	.byte		BEND  , c_v+0
	.byte		N01   , En6 , v100
	.byte	W01
	.byte		        En6 , v060
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song187:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song187_pri	@ Priority
	.byte	song187_rev	@ Reverb.

	.word	song187_grp

	.word	song187_0

	.end
