@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song48_grp, group_6
	.equ	song48_pri, 5
	.equ	song48_rev, 178
	.equ	song48_mvl, 127
	.equ	song48_key, 0
	.equ	song48_tbs, 1
	.equ	song48_exg, 1
	.equ	song48_cmp, 1

	.text
	.global	song48
	.align	2

@**************** Track 00 ****************************@

song48_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 14
	.byte		VOL   , 80*song48_mvl/mxv
	.byte		BEND  , c_v+17
	.byte		N03   , En3 , v096
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		N06   , Cn5 
	.byte	W06
	.byte		N24   , Cn6 
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song48_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 80*song48_mvl/mxv
	.byte		N03   , En3 , v100
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		N06   , Cn5 
	.byte	W06
	.byte		N24   , Cn6 
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song48:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song48_pri	@ Priority
	.byte	song48_rev	@ Reverb.

	.word	song48_grp

	.word	song48_0
	.word	song48_1

	.end
