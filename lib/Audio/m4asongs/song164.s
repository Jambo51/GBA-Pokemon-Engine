@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song164_grp, group_6
	.equ	song164_pri, 4
	.equ	song164_rev, 178
	.equ	song164_mvl, 127
	.equ	song164_key, 0
	.equ	song164_tbs, 1
	.equ	song164_exg, 1
	.equ	song164_cmp, 1

	.section .rodata
	.global	song164
	.align	2

@**************** Track 00 ****************************@

song164_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 29
	.byte		BENDR , 12
	.byte		PAN   , c_v+5
	.byte		VOL   , 21*song164_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N10   , An2 , v127
	.byte	W02
	.byte		VOL   , 47*song164_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 88*song164_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-5
	.byte	W01
	.byte		VOL   , 120*song164_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 21*song164_mvl/mxv
	.byte		BEND  , c_v+10
	.byte		N10   , Bn2 
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		VOL   , 47*song164_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		VOL   , 88*song164_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-5
	.byte		VOL   , 120*song164_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-2
	.byte		VOL   , 21*song164_mvl/mxv
	.byte		BEND  , c_v+18
	.byte		N10   , Cs3 
	.byte	W03
	.byte		PAN   , c_v+5
	.byte		VOL   , 47*song164_mvl/mxv
	.byte	W02
	.byte		        88*song164_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 120*song164_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-5
	.byte	W02
	.byte		VOL   , 20*song164_mvl/mxv
	.byte		BEND  , c_v+29
	.byte		N10   , Dn3 
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 47*song164_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		VOL   , 88*song164_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		VOL   , 120*song164_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-5
	.byte	W01
	.byte		VOL   , 21*song164_mvl/mxv
	.byte		BEND  , c_v+37
	.byte		N10   , En3 
	.byte	W02
	.byte		PAN   , c_v-2
	.byte		VOL   , 46*song164_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+5
	.byte		VOL   , 102*song164_mvl/mxv
	.byte	W02
	.byte		        120*song164_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		        c_v-5
	.byte		VOL   , 20*song164_mvl/mxv
	.byte		BEND  , c_v+42
	.byte		N20   , Fs3 
	.byte	W02
	.byte		VOL   , 47*song164_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 88*song164_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		VOL   , 120*song164_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 99*song164_mvl/mxv
	.byte		BEND  , c_v+50
	.byte	W02
	.byte		PAN   , c_v-5
	.byte	W01
	.byte		VOL   , 74*song164_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+56
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		VOL   , 53*song164_mvl/mxv
	.byte	W03
	.byte		        34*song164_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		VOL   , 15*song164_mvl/mxv
	.byte	W23
	.byte	FINE

@******************************************************@
	.align	2

song164:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song164_pri	@ Priority
	.byte	song164_rev	@ Reverb.

	.word	song164_grp

	.word	song164_0

	.end
