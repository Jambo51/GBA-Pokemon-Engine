@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song68_grp, group_6
	.equ	song68_pri, 4
	.equ	song68_rev, 178
	.equ	song68_mvl, 127
	.equ	song68_key, 0
	.equ	song68_tbs, 1
	.equ	song68_exg, 1
	.equ	song68_cmp, 1

	.section .rodata
	.global	song68
	.align	2

@**************** Track 00 ****************************@

song68_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 120
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		VOL   , 105*song68_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gn4 , v127
	.byte	W04
	.byte		N01   , Gn4 , v112
	.byte	W02
	.byte	W02
	.byte		        Gs3 , v052
	.byte	W04
	.byte		VOICE , 23
	.byte		N02   , Fn3 , v112
	.byte	W04
	.byte		N01   , Cn4 , v072
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song68:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song68_pri	@ Priority
	.byte	song68_rev	@ Reverb.

	.word	song68_grp

	.word	song68_0

	.end
