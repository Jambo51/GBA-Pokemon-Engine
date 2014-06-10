@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song4_grp, group_5
	.equ	song4_pri, 5
	.equ	song4_rev, 178
	.equ	song4_mvl, 127
	.equ	song4_key, 0
	.equ	song4_tbs, 1
	.equ	song4_exg, 1
	.equ	song4_cmp, 1

	.section .rodata
	.global	song4
	.align	2

@**************** Track 00 ****************************@

song4_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 72
	.byte		VOICE , 4
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 100*song4_mvl/mxv
	.byte		BEND  , c_v-11
	.byte		N12   , Cn6 , v112
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		N04   , Cn5 , v080
	.byte	W03
	.byte	W01
	.byte		        Cn4 
	.byte	W02
	.byte	W02
	.byte		        Gn4 
	.byte	W01
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte	W02
	.byte		        Cn4 
	.byte	W01
	.byte	W03
	.byte		        Cn6 , v100
	.byte	W03
	.byte	W01
	.byte		        Cn4 , v080
	.byte	W02
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song4:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song4_pri	@ Priority
	.byte	song4_rev	@ Reverb.

	.word	song4_grp

	.word	song4_0

	.end
