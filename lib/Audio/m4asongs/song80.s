@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song80_grp, group_6
	.equ	song80_pri, 3
	.equ	song80_rev, 178
	.equ	song80_mvl, 127
	.equ	song80_key, 0
	.equ	song80_tbs, 1
	.equ	song80_exg, 1
	.equ	song80_cmp, 1

	.section .rodata
	.global	song80
	.align	2

@**************** Track 00 ****************************@

song80_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 18
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song80_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N09   , En3 , v112
	.byte	W03
	.byte		BEND  , c_v+21
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v+6
	.byte		N15   , En3 , v120
	.byte	W03
	.byte		BEND  , c_v+2
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-29
	.byte	W06
	.byte		        c_v+0
	.byte		N09   , Gn2 
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v-15
	.byte		TIE   , Gs2 , v112
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W09
	.byte		        c_v-8
	.byte	W03
	.byte	W06
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-22
	.byte	W09
	.byte		        c_v-32
	.byte	W06
	.byte		VOL   , 102*song80_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W09
	.byte		VOL   , 97*song80_mvl/mxv
	.byte	W09
	.byte		        92*song80_mvl/mxv
	.byte		BEND  , c_v-45
	.byte	W06
	.byte	W03
	.byte		VOL   , 83*song80_mvl/mxv
	.byte	W06
	.byte		BEND  , c_v-52
	.byte	W03
	.byte		VOL   , 72*song80_mvl/mxv
	.byte	W09
	.byte		        63*song80_mvl/mxv
	.byte	W03
	.byte	W06
	.byte		        57*song80_mvl/mxv
	.byte	W06
	.byte		        46*song80_mvl/mxv
	.byte	W12
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song80:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song80_pri	@ Priority
	.byte	song80_rev	@ Reverb.

	.word	song80_grp

	.word	song80_0

	.end
