@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song202_grp, group_6
	.equ	song202_pri, 4
	.equ	song202_rev, 178
	.equ	song202_mvl, 127
	.equ	song202_key, 0
	.equ	song202_tbs, 1
	.equ	song202_exg, 1
	.equ	song202_cmp, 1

	.text
	.global	song202
	.align	2

@**************** Track 00 ****************************@

song202_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 54
	.byte		VOL   , 100*song202_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte		N03   , As5 , v127
	.byte	W01
	.byte		PAN   , c_v+2
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+1
	.byte		N06   , Bn5 
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W02
	.byte	W03
	.byte		BEND  , c_v+1
	.byte		N03   , As5 , v104
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		BEND  , c_v+2
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+1
	.byte		N06   , Bn5 
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+1
	.byte		N03   , As5 , v080
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+1
	.byte		N06   , Bn5 
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W04
	.byte		BEND  , c_v+1
	.byte		N03   , As5 , v048
	.byte	W02
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+1
	.byte		N06   , Bn5 
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W03
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song202:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song202_pri	@ Priority
	.byte	song202_rev	@ Reverb.

	.word	song202_grp

	.word	song202_0

	.end
