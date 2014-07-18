@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song16_grp, group_5
	.equ	song16_pri, 5
	.equ	song16_rev, 178
	.equ	song16_mvl, 127
	.equ	song16_key, 0
	.equ	song16_tbs, 1
	.equ	song16_exg, 1
	.equ	song16_cmp, 1

	.text
	.global	song16
	.align	2

@**************** Track 00 ****************************@

song16_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 45
	.byte		VOICE , 90
	.byte		VOL   , 110*song16_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N09   , Cn4 , v100
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song16_1:
	.byte	KEYSH , 0
	.byte		VOICE , 124
	.byte		BENDR , 12
	.byte		VOL   , 82*song16_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N05   , Gs4 , v060
	.byte	W03
	.byte		VOL   , 94*song16_mvl/mxv
	.byte	W03
	.byte		        103*song16_mvl/mxv
	.byte		N22
	.byte	W03
	.byte		VOL   , 110*song16_mvl/mxv
	.byte	W03
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@**************** Track 02 ****************************@

song16_2:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 110*song16_mvl/mxv
	.byte		N06   , Cn3 , v080
	.byte	W06
	.byte		N18   , Cn3 , v092
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song16:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song16_pri	@ Priority
	.byte	song16_rev	@ Reverb.

	.word	song16_grp

	.word	song16_0
	.word	song16_1
	.word	song16_2

	.end
