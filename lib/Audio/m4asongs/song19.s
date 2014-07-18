@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song19_grp, group_5
	.equ	song19_pri, 4
	.equ	song19_rev, 178
	.equ	song19_mvl, 127
	.equ	song19_key, 0
	.equ	song19_tbs, 1
	.equ	song19_exg, 1
	.equ	song19_cmp, 1

	.text
	.global	song19
	.align	2

@**************** Track 00 ****************************@

song19_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 123
	.byte		VOL   , 75*song19_mvl/mxv
	.byte		N03   , Ds3 , v127
	.byte	W03
	.byte		TIE   , Cn4 
	.byte	W21
	.byte	W24
	.byte	W18
	.byte		VOL   , 75*song19_mvl/mxv
	.byte	W06
	.byte		        71*song19_mvl/mxv
	.byte	W05
	.byte		        67*song19_mvl/mxv
	.byte	W03
	.byte		        62*song19_mvl/mxv
	.byte	W04
	.byte		        59*song19_mvl/mxv
	.byte	W05
	.byte		        57*song19_mvl/mxv
	.byte	W03
	.byte		        54*song19_mvl/mxv
	.byte	W04
	.byte	W02
	.byte		        50*song19_mvl/mxv
	.byte	W03
	.byte		        49*song19_mvl/mxv
	.byte	W03
	.byte		        44*song19_mvl/mxv
	.byte	W04
	.byte		        41*song19_mvl/mxv
	.byte	W02
	.byte		        38*song19_mvl/mxv
	.byte	W03
	.byte		        35*song19_mvl/mxv
	.byte	W03
	.byte		        32*song19_mvl/mxv
	.byte	W04
	.byte		        28*song19_mvl/mxv
	.byte	W02
	.byte		        24*song19_mvl/mxv
	.byte	W03
	.byte		        21*song19_mvl/mxv
	.byte	W03
	.byte		        18*song19_mvl/mxv
	.byte	W04
	.byte		        14*song19_mvl/mxv
	.byte	W02
	.byte		        11*song19_mvl/mxv
	.byte	W03
	.byte		        9*song19_mvl/mxv
	.byte	W03
	.byte		        6*song19_mvl/mxv
	.byte	W04
	.byte		        3*song19_mvl/mxv
	.byte	W02
	.byte		        1*song19_mvl/mxv
	.byte	W22
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song19:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song19_pri	@ Priority
	.byte	song19_rev	@ Reverb.

	.word	song19_grp

	.word	song19_0

	.end
