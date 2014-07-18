@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song155_grp, group_6
	.equ	song155_pri, 4
	.equ	song155_rev, 178
	.equ	song155_mvl, 127
	.equ	song155_key, 0
	.equ	song155_tbs, 1
	.equ	song155_exg, 1
	.equ	song155_cmp, 1

	.text
	.global	song155
	.align	2

@**************** Track 00 ****************************@

song155_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 25*song155_mvl/mxv
	.byte		BEND  , c_v-48
	.byte		N07   , Cn1 , v127
	.byte	W01
	.byte		VOL   , 41*song155_mvl/mxv
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		PAN   , c_v+7
	.byte		VOL   , 57*song155_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 79*song155_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v+11
	.byte		VOL   , 110*song155_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W02
	.byte		        c_v+32
	.byte	W01
	.byte		PAN   , c_v+14
	.byte	W01
	.byte		VOL   , 25*song155_mvl/mxv
	.byte		BEND  , c_v-48
	.byte		N07   , Dn1 
	.byte	W01
	.byte		PAN   , c_v+19
	.byte		VOL   , 41*song155_mvl/mxv
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		VOL   , 57*song155_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		VOL   , 79*song155_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 110*song155_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+32
	.byte	W02
	.byte		PAN   , c_v-11
	.byte	W03
	.byte		        c_v-15
	.byte	W05
	.byte		VOL   , 110*song155_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

song155:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song155_pri	@ Priority
	.byte	song155_rev	@ Reverb.

	.word	song155_grp

	.word	song155_0

	.end
