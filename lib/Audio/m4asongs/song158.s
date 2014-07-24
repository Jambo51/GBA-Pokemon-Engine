@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song158_grp, group_6
	.equ	song158_pri, 4
	.equ	song158_rev, 178
	.equ	song158_mvl, 127
	.equ	song158_key, 0
	.equ	song158_tbs, 1
	.equ	song158_exg, 1
	.equ	song158_cmp, 1

	.section .rodata
	.global	song158
	.align	2

@**************** Track 00 ****************************@

song158_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 115*song158_mvl/mxv
	.byte		BEND  , c_v-18
	.byte		TIE   , Dn2 , v127
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		PAN   , c_v-5
	.byte	W02
	.byte		BEND  , c_v-8
	.byte	W04
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v+2
	.byte	W02
	.byte		PAN   , c_v-13
	.byte	W04
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		PAN   , c_v-16
	.byte	W04
	.byte		BEND  , c_v+14
	.byte	W02
	.byte		PAN   , c_v-14
	.byte	W06
	.byte		        c_v-9
	.byte		BEND  , c_v+18
	.byte	W06
	.byte		PAN   , c_v-6
	.byte	W01
	.byte		BEND  , c_v+24
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		        c_v+3
	.byte	W06
	.byte		        c_v+7
	.byte	W06
	.byte		        c_v+11
	.byte		BEND  , c_v+17
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		PAN   , c_v+11
	.byte	W01
	.byte		BEND  , c_v+5
	.byte	W05
	.byte		PAN   , c_v+6
	.byte	W02
	.byte		VOL   , 103*song158_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		PAN   , c_v+4
	.byte	W01
	.byte		VOL   , 85*song158_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-5
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 71*song158_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		VOL   , 52*song158_mvl/mxv
	.byte		PAN   , c_v-4
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 32*song158_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W03
	.byte		VOL   , 11*song158_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W03
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		VOL   , 6*song158_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W04
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song158:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song158_pri	@ Priority
	.byte	song158_rev	@ Reverb.

	.word	song158_grp

	.word	song158_0

	.end
