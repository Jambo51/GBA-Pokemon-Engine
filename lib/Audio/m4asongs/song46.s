@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song46_grp, group_6
	.equ	song46_pri, 4
	.equ	song46_rev, 178
	.equ	song46_mvl, 127
	.equ	song46_key, 0
	.equ	song46_tbs, 1
	.equ	song46_exg, 1
	.equ	song46_cmp, 1

	.section .rodata
	.global	song46
	.align	2

@**************** Track 00 ****************************@

song46_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 8
	.byte		VOL   , 110*song46_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Cn2 , v092
	.byte	W06
	.byte		N01   , Cn3 
	.byte	W02
	.byte		N02   , Cn4 
	.byte	W04
	.byte	FINE

@**************** Track 01 ****************************@

song46_1:
	.byte		VOL   , 110*song46_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		N03   , Cn2 , v032
	.byte	W05
	.byte		N01   , Cn4 
	.byte	W01
	.byte	W02
	.byte		N02
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song46:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song46_pri	@ Priority
	.byte	song46_rev	@ Reverb.

	.word	song46_grp

	.word	song46_0
	.word	song46_1

	.end
