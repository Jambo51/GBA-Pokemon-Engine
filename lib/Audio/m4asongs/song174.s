@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song174_grp, group_6
	.equ	song174_pri, 4
	.equ	song174_rev, 178
	.equ	song174_mvl, 127
	.equ	song174_key, 0
	.equ	song174_tbs, 1
	.equ	song174_exg, 1
	.equ	song174_cmp, 1

	.text
	.global	song174
	.align	2

@**************** Track 00 ****************************@

song174_0:
	.byte		VOL   , 110*song174_mvl/mxv
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 44
	.byte		BENDR , 2
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N21   , Fs5 , v112
	.byte	W01
	.byte		PAN   , c_v-5
	.byte	W01
	.byte		        c_v-10
	.byte		VOL   , 15*song174_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		VOL   , 41*song174_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 69*song174_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+4
	.byte	W01
	.byte		        c_v+10
	.byte		VOL   , 84*song174_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+4
	.byte	W01
	.byte		VOL   , 97*song174_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		VOL   , 110*song174_mvl/mxv
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+10
	.byte	W02
	.byte		VOL   , 100*song174_mvl/mxv
	.byte		PAN   , c_v+4
	.byte	W01
	.byte		VOL   , 84*song174_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 55*song174_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song174_1:
	.byte		VOL   , 110*song174_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 42
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N21   , Fn6 , v064
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song174:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song174_pri	@ Priority
	.byte	song174_rev	@ Reverb.

	.word	song174_grp

	.word	song174_0
	.word	song174_1

	.end
