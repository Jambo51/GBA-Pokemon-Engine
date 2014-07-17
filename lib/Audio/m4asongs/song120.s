@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song120_grp, group_6
	.equ	song120_pri, 4
	.equ	song120_rev, 178
	.equ	song120_mvl, 127
	.equ	song120_key, 0
	.equ	song120_tbs, 1
	.equ	song120_exg, 1
	.equ	song120_cmp, 1

	.section .rodata
	.global	song120
	.align	2

@**************** Track 00 ****************************@

song120_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 20*song120_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Gn3 , v064
	.byte	W03
	.byte		VOL   , 37*song120_mvl/mxv
	.byte	W03
	.byte		        53*song120_mvl/mxv
	.byte	W03
	.byte		        60*song120_mvl/mxv
	.byte	W03
	.byte		        71*song120_mvl/mxv
	.byte	W03
	.byte		        81*song120_mvl/mxv
	.byte	W03
	.byte		        93*song120_mvl/mxv
	.byte	W03
	.byte		        110*song120_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+3
	.byte	W06
	.byte		        c_v+11
	.byte	W12
	.byte		        c_v+20
	.byte	W06
	.byte		        c_v+25
	.byte	W12
	.byte		        c_v+14
	.byte	W06
	.byte		        c_v+8
	.byte	W06
	.byte	W06
	.byte		        c_v-3
	.byte	W12
	.byte		        c_v-16
	.byte	W06
	.byte	W06
	.byte		        c_v-26
	.byte	W12
	.byte		        c_v-16
	.byte	W06
	.byte		VOL   , 104*song120_mvl/mxv
	.byte		PAN   , c_v-5
	.byte	W03
	.byte		VOL   , 101*song120_mvl/mxv
	.byte	W03
	.byte		        98*song120_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W03
	.byte		VOL   , 93*song120_mvl/mxv
	.byte	W03
	.byte		        90*song120_mvl/mxv
	.byte		PAN   , c_v+14
	.byte	W03
	.byte		VOL   , 86*song120_mvl/mxv
	.byte	W03
	.byte		        83*song120_mvl/mxv
	.byte	W03
	.byte		        77*song120_mvl/mxv
	.byte	W03
	.byte		        73*song120_mvl/mxv
	.byte		PAN   , c_v+24
	.byte	W03
	.byte		VOL   , 66*song120_mvl/mxv
	.byte	W03
	.byte		        58*song120_mvl/mxv
	.byte	W03
	.byte		        44*song120_mvl/mxv
	.byte	W03
	.byte		        32*song120_mvl/mxv
	.byte		PAN   , c_v+15
	.byte	W03
	.byte		VOL   , 16*song120_mvl/mxv
	.byte	W03
	.byte		        1*song120_mvl/mxv
	.byte		PAN   , c_v+4
	.byte	W06
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song120:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song120_pri	@ Priority
	.byte	song120_rev	@ Reverb.

	.word	song120_grp

	.word	song120_0

	.end
