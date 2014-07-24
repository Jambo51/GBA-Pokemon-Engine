@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song44_grp, group_6
	.equ	song44_pri, 4
	.equ	song44_rev, 178
	.equ	song44_mvl, 127
	.equ	song44_key, 0
	.equ	song44_tbs, 1
	.equ	song44_exg, 1
	.equ	song44_cmp, 1

	.section .rodata
	.global	song44
	.align	2

@**************** Track 00 ****************************@

song44_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 10
	.byte		VOL   , 127*song44_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Cs3 , v127
	.byte	W09
	.byte		BEND  , c_v-9
	.byte	W09
	.byte		        c_v-18
	.byte	W06
	.byte	W09
	.byte		        c_v-26
	.byte	W09
	.byte		        c_v-34
	.byte	W06
	.byte	W06
	.byte		        c_v-43
	.byte	W05
	.byte		VOL   , 123*song44_mvl/mxv
	.byte	W04
	.byte		BEND  , c_v-54
	.byte	W02
	.byte		VOL   , 117*song44_mvl/mxv
	.byte	W06
	.byte		        110*song44_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W08
	.byte		VOL   , 101*song44_mvl/mxv
	.byte	W06
	.byte		        89*song44_mvl/mxv
	.byte	W09
	.byte		        77*song44_mvl/mxv
	.byte	W01
	.byte	W05
	.byte		        60*song44_mvl/mxv
	.byte	W09
	.byte		        48*song44_mvl/mxv
	.byte	W06
	.byte		        36*song44_mvl/mxv
	.byte	W04
	.byte	W03
	.byte		        23*song44_mvl/mxv
	.byte	W06
	.byte		        8*song44_mvl/mxv
	.byte	W09
	.byte		        0*song44_mvl/mxv
	.byte	W01
	.byte		EOT
	.byte	W05
	.byte	FINE

@**************** Track 01 ****************************@

song44_1:
	.byte	KEYSH , 0
	.byte		VOICE , 13
	.byte		VOL   , 90*song44_mvl/mxv
	.byte	W06
	.byte		N09   , Gs6 , v024
	.byte	W18
	.byte	W05
	.byte		N15
	.byte	W19
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 02 ****************************@

song44_2:
	.byte	KEYSH , 0
	.byte		VOICE , 12
	.byte		VOL   , 90*song44_mvl/mxv
	.byte	W06
	.byte		N09   , An6 , v024
	.byte	W18
	.byte	W05
	.byte		N15
	.byte	W19
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song44:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song44_pri	@ Priority
	.byte	song44_rev	@ Reverb.

	.word	song44_grp

	.word	song44_0
	.word	song44_1
	.word	song44_2

	.end
