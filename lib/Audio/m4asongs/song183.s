@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song183_grp, group_6
	.equ	song183_pri, 4
	.equ	song183_rev, 178
	.equ	song183_mvl, 127
	.equ	song183_key, 0
	.equ	song183_tbs, 1
	.equ	song183_exg, 1
	.equ	song183_cmp, 1

	.text
	.global	song183
	.align	2

@**************** Track 00 ****************************@

song183_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 45
	.byte		VOL   , 100*song183_mvl/mxv
	.byte		BENDR , 2
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-5
	.byte		N06   , Cn3 , v112
	.byte	W01
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+55
	.byte	W03
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v-5
	.byte		N06   , Cs3 , v096
	.byte	W01
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+55
	.byte	W03
	.byte		PAN   , c_v+7
	.byte		BEND  , c_v-5
	.byte		N06   , Dn3 , v080
	.byte	W01
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+55
	.byte	W03
	.byte		PAN   , c_v-14
	.byte		BEND  , c_v-5
	.byte		N06   , Ds3 , v060
	.byte	W01
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+55
	.byte	W03
	.byte		PAN   , c_v+14
	.byte		BEND  , c_v-5
	.byte		N06   , En3 , v040
	.byte	W01
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+55
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song183:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song183_pri	@ Priority
	.byte	song183_rev	@ Reverb.

	.word	song183_grp

	.word	song183_0

	.end
