@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song38_grp, group_6
	.equ	song38_pri, 4
	.equ	song38_rev, 178
	.equ	song38_mvl, 127
	.equ	song38_key, 0
	.equ	song38_tbs, 1
	.equ	song38_exg, 1
	.equ	song38_cmp, 1

	.section .rodata
	.global	song38
	.align	2

@**************** Track 00 ****************************@

song38_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 8
	.byte		VOL   , 100*song38_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Cn3 , v127
	.byte	W02
	.byte		N02   , Gn2 
	.byte	W04
	.byte		N17   , Cn3 
	.byte	W06
	.byte		VOL   , 98*song38_mvl/mxv
	.byte	W01
	.byte		        91*song38_mvl/mxv
	.byte	W01
	.byte		        81*song38_mvl/mxv
	.byte	W02
	.byte		        75*song38_mvl/mxv
	.byte	W01
	.byte		        60*song38_mvl/mxv
	.byte	W01
	.byte		        42*song38_mvl/mxv
	.byte	W01
	.byte		        25*song38_mvl/mxv
	.byte	W02
	.byte		        10*song38_mvl/mxv
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song38_1:
	.byte		VOL   , 100*song38_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		N01   , Cn3 , v064
	.byte	W02
	.byte		N02
	.byte	W04
	.byte		N02
	.byte	W18
	.byte	FINE

@******************************************************@
	.align	2

song38:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song38_pri	@ Priority
	.byte	song38_rev	@ Reverb.

	.word	song38_grp

	.word	song38_0
	.word	song38_1

	.end
