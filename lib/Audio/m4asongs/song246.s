@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song246_grp, group_7
	.equ	song246_pri, 5
	.equ	song246_rev, 178
	.equ	song246_mvl, 127
	.equ	song246_key, 0
	.equ	song246_tbs, 1
	.equ	song246_exg, 1
	.equ	song246_cmp, 1

	.text
	.global	song246
	.align	2

@**************** Track 00 ****************************@

song246_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 211
	.byte		VOICE , 80
	.byte		VOL   , 64*song246_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Dn4 , v084
	.byte	W02
	.byte		BEND  , c_v+17
	.byte		N03   , Fs4 , v080
	.byte	W01
	.byte		BEND  , c_v-40
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song246_1:
	.byte	KEYSH , 0
	.byte		VOICE , 2
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 127*song246_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N04   , En3 , v127
	.byte	W03
	.byte	W01
	.byte		VOICE , 2
	.byte		N02   , Bn3 
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song246:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song246_pri	@ Priority
	.byte	song246_rev	@ Reverb.

	.word	song246_grp

	.word	song246_0
	.word	song246_1

	.end
