@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song157_grp, group_6
	.equ	song157_pri, 4
	.equ	song157_rev, 178
	.equ	song157_mvl, 127
	.equ	song157_key, 0
	.equ	song157_tbs, 1
	.equ	song157_exg, 1
	.equ	song157_cmp, 1

	.text
	.global	song157
	.align	2

@**************** Track 00 ****************************@

song157_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 115*song157_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Gn2 , v127
	.byte	W06
	.byte		PAN   , c_v-4
	.byte	W06
	.byte		        c_v-10
	.byte	W06
	.byte		        c_v-5
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+4
	.byte	W06
	.byte		        c_v+11
	.byte	W06
	.byte		        c_v+4
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-4
	.byte	W06
	.byte		        c_v-10
	.byte	W06
	.byte		        c_v-5
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+4
	.byte	W06
	.byte		        c_v+11
	.byte	W02
	.byte		VOL   , 103*song157_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+4
	.byte	W01
	.byte		VOL   , 85*song157_mvl/mxv
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 71*song157_mvl/mxv
	.byte	W05
	.byte		        52*song157_mvl/mxv
	.byte		PAN   , c_v-4
	.byte	W04
	.byte		VOL   , 32*song157_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W03
	.byte		VOL   , 11*song157_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-5
	.byte	W01
	.byte		VOL   , 6*song157_mvl/mxv
	.byte	W05
	.byte		EOT
	.byte	FINE

@**************** Track 01 ****************************@

song157_1:
	.byte	KEYSH , 0
	.byte		VOL   , 58*song157_mvl/mxv
	.byte		N14   , Gn3 , v080
	.byte	W01
	.byte		VOICE , 25
	.byte		VOL   , 76*song157_mvl/mxv
	.byte	W01
	.byte		        89*song157_mvl/mxv
	.byte	W01
	.byte		        100*song157_mvl/mxv
	.byte	W01
	.byte		        115*song157_mvl/mxv
	.byte	W06
	.byte		        90*song157_mvl/mxv
	.byte	W02
	.byte		        76*song157_mvl/mxv
	.byte	W01
	.byte		        58*song157_mvl/mxv
	.byte	W11
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song157:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song157_pri	@ Priority
	.byte	song157_rev	@ Reverb.

	.word	song157_grp

	.word	song157_0
	.word	song157_1

	.end
