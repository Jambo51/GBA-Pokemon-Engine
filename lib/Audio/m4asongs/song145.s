@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song145_grp, group_6
	.equ	song145_pri, 4
	.equ	song145_rev, 178
	.equ	song145_mvl, 127
	.equ	song145_key, 0
	.equ	song145_tbs, 1
	.equ	song145_exg, 1
	.equ	song145_cmp, 1

	.text
	.global	song145
	.align	2

@**************** Track 00 ****************************@

song145_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 105*song145_mvl/mxv
	.byte		BEND  , c_v-48
	.byte		N10   , Gn0 , v127
	.byte	W02
	.byte		PAN   , c_v+7
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+15
	.byte	W01
	.byte		PAN   , c_v+14
	.byte	W01
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		PAN   , c_v+19
	.byte	W03
	.byte		        c_v+0
	.byte		VOL   , 105*song145_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		N10
	.byte	W02
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		PAN   , c_v-11
	.byte		BEND  , c_v+16
	.byte	W02
	.byte		        c_v+32
	.byte	W01
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		PAN   , c_v-20
	.byte	W03
	.byte		        c_v+0
	.byte		VOL   , 105*song145_mvl/mxv
	.byte		BEND  , c_v-16
	.byte		N10
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+47
	.byte	W02
	.byte		        c_v+63
	.byte	W16
	.byte	FINE

@******************************************************@
	.align	2

song145:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song145_pri	@ Priority
	.byte	song145_rev	@ Reverb.

	.word	song145_grp

	.word	song145_0

	.end
