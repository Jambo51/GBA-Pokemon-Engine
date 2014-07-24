@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song113_grp, group_6
	.equ	song113_pri, 4
	.equ	song113_rev, 178
	.equ	song113_mvl, 127
	.equ	song113_key, 0
	.equ	song113_tbs, 1
	.equ	song113_exg, 1
	.equ	song113_cmp, 1

	.section .rodata
	.global	song113
	.align	2

@**************** Track 00 ****************************@

song113_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 28
	.byte		VOL   , 100*song113_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+16
	.byte		N03   , Gs3 , v080
	.byte	W01
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		        c_v+62
	.byte	W02
	.byte		N17   , Gs4 , v096
	.byte	W03
	.byte		PAN   , c_v+6
	.byte	W02
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+6
	.byte	W03
	.byte		        c_v+0
	.byte	W05
	.byte	FINE

@**************** Track 01 ****************************@

song113_1:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		VOL   , 100*song113_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , En4 , v060
	.byte	W04
	.byte		N17   , Gs4 , v096
	.byte	W20
	.byte	FINE

@******************************************************@
	.align	2

song113:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song113_pri	@ Priority
	.byte	song113_rev	@ Reverb.

	.word	song113_grp

	.word	song113_0
	.word	song113_1

	.end
