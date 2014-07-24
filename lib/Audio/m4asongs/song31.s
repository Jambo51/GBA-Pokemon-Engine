@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song31_grp, group_5
	.equ	song31_pri, 4
	.equ	song31_rev, 178
	.equ	song31_mvl, 127
	.equ	song31_key, 0
	.equ	song31_tbs, 1
	.equ	song31_exg, 1
	.equ	song31_cmp, 1

	.section .rodata
	.global	song31
	.align	2

@**************** Track 00 ****************************@

song31_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 126
	.byte		VOL   , 120*song31_mvl/mxv
	.byte		N01   , Cn3 , v068
	.byte	W01
	.byte		        En3 , v064
	.byte	W01
	.byte		        Gn3 
	.byte	W03
	.byte		N02   , An2 , v048
	.byte	W08
	.byte		N01   , Cn3 , v068
	.byte	W01
	.byte		        En3 , v064
	.byte	W01
	.byte		        Gn3 
	.byte	W03
	.byte		N02   , An2 , v048
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song31:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song31_pri	@ Priority
	.byte	song31_rev	@ Reverb.

	.word	song31_grp

	.word	song31_0

	.end
