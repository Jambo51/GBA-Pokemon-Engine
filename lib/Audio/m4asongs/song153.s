@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song153_grp, group_6
	.equ	song153_pri, 4
	.equ	song153_rev, 178
	.equ	song153_mvl, 127
	.equ	song153_key, 0
	.equ	song153_tbs, 1
	.equ	song153_exg, 1
	.equ	song153_cmp, 1

	.section .rodata
	.global	song153
	.align	2

@**************** Track 00 ****************************@

song153_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 125
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song153_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N14   , An4 , v108
	.byte	W03
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 80*song153_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+15
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		VOL   , 64*song153_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+6
	.byte		VOL   , 38*song153_mvl/mxv
	.byte		BEND  , c_v-9
	.byte	W02
	.byte		        c_v-34
	.byte	W01
	.byte		PAN   , c_v-1
	.byte		VOL   , 11*song153_mvl/mxv
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song153:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song153_pri	@ Priority
	.byte	song153_rev	@ Reverb.

	.word	song153_grp

	.word	song153_0

	.end
