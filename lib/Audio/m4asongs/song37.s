@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song37_grp, group_6
	.equ	song37_pri, 4
	.equ	song37_rev, 178
	.equ	song37_mvl, 127
	.equ	song37_key, 0
	.equ	song37_tbs, 1
	.equ	song37_exg, 1
	.equ	song37_cmp, 1

	.text
	.global	song37
	.align	2

@**************** Track 00 ****************************@

song37_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 85
	.byte		VOICE , 22
	.byte		VOL   , 110*song37_mvl/mxv
	.byte		BEND  , c_v+60
	.byte		N44   , Gn3 , v080
	.byte	W03
	.byte		BEND  , c_v+57
	.byte	W03
	.byte		        c_v+52
	.byte	W03
	.byte		        c_v+43
	.byte	W03
	.byte		        c_v+36
	.byte	W03
	.byte		        c_v+30
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		VOL   , 104*song37_mvl/mxv
	.byte		BEND  , c_v+11
	.byte	W03
	.byte		VOL   , 90*song37_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W03
	.byte		VOL   , 82*song37_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		VOL   , 71*song37_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W03
	.byte		VOL   , 58*song37_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		VOL   , 45*song37_mvl/mxv
	.byte		BEND  , c_v-36
	.byte	W03
	.byte		VOL   , 36*song37_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W03
	.byte		VOL   , 11*song37_mvl/mxv
	.byte		BEND  , c_v-63
	.byte	W03
	.byte		VOL   , 3*song37_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

song37:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song37_pri	@ Priority
	.byte	song37_rev	@ Reverb.

	.word	song37_grp

	.word	song37_0

	.end
