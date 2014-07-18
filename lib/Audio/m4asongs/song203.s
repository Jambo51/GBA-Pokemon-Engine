@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song203_grp, group_6
	.equ	song203_pri, 4
	.equ	song203_rev, 178
	.equ	song203_mvl, 127
	.equ	song203_key, 0
	.equ	song203_tbs, 1
	.equ	song203_exg, 1
	.equ	song203_cmp, 1

	.text
	.global	song203
	.align	2

@**************** Track 00 ****************************@

song203_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 40
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song203_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Cn4 , v100
	.byte	W01
	.byte		        Gn3 , v064
	.byte	W01
	.byte		N03   , Bn3 , v100
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+6
	.byte		N01   , Cn4 
	.byte	W01
	.byte		        Gn3 , v064
	.byte	W02
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v-6
	.byte		N01   , Bn3 , v100
	.byte	W01
	.byte		        Gn3 , v064
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , Bn3 , v100
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song203:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song203_pri	@ Priority
	.byte	song203_rev	@ Reverb.

	.word	song203_grp

	.word	song203_0

	.end
