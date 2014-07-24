@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song36_grp, group_5
	.equ	song36_pri, 4
	.equ	song36_rev, 178
	.equ	song36_mvl, 127
	.equ	song36_key, 0
	.equ	song36_tbs, 1
	.equ	song36_exg, 1
	.equ	song36_cmp, 1

	.section .rodata
	.global	song36
	.align	2

@**************** Track 00 ****************************@

song36_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 9
	.byte		VOL   , 100*song36_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Gn5 , v088
	.byte	W01
	.byte		N01
	.byte	W02
	.byte		        Cn6 , v072
	.byte	W03
	.byte		        Cn6 , v056
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song36_1:
	.byte	KEYSH , 0
	.byte		VOICE , 122
	.byte		VOL   , 100*song36_mvl/mxv
	.byte		N01   , Gn2 , v112
	.byte	W02
	.byte		VOICE , 123
	.byte	W01
	.byte		N01   , Gs4 , v096
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song36:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song36_pri	@ Priority
	.byte	song36_rev	@ Reverb.

	.word	song36_grp

	.word	song36_0
	.word	song36_1

	.end
