@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song121_grp, group_6
	.equ	song121_pri, 4
	.equ	song121_rev, 178
	.equ	song121_mvl, 127
	.equ	song121_key, 0
	.equ	song121_tbs, 1
	.equ	song121_exg, 1
	.equ	song121_cmp, 1

	.text
	.global	song121
	.align	2

@**************** Track 00 ****************************@

song121_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 120*song121_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N15   , Cn3 , v108
	.byte	W03
	.byte		VOL   , 102*song121_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		VOL   , 88*song121_mvl/mxv
	.byte	W03
	.byte		        75*song121_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		VOL   , 55*song121_mvl/mxv
	.byte	W03
	.byte		VOICE , 18
	.byte		VOL   , 120*song121_mvl/mxv
	.byte		PAN   , c_v+14
	.byte		BEND  , c_v+0
	.byte		N09   , Cn5 , v092
	.byte	W03
	.byte		PAN   , c_v-15
	.byte		BEND  , c_v-32
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+28
	.byte	W03
	.byte		VOICE , 2
	.byte		BEND  , c_v-64
	.byte		N21   , Cn3 , v108
	.byte	W03
	.byte		BEND  , c_v-55
	.byte	W03
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v-45
	.byte	W03
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v+30
	.byte	W03
	.byte		PAN   , c_v+15
	.byte		BEND  , c_v+39
	.byte	W03
	.byte		PAN   , c_v-15
	.byte		BEND  , c_v+54
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song121_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		PAN   , c_v+0
	.byte		VOL   , 120*song121_mvl/mxv
	.byte		N15   , Cn2 , v040
	.byte	W15
	.byte		N06   , Fs3 
	.byte	W09
	.byte		N24   , Gs3 
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song121:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song121_pri	@ Priority
	.byte	song121_rev	@ Reverb.

	.word	song121_grp

	.word	song121_0
	.word	song121_1

	.end
