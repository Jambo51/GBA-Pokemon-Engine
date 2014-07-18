@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song188_grp, group_6
	.equ	song188_pri, 4
	.equ	song188_rev, 178
	.equ	song188_mvl, 127
	.equ	song188_key, 0
	.equ	song188_tbs, 1
	.equ	song188_exg, 1
	.equ	song188_cmp, 1

	.text
	.global	song188
	.align	2

@**************** Track 00 ****************************@

song188_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 51
	.byte		BENDR , 2
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song188_mvl/mxv
	.byte		BEND  , c_v+4
	.byte		N03   , As5 , v100
	.byte	W01
	.byte		PAN   , c_v-13
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+1
	.byte		N01   , An5 
	.byte	W01
	.byte		MOD   , 7
	.byte		N18   , Bn5 
	.byte	W02
	.byte		PAN   , c_v+11
	.byte	W01
	.byte		MOD   , 0
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v+11
	.byte	W02
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		MOD   , 7
	.byte		PAN   , c_v-14
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v-13
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song188:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song188_pri	@ Priority
	.byte	song188_rev	@ Reverb.

	.word	song188_grp

	.word	song188_0

	.end
