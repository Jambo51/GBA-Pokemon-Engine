@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song323_grp, group_57
	.equ	song323_pri, 0
	.equ	song323_rev, 178
	.equ	song323_mvl, 127
	.equ	song323_key, 0
	.equ	song323_tbs, 1
	.equ	song323_exg, 1
	.equ	song323_cmp, 1

	.text
	.global	song323
	.align	2

@**************** Track 00 ****************************@

song323_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 0
	.byte		VOL   , 85*song323_mvl/mxv
	.byte		N03   , En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PEND
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v120
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song323_0 + 0x12
	.byte	PATT
	 .word	song323_0 + 0x34
	.byte	GOTO
	 .word	song323_0 + 0x12
	.byte	FINE

@******************************************************@
	.align	2

song323:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song323_pri	@ Priority
	.byte	song323_rev	@ Reverb.

	.word	song323_grp

	.word	song323_0

	.end
