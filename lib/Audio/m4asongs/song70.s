@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song70_grp, group_6
	.equ	song70_pri, 4
	.equ	song70_rev, 178
	.equ	song70_mvl, 127
	.equ	song70_key, 0
	.equ	song70_tbs, 1
	.equ	song70_exg, 1
	.equ	song70_cmp, 1

	.section .rodata
	.global	song70
	.align	2

@**************** Track 00 ****************************@

song70_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 120
	.byte		VOICE , 41
	.byte		BENDR , 12
	.byte		VOL   , 110*song70_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Fs4 , v127
	.byte	W01
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte	W01
	.byte		        c_v+0
	.byte		N10   , Cn4 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		VOL   , 96*song70_mvl/mxv
	.byte	W02
	.byte		        82*song70_mvl/mxv
	.byte	W01
	.byte		        45*song70_mvl/mxv
	.byte	W01
	.byte		        20*song70_mvl/mxv
	.byte	W01
	.byte	W03
	.byte	W01
	.byte		        110*song70_mvl/mxv
	.byte		N10   , Cn4 , v040
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		VOL   , 96*song70_mvl/mxv
	.byte	W01
	.byte		        82*song70_mvl/mxv
	.byte	W01
	.byte		        45*song70_mvl/mxv
	.byte	W01
	.byte		        20*song70_mvl/mxv
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song70:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song70_pri	@ Priority
	.byte	song70_rev	@ Reverb.

	.word	song70_grp

	.word	song70_0

	.end
