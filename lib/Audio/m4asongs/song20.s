@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song20_grp, group_6
	.equ	song20_pri, 4
	.equ	song20_rev, 178
	.equ	song20_mvl, 127
	.equ	song20_key, 0
	.equ	song20_tbs, 1
	.equ	song20_exg, 1
	.equ	song20_cmp, 1

	.section .rodata
	.global	song20
	.align	2

@**************** Track 00 ****************************@

song20_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 120
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		VOL   , 110*song20_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , En2 , v127
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N60   , An2 
	.byte	W12
	.byte	W24
	.byte		VOL   , 94*song20_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W03
	.byte		VOL   , 81*song20_mvl/mxv
	.byte	W03
	.byte		        71*song20_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		VOL   , 47*song20_mvl/mxv
	.byte	W03
	.byte		        32*song20_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W03
	.byte		VOL   , 20*song20_mvl/mxv
	.byte	W03
	.byte		        7*song20_mvl/mxv
	.byte		BEND  , c_v-28
	.byte	W03
	.byte		VOL   , 0*song20_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song20:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song20_pri	@ Priority
	.byte	song20_rev	@ Reverb.

	.word	song20_grp

	.word	song20_0

	.end
