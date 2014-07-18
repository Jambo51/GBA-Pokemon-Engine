@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song41_grp, group_5
	.equ	song41_pri, 4
	.equ	song41_rev, 178
	.equ	song41_mvl, 127
	.equ	song41_key, 0
	.equ	song41_tbs, 1
	.equ	song41_exg, 1
	.equ	song41_cmp, 1

	.text
	.global	song41
	.align	2

@**************** Track 00 ****************************@

song41_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 123
	.byte		VOL   , 90*song41_mvl/mxv
	.byte		N03   , Cn4 , v060
	.byte	W03
	.byte		VOL   , 62*song41_mvl/mxv
	.byte		N32   , Gs4 
	.byte	W03
	.byte		VOL   , 68*song41_mvl/mxv
	.byte	W03
	.byte		        72*song41_mvl/mxv
	.byte	W03
	.byte		        78*song41_mvl/mxv
	.byte	W03
	.byte		        85*song41_mvl/mxv
	.byte	W03
	.byte		        90*song41_mvl/mxv
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song41:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song41_pri	@ Priority
	.byte	song41_rev	@ Reverb.

	.word	song41_grp

	.word	song41_0

	.end
