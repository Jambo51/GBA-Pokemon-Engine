@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song65_grp, group_5
	.equ	song65_pri, 5
	.equ	song65_rev, 178
	.equ	song65_mvl, 127
	.equ	song65_key, 0
	.equ	song65_tbs, 1
	.equ	song65_exg, 1
	.equ	song65_cmp, 1

	.section .rodata
	.global	song65
	.align	2

@**************** Track 00 ****************************@

song65_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 64
	.byte		VOICE , 89
	.byte		BENDR , 12
	.byte		VOL   , 90*song65_mvl/mxv
	.byte		BEND  , c_v-1
	.byte		N03   , Fs2 , v127
	.byte	W03
	.byte		N01   , Ds3 
	.byte	W03
	.byte		VOICE , 6
	.byte		N03   , Gs3 , v100
	.byte	W03
	.byte	W01
	.byte		N18   , Fn5 , v072
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song65_1:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		VOL   , 90*song65_mvl/mxv
	.byte		BEND  , c_v-8
	.byte		N03   , Gs3 , v100
	.byte	W03
	.byte	W03
	.byte		        Gs3 , v060
	.byte	W03
	.byte	W01
	.byte		N18   , Fn5 
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song65:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song65_pri	@ Priority
	.byte	song65_rev	@ Reverb.

	.word	song65_grp

	.word	song65_0
	.word	song65_1

	.end
