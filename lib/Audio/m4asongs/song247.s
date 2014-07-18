@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song247_grp, group_7
	.equ	song247_pri, 5
	.equ	song247_rev, 178
	.equ	song247_mvl, 127
	.equ	song247_key, 0
	.equ	song247_tbs, 1
	.equ	song247_exg, 1
	.equ	song247_cmp, 1

	.text
	.global	song247
	.align	2

@**************** Track 00 ****************************@

song247_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 155
	.byte		VOICE , 3
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 100*song247_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Bn3 , v120
	.byte	W03
	.byte	W03
	.byte	W02
	.byte		        En4 , v127
	.byte	W01
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song247_1:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		VOL   , 100*song247_mvl/mxv
	.byte	W03
	.byte	W01
	.byte		N01   , Cn2 , v120
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song247:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song247_pri	@ Priority
	.byte	song247_rev	@ Reverb.

	.word	song247_grp

	.word	song247_0
	.word	song247_1

	.end
