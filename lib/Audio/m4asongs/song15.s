@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song15_grp, group_5
	.equ	song15_pri, 5
	.equ	song15_rev, 178
	.equ	song15_mvl, 127
	.equ	song15_key, 0
	.equ	song15_tbs, 1
	.equ	song15_exg, 1
	.equ	song15_cmp, 1

	.text
	.global	song15
	.align	2

@**************** Track 00 ****************************@

song15_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 45
	.byte		VOICE , 86
	.byte		VOL   , 100*song15_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Gn1 , v100
	.byte	W03
	.byte		N05   , Fn2 
	.byte	W03
	.byte	W03
	.byte		N06   , Fn2 , v052
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song15_1:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 100*song15_mvl/mxv
	.byte		BENDR , 12
	.byte		BEND  , c_v+0
	.byte		N03   , Gn3 , v052
	.byte	W03
	.byte		        Cn2 , v112
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v092
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 02 ****************************@

song15_2:
	.byte	KEYSH , 0
	.byte		VOICE , 124
	.byte		VOL   , 100*song15_mvl/mxv
	.byte		N03   , Gn3 , v052
	.byte	W03
	.byte		N06   , Gs4 
	.byte	W03
	.byte	W03
	.byte		        Gs4 , v020
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song15:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song15_pri	@ Priority
	.byte	song15_rev	@ Reverb.

	.word	song15_grp

	.word	song15_0
	.word	song15_1
	.word	song15_2

	.end
