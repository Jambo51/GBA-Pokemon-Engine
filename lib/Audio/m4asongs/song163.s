@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song163_grp, group_6
	.equ	song163_pri, 4
	.equ	song163_rev, 178
	.equ	song163_mvl, 127
	.equ	song163_key, 0
	.equ	song163_tbs, 1
	.equ	song163_exg, 1
	.equ	song163_cmp, 1

	.text
	.global	song163
	.align	2

@**************** Track 00 ****************************@

song163_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 38
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*song163_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N05   , Fs2 , v127
	.byte	W01
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N11
	.byte	W02
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v-3
	.byte	W02
	.byte		        c_v+3
	.byte	W01
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v-28
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song163:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song163_pri	@ Priority
	.byte	song163_rev	@ Reverb.

	.word	song163_grp

	.word	song163_0

	.end
