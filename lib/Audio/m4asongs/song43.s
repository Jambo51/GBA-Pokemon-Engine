@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song43_grp, group_6
	.equ	song43_pri, 4
	.equ	song43_rev, 178
	.equ	song43_mvl, 127
	.equ	song43_key, 0
	.equ	song43_tbs, 1
	.equ	song43_exg, 1
	.equ	song43_cmp, 1

	.section .rodata
	.global	song43
	.align	2

@**************** Track 00 ****************************@

song43_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 10
	.byte		VOL   , 18*song43_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N96   , Cs3 , v127
	.byte	W08
	.byte		VOL   , 31*song43_mvl/mxv
	.byte	W08
	.byte		        42*song43_mvl/mxv
	.byte	W08
	.byte		        59*song43_mvl/mxv
	.byte	W08
	.byte		        74*song43_mvl/mxv
	.byte	W08
	.byte		        88*song43_mvl/mxv
	.byte	W08
	.byte		        106*song43_mvl/mxv
	.byte	W08
	.byte		        118*song43_mvl/mxv
	.byte	W08
	.byte		        127*song43_mvl/mxv
	.byte	W32
	.byte		TIE   , Cs3 , v127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		EOT
	.byte	GOTO
	 .word	song43_0 + 0x1F
	.byte	FINE

@**************** Track 01 ****************************@

song43_1:
	.byte	KEYSH , 0
	.byte		VOICE , 11
	.byte		VOL   , 18*song43_mvl/mxv
	.byte	W08
	.byte		        31*song43_mvl/mxv
	.byte	W04
	.byte		N03   , Fn2 , v044
	.byte	W04
	.byte		VOL   , 42*song43_mvl/mxv
	.byte	W02
	.byte		N03   , An2 
	.byte	W06
	.byte		VOL   , 59*song43_mvl/mxv
	.byte	W06
	.byte		N03   , Cs2 , v052
	.byte	W02
	.byte		VOL   , 74*song43_mvl/mxv
	.byte	W08
	.byte		        88*song43_mvl/mxv
	.byte	W08
	.byte		        106*song43_mvl/mxv
	.byte		N03   , Gn2 , v044
	.byte	W08
	.byte		VOL   , 118*song43_mvl/mxv
	.byte	W08
	.byte		        127*song43_mvl/mxv
	.byte	W08
	.byte		N01   , Bn2 , v032
	.byte	W12
	.byte		N03   , Fn2 , v044
	.byte	W12
	.byte	W12
	.byte		N03   , Fn2 , v044
	.byte	W06
	.byte		        An2 , v032
	.byte	W12
	.byte		        Cs2 , v052
	.byte	W12
	.byte		        An2 , v032
	.byte	W06
	.byte		        Gn2 , v044
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W18
	.byte		        Cs2 , v052
	.byte	W12
	.byte		N01   , Bn2 , v032
	.byte	W06
	.byte		N03   , Fn2 , v044
	.byte	W24
	.byte		N03
	.byte	W18
	.byte		        Cs2 , v052
	.byte	W18
	.byte		        Gn2 , v044
	.byte	W18
	.byte		        An2 
	.byte	W12
	.byte		        Cs2 , v052
	.byte	W18
	.byte		        Gn2 , v044
	.byte	W12
	.byte		        Fn2 
	.byte	W18
	.byte		N01   , Bn2 , v032
	.byte	W06
	.byte		N03   , Fn2 , v044
	.byte	W12
	.byte	GOTO
	 .word	song43_1 + 0x31
	.byte	FINE

@******************************************************@
	.align	2

song43:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song43_pri	@ Priority
	.byte	song43_rev	@ Reverb.

	.word	song43_grp

	.word	song43_0
	.word	song43_1

	.end
