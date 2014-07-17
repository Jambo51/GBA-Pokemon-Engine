@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song241_grp, group_7
	.equ	song241_pri, 5
	.equ	song241_rev, 178
	.equ	song241_mvl, 127
	.equ	song241_key, 0
	.equ	song241_tbs, 1
	.equ	song241_exg, 1
	.equ	song241_cmp, 1

	.section .rodata
	.global	song241
	.align	2

@**************** Track 00 ****************************@

song241_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 55
	.byte		VOICE , 127
	.byte		VOL   , 100*song241_mvl/mxv
	.byte		N03   , Fn2 , v100
	.byte		N03   , As2 , v127
	.byte	W06
	.byte		N08   , Fs3 , v096
	.byte	W06
	.byte		VOL   , 88*song241_mvl/mxv
	.byte	W03
	.byte		        54*song241_mvl/mxv
	.byte	W03
	.byte		        68*song241_mvl/mxv
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song241_1:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		BENDR , 12
	.byte		VOL   , 43*song241_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		        c_v-50
	.byte		N10   , Bn5 , v052
	.byte	W02
	.byte		BEND  , c_v-45
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		VOL   , 29*song241_mvl/mxv
	.byte		BEND  , c_v+53
	.byte	W01
	.byte		        c_v+60
	.byte	W02
	.byte		VOL   , 18*song241_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W09
	.byte	FINE

@******************************************************@
	.align	2

song241:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song241_pri	@ Priority
	.byte	song241_rev	@ Reverb.

	.word	song241_grp

	.word	song241_0
	.word	song241_1

	.end
