@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song192_grp, group_6
	.equ	song192_pri, 4
	.equ	song192_rev, 178
	.equ	song192_mvl, 127
	.equ	song192_key, 0
	.equ	song192_tbs, 1
	.equ	song192_exg, 1
	.equ	song192_cmp, 1

	.section .rodata
	.global	song192
	.align	2

@**************** Track 00 ****************************@

song192_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song192_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gn2 , v127
	.byte	W02
	.byte		PAN   , c_v+3
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOICE , 23
	.byte		N02   , Cn3 , v104
	.byte	W01
	.byte		PAN   , c_v-3
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		VOICE , 36
	.byte		N02   , Cn2 , v127
	.byte	W01
	.byte		PAN   , c_v+7
	.byte	W01
	.byte		VOICE , 23
	.byte		BEND  , c_v+4
	.byte		N06   , Cn3 , v104
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		VOICE , 36
	.byte		BEND  , c_v+0
	.byte		N03   , An2 , v100
	.byte	W04
	.byte		PAN   , c_v+5
	.byte		N03   , Bn2 , v076
	.byte	W03
	.byte		PAN   , c_v-6
	.byte		N02   , Cs3 , v040
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song192:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song192_pri	@ Priority
	.byte	song192_rev	@ Reverb.

	.word	song192_grp

	.word	song192_0

	.end
