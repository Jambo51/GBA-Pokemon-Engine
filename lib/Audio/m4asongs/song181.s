@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song181_grp, group_6
	.equ	song181_pri, 4
	.equ	song181_rev, 178
	.equ	song181_mvl, 127
	.equ	song181_key, 0
	.equ	song181_tbs, 1
	.equ	song181_exg, 1
	.equ	song181_cmp, 1

	.text
	.global	song181
	.align	2

@**************** Track 00 ****************************@

song181_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 31
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song181_mvl/mxv
	.byte		BEND  , c_v-5
	.byte		N32   , Cn3 , v127
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-25
	.byte	W02
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v-39
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+3
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+16
	.byte	W02
	.byte		PAN   , c_v-4
	.byte		VOL   , 102*song181_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		VOL   , 97*song181_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		VOL   , 92*song181_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		VOL   , 88*song181_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		VOL   , 81*song181_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 64*song181_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W02
	.byte		PAN   , c_v+4
	.byte		VOL   , 49*song181_mvl/mxv
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 25*song181_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W05
	.byte	FINE

@******************************************************@
	.align	2

song181:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song181_pri	@ Priority
	.byte	song181_rev	@ Reverb.

	.word	song181_grp

	.word	song181_0

	.end
