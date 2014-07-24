@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song84_grp, group_6
	.equ	song84_pri, 5
	.equ	song84_rev, 178
	.equ	song84_mvl, 127
	.equ	song84_key, 0
	.equ	song84_tbs, 1
	.equ	song84_exg, 1
	.equ	song84_cmp, 1

	.section .rodata
	.global	song84
	.align	2

@**************** Track 00 ****************************@

song84_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 46
	.byte		VOL   , 94*song84_mvl/mxv
	.byte		BENDR , 2
	.byte		LFOS  , 40
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+15
	.byte		N06   , An5 , v112
	.byte	W01
	.byte		N15   , En6 , v104
	.byte	W02
	.byte	W01
	.byte		MOD   , 5
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		        0
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song84_1:
	.byte	KEYSH , 0
	.byte		VOICE , 53
	.byte		BENDR , 2
	.byte		VOL   , 43*song84_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+15
	.byte		N06   , An4 , v108
	.byte	W01
	.byte		N12   , Cs6 , v104
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song84:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song84_pri	@ Priority
	.byte	song84_rev	@ Reverb.

	.word	song84_grp

	.word	song84_0
	.word	song84_1

	.end
