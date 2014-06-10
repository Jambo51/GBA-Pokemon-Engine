@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song186_grp, group_6
	.equ	song186_pri, 4
	.equ	song186_rev, 178
	.equ	song186_mvl, 127
	.equ	song186_key, 0
	.equ	song186_tbs, 1
	.equ	song186_exg, 1
	.equ	song186_cmp, 1

	.section .rodata
	.global	song186
	.align	2

@**************** Track 00 ****************************@

song186_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 95
	.byte		VOICE , 2
	.byte		BENDR , 8
	.byte		PAN   , c_v+0
	.byte		VOL   , 28*song186_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N15   , An1 , v127
	.byte	W01
	.byte		VOL   , 60*song186_mvl/mxv
	.byte	W01
	.byte		        111*song186_mvl/mxv
	.byte	W01
	.byte		        120*song186_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W02
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 109*song186_mvl/mxv
	.byte		PAN   , c_v+9
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		VOL   , 95*song186_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-19
	.byte	W02
	.byte		VOL   , 71*song186_mvl/mxv
	.byte		BEND  , c_v-29
	.byte	W01
	.byte		VOL   , 41*song186_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W01
	.byte		VOL   , 15*song186_mvl/mxv
	.byte		BEND  , c_v-52
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song186:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song186_pri	@ Priority
	.byte	song186_rev	@ Reverb.

	.word	song186_grp

	.word	song186_0

	.end
