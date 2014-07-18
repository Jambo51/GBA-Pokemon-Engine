@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song14_grp, group_5
	.equ	song14_pri, 5
	.equ	song14_rev, 178
	.equ	song14_mvl, 127
	.equ	song14_key, 0
	.equ	song14_tbs, 1
	.equ	song14_exg, 1
	.equ	song14_cmp, 1

	.text
	.global	song14
	.align	2

@**************** Track 00 ****************************@

song14_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 45
	.byte		VOICE , 125
	.byte		VOL   , 110*song14_mvl/mxv
	.byte		N03   , Cn3 , v100
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		N06   , Gn3 , v072
	.byte	W03
	.byte	W03
	.byte		N03   , Cn3 , v052
	.byte	W03
	.byte		N06   , Gn3 , v048
	.byte	W03
	.byte	W03
	.byte		N03   , Cn3 , v028
	.byte	W03
	.byte		N06   , Gn3 
	.byte	W03
	.byte	W03
	.byte		N03   , Cn3 
	.byte	W03
	.byte		N06   , Gn3 
	.byte	W03
	.byte	W03
	.byte		N03   , Cn3 , v012
	.byte	W03
	.byte		N06   , Gn3 
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song14_1:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 110*song14_mvl/mxv
	.byte		N03   , Cn4 , v127
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N06   , Gn3 , v088
	.byte	W03
	.byte	W03
	.byte		N03   , Cn3 , v064
	.byte	W03
	.byte		N06   , Gn3 
	.byte	W03
	.byte	W03
	.byte		N03   , Cn3 , v044
	.byte	W03
	.byte		N06   , Gn3 
	.byte	W03
	.byte	W03
	.byte		N03   , Cn3 , v028
	.byte	W03
	.byte		N06   , Gn3 
	.byte	W03
	.byte	W03
	.byte		N03   , Cn3 , v012
	.byte	W03
	.byte		N06   , Gn3 
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song14:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song14_pri	@ Priority
	.byte	song14_rev	@ Reverb.

	.word	song14_grp

	.word	song14_0
	.word	song14_1

	.end
