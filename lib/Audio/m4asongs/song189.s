@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song189_grp, group_6
	.equ	song189_pri, 4
	.equ	song189_rev, 178
	.equ	song189_mvl, 127
	.equ	song189_key, 0
	.equ	song189_tbs, 1
	.equ	song189_exg, 1
	.equ	song189_cmp, 1

	.text
	.global	song189
	.align	2

@**************** Track 00 ****************************@

song189_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 52
	.byte		VOL   , 127*song189_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , As3 , v120
	.byte	W01
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-1
	.byte		N12   , As2 , v127
	.byte	W03
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+28
	.byte	W02
	.byte		        c_v+35
	.byte	W01
	.byte		PAN   , c_v-10
	.byte	W02
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , As3 , v108
	.byte	W01
	.byte		BEND  , c_v-8
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-1
	.byte		N12   , As2 
	.byte	W02
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+8
	.byte	W03
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		PAN   , c_v-10
	.byte	W03
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , As3 , v072
	.byte	W01
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-1
	.byte		N12   , As2 
	.byte	W03
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+18
	.byte	W02
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		        c_v+35
	.byte	W01
	.byte		PAN   , c_v-10
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song189:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song189_pri	@ Priority
	.byte	song189_rev	@ Reverb.

	.word	song189_grp

	.word	song189_0

	.end
