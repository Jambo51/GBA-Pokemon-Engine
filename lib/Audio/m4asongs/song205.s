@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song205_grp, group_6
	.equ	song205_pri, 4
	.equ	song205_rev, 178
	.equ	song205_mvl, 127
	.equ	song205_key, 0
	.equ	song205_tbs, 1
	.equ	song205_exg, 1
	.equ	song205_cmp, 1

	.section .rodata
	.global	song205
	.align	2

@**************** Track 00 ****************************@

song205_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 37
	.byte		BENDR , 24
	.byte		PAN   , c_v+0
	.byte		VOL   , 25*song205_mvl/mxv
	.byte		BEND  , c_v+11
	.byte		N02   , Fn4 , v127
	.byte	W01
	.byte		VOL   , 42*song205_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOL   , 62*song205_mvl/mxv
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+0
	.byte		N15
	.byte	W01
	.byte		VOL   , 77*song205_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOL   , 84*song205_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+12
	.byte	W02
	.byte		VOL   , 96*song205_mvl/mxv
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 100*song205_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+40
	.byte	W02
	.byte		VOL   , 94*song205_mvl/mxv
	.byte		PAN   , c_v+4
	.byte	W01
	.byte		VOL   , 85*song205_mvl/mxv
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		VOL   , 66*song205_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 49*song205_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+34
	.byte	W01
	.byte		VOL   , 32*song205_mvl/mxv
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+32
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song205:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song205_pri	@ Priority
	.byte	song205_rev	@ Reverb.

	.word	song205_grp

	.word	song205_0

	.end
