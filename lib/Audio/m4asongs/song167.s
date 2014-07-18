@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song167_grp, group_6
	.equ	song167_pri, 4
	.equ	song167_rev, 178
	.equ	song167_mvl, 127
	.equ	song167_key, 0
	.equ	song167_tbs, 1
	.equ	song167_exg, 1
	.equ	song167_cmp, 1

	.text
	.global	song167
	.align	2

@**************** Track 00 ****************************@

song167_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 39
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 95*song167_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , An5 , v100
	.byte	W01
	.byte		        Fn5 , v064
	.byte	W01
	.byte		N06   , Gn5 , v100
	.byte	W01
	.byte		VOL   , 85*song167_mvl/mxv
	.byte		PAN   , c_v-13
	.byte	W01
	.byte		VOL   , 59*song167_mvl/mxv
	.byte		PAN   , c_v+11
	.byte	W02
	.byte		VOL   , 33*song167_mvl/mxv
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		VOL   , 5*song167_mvl/mxv
	.byte		PAN   , c_v+11
	.byte	W03
	.byte		VOL   , 95*song167_mvl/mxv
	.byte		PAN   , c_v+1
	.byte		N01   , An5 
	.byte	W02
	.byte		        Fn5 , v064
	.byte	W01
	.byte		N19   , Gn5 , v100
	.byte	W01
	.byte		PAN   , c_v-13
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v+11
	.byte		VOL   , 85*song167_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-14
	.byte		VOL   , 77*song167_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+11
	.byte		VOL   , 69*song167_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-13
	.byte		VOL   , 59*song167_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+11
	.byte		VOL   , 52*song167_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-14
	.byte		VOL   , 41*song167_mvl/mxv
	.byte	W01
	.byte		        33*song167_mvl/mxv
	.byte		PAN   , c_v+11
	.byte	W01
	.byte		VOL   , 23*song167_mvl/mxv
	.byte		PAN   , c_v-14
	.byte	W02
	.byte		VOL   , 14*song167_mvl/mxv
	.byte		PAN   , c_v+11
	.byte	W01
	.byte		VOL   , 5*song167_mvl/mxv
	.byte		PAN   , c_v-13
	.byte	W05
	.byte	FINE

@******************************************************@
	.align	2

song167:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song167_pri	@ Priority
	.byte	song167_rev	@ Reverb.

	.word	song167_grp

	.word	song167_0

	.end
