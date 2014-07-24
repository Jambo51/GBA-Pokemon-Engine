@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song244_grp, group_7
	.equ	song244_pri, 5
	.equ	song244_rev, 178
	.equ	song244_mvl, 127
	.equ	song244_key, 0
	.equ	song244_tbs, 1
	.equ	song244_exg, 1
	.equ	song244_cmp, 1

	.section .rodata
	.global	song244
	.align	2

@**************** Track 00 ****************************@

song244_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 87
	.byte		VOICE , 46
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 112*song244_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 112*song244_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , An5 , v112
	.byte	W03
	.byte		VOL   , 64*song244_mvl/mxv
	.byte		N03   , Bn5 
	.byte	W03
	.byte		VOL   , 112*song244_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		N06   , En6 
	.byte	W03
	.byte		VOL   , 64*song244_mvl/mxv
	.byte	W03
	.byte		        112*song244_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N06   , En6 , v040
	.byte	W03
	.byte		VOL   , 64*song244_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-48
	.byte		VOL   , 97*song244_mvl/mxv
	.byte		N06   , En6 , v032
	.byte	W03
	.byte		VOL   , 64*song244_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+48
	.byte		VOL   , 96*song244_mvl/mxv
	.byte		N06   , En6 , v024
	.byte	W03
	.byte		VOL   , 64*song244_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-48
	.byte		VOL   , 80*song244_mvl/mxv
	.byte		N06   , En6 , v016
	.byte	W03
	.byte		VOL   , 64*song244_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+48
	.byte		VOL   , 80*song244_mvl/mxv
	.byte		N06   , En6 , v012
	.byte	W03
	.byte		VOL   , 48*song244_mvl/mxv
	.byte	W03
	.byte		N06   , En6 , v008
	.byte	W03
	.byte		VOL   , 2*song244_mvl/mxv
	.byte	W03
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song244_1:
	.byte	KEYSH , 0
	.byte		VOICE , 124
	.byte		PAN   , c_v+0
	.byte		VOL   , 64*song244_mvl/mxv
	.byte		N03   , Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W18
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song244:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song244_pri	@ Priority
	.byte	song244_rev	@ Reverb.

	.word	song244_grp

	.word	song244_0
	.word	song244_1

	.end
