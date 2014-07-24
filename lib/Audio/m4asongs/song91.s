@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song91_grp, group_6
	.equ	song91_pri, 5
	.equ	song91_rev, 178
	.equ	song91_mvl, 127
	.equ	song91_key, 0
	.equ	song91_tbs, 1
	.equ	song91_exg, 1
	.equ	song91_cmp, 1

	.section .rodata
	.global	song91
	.align	2

@**************** Track 00 ****************************@

song91_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 25
	.byte		VOL   , 12*song91_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Gs4 , v060
	.byte	W01
	.byte		VOL   , 22*song91_mvl/mxv
	.byte	W01
	.byte		        33*song91_mvl/mxv
	.byte	W01
	.byte		        46*song91_mvl/mxv
	.byte	W01
	.byte		        58*song91_mvl/mxv
	.byte	W02
	.byte		        70*song91_mvl/mxv
	.byte	W02
	.byte		        60*song91_mvl/mxv
	.byte	W01
	.byte		        42*song91_mvl/mxv
	.byte	W01
	.byte		        22*song91_mvl/mxv
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song91_1:
	.byte	KEYSH , 0
	.byte		VOICE , 15
	.byte		VOL   , 12*song91_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Fn3 , v100
	.byte	W01
	.byte		VOL   , 22*song91_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		VOL   , 33*song91_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 46*song91_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		VOL   , 58*song91_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W02
	.byte		VOL   , 70*song91_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		VOL   , 60*song91_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W01
	.byte		VOL   , 42*song91_mvl/mxv
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		VOL   , 22*song91_mvl/mxv
	.byte		BEND  , c_v-55
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song91:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song91_pri	@ Priority
	.byte	song91_rev	@ Reverb.

	.word	song91_grp

	.word	song91_0
	.word	song91_1

	.end
