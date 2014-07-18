@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song224_grp, group_6
	.equ	song224_pri, 4
	.equ	song224_rev, 178
	.equ	song224_mvl, 127
	.equ	song224_key, 0
	.equ	song224_tbs, 1
	.equ	song224_exg, 1
	.equ	song224_cmp, 1

	.text
	.global	song224
	.align	2

@**************** Track 00 ****************************@

song224_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 50
	.byte		VOICE , 64
	.byte		BENDR , 2
	.byte		LFOS  , 40
	.byte		PAN   , c_v+0
	.byte		VOL   , 70*song224_mvl/mxv
	.byte		BEND  , c_v-16
	.byte		N21   , Gn5 , v112
	.byte	W03
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		MOD   , 10
	.byte	W03
	.byte	W09
	.byte		        0
	.byte	W03
	.byte		N09   , An5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		BEND  , c_v-14
	.byte		N66   , Gn5 
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		MOD   , 10
	.byte	W12
	.byte	W12
	.byte	W06
	.byte		VOL   , 61*song224_mvl/mxv
	.byte	W06
	.byte		        51*song224_mvl/mxv
	.byte	W06
	.byte		        36*song224_mvl/mxv
	.byte	W06
	.byte		        18*song224_mvl/mxv
	.byte	W12
	.byte	FINE

@**************** Track 01 ****************************@

song224_1:
	.byte	KEYSH , 0
	.byte		VOICE , 64
	.byte		BENDR , 2
	.byte		LFOS  , 40
	.byte		VOL   , 70*song224_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+12
	.byte		BEND  , c_v-16
	.byte		N21   , Gn5 , v072
	.byte	W03
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		MOD   , 10
	.byte	W03
	.byte	W09
	.byte		        0
	.byte	W03
	.byte		PAN   , c_v-12
	.byte		N09   , An5 
	.byte	W12
	.byte		PAN   , c_v+14
	.byte		N09   , En5 
	.byte	W12
	.byte		PAN   , c_v-15
	.byte		BEND  , c_v-14
	.byte		N66   , Gn5 
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		MOD   , 10
	.byte	W12
	.byte	W06
	.byte		VOL   , 61*song224_mvl/mxv
	.byte	W06
	.byte		        51*song224_mvl/mxv
	.byte	W06
	.byte		        36*song224_mvl/mxv
	.byte	W06
	.byte		        18*song224_mvl/mxv
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song224:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song224_pri	@ Priority
	.byte	song224_rev	@ Reverb.

	.word	song224_grp

	.word	song224_0
	.word	song224_1

	.end
