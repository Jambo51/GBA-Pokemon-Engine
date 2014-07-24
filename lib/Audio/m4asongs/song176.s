@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song176_grp, group_6
	.equ	song176_pri, 4
	.equ	song176_rev, 178
	.equ	song176_mvl, 127
	.equ	song176_key, 0
	.equ	song176_tbs, 1
	.equ	song176_exg, 1
	.equ	song176_cmp, 1

	.section .rodata
	.global	song176
	.align	2

@**************** Track 00 ****************************@

song176_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 9
	.byte		BENDR , 2
	.byte		PAN   , c_v+0
	.byte		VOL   , 26*song176_mvl/mxv
	.byte		BEND  , c_v-23
	.byte		N09   , Dn5 , v127
	.byte	W01
	.byte		VOL   , 34*song176_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 42*song176_mvl/mxv
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 52*song176_mvl/mxv
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		VOL   , 72*song176_mvl/mxv
	.byte		PAN   , c_v-13
	.byte		BEND  , c_v-18
	.byte	W02
	.byte		VOL   , 85*song176_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 102*song176_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v-23
	.byte	W01
	.byte		VOL   , 120*song176_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		VOL   , 26*song176_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-23
	.byte		N09   , Dn5 , v100
	.byte	W02
	.byte		VOL   , 34*song176_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 42*song176_mvl/mxv
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 52*song176_mvl/mxv
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		VOL   , 72*song176_mvl/mxv
	.byte		PAN   , c_v-13
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 85*song176_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-21
	.byte	W02
	.byte		VOL   , 102*song176_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v-23
	.byte	W01
	.byte		VOL   , 120*song176_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		VOL   , 26*song176_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-23
	.byte		N09   , Dn5 , v080
	.byte	W01
	.byte		VOL   , 34*song176_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-20
	.byte	W02
	.byte		VOL   , 42*song176_mvl/mxv
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 52*song176_mvl/mxv
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		VOL   , 72*song176_mvl/mxv
	.byte		PAN   , c_v-13
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 85*song176_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 102*song176_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v-23
	.byte	W02
	.byte		VOL   , 120*song176_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song176:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song176_pri	@ Priority
	.byte	song176_rev	@ Reverb.

	.word	song176_grp

	.word	song176_0

	.end
