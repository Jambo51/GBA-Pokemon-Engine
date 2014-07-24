@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song66_grp, group_5
	.equ	song66_pri, 5
	.equ	song66_rev, 178
	.equ	song66_mvl, 127
	.equ	song66_key, 0
	.equ	song66_tbs, 1
	.equ	song66_exg, 1
	.equ	song66_cmp, 1

	.section .rodata
	.global	song66
	.align	2

@**************** Track 00 ****************************@

song66_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 15
	.byte		BENDR , 2
	.byte		VOL   , 90*song66_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N24   , Ds4 , v092
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		BEND  , c_v+15
	.byte		N36   , Bn3 
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song66_1:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		VOL   , 90*song66_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N24   , Ds4 , v072
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		BEND  , c_v+15
	.byte		N36   , Bn3 
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song66:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song66_pri	@ Priority
	.byte	song66_rev	@ Reverb.

	.word	song66_grp

	.word	song66_0
	.word	song66_1

	.end
