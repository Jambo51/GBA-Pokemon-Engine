@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song35_grp, group_6
	.equ	song35_pri, 4
	.equ	song35_rev, 178
	.equ	song35_mvl, 127
	.equ	song35_key, 0
	.equ	song35_tbs, 1
	.equ	song35_exg, 1
	.equ	song35_cmp, 1

	.text
	.global	song35
	.align	2

@**************** Track 00 ****************************@

song35_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 3
	.byte		VOL   , 100*song35_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Gn3 , v120
	.byte	W03
	.byte	W01
	.byte		        Cn4 
	.byte	W01
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		N01   , Cn5 , v112
	.byte	W01
	.byte		BEND  , c_v+35
	.byte	W01
	.byte	W01
	.byte		        c_v+46
	.byte	W01
	.byte		        c_v+54
	.byte		N01   , Cn4 , v104
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		N01   , Cn5 , v096
	.byte	W01
	.byte	FINE

@**************** Track 01 ****************************@

song35_1:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		VOL   , 100*song35_mvl/mxv
	.byte		N01   , Gs3 , v064
	.byte	W03
	.byte	W01
	.byte		N01
	.byte	W02
	.byte		        Fn4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song35:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song35_pri	@ Priority
	.byte	song35_rev	@ Reverb.

	.word	song35_grp

	.word	song35_0
	.word	song35_1

	.end
