@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song32_grp, group_5
	.equ	song32_pri, 4
	.equ	song32_rev, 178
	.equ	song32_mvl, 127
	.equ	song32_key, 0
	.equ	song32_tbs, 1
	.equ	song32_exg, 1
	.equ	song32_cmp, 1

	.section .rodata
	.global	song32
	.align	2

@**************** Track 00 ****************************@

song32_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 126
	.byte		VOL   , 110*song32_mvl/mxv
	.byte		N01   , An2 , v112
	.byte	W01
	.byte		        En3 
	.byte	W01
	.byte		        Gn3 
	.byte	W01
	.byte	W02
	.byte		N02   , Cn3 , v092
	.byte	W01
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song32:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song32_pri	@ Priority
	.byte	song32_rev	@ Reverb.

	.word	song32_grp

	.word	song32_0

	.end
