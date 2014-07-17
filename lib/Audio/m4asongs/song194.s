@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song194_grp, group_6
	.equ	song194_pri, 4
	.equ	song194_rev, 178
	.equ	song194_mvl, 127
	.equ	song194_key, 0
	.equ	song194_tbs, 1
	.equ	song194_exg, 1
	.equ	song194_cmp, 1

	.section .rodata
	.global	song194
	.align	2

@**************** Track 00 ****************************@

song194_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 24
	.byte		VOL   , 25*song194_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte		TIE   , Cn4 , v112
	.byte	W04
	.byte		VOL   , 40*song194_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+52
	.byte	W03
	.byte		VOL   , 55*song194_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-10
	.byte		BEND  , c_v+41
	.byte	W03
	.byte		VOL   , 80*song194_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v+30
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		VOL   , 100*song194_mvl/mxv
	.byte	W05
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+63
	.byte	W06
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v+52
	.byte	W06
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+41
	.byte	W04
	.byte		        c_v+33
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		BEND  , c_v+25
	.byte	W03
	.byte		PAN   , c_v-4
	.byte	W03
	.byte		BEND  , c_v+22
	.byte	W03
	.byte		PAN   , c_v-10
	.byte	W06
	.byte		        c_v-5
	.byte		BEND  , c_v+17
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+9
	.byte	W06
	.byte		PAN   , c_v+4
	.byte	W02
	.byte		BEND  , c_v+4
	.byte	W04
	.byte		PAN   , c_v+11
	.byte	W06
	.byte		        c_v+4
	.byte		BEND  , c_v+0
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		        c_v-4
	.byte	W02
	.byte		BEND  , c_v-3
	.byte	W04
	.byte		PAN   , c_v-10
	.byte	W06
	.byte		        c_v-5
	.byte	W04
	.byte		BEND  , c_v-5
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		        c_v+4
	.byte	W02
	.byte		BEND  , c_v-7
	.byte	W04
	.byte		PAN   , c_v+11
	.byte	W06
	.byte		        c_v+4
	.byte	W01
	.byte		BEND  , c_v-10
	.byte	W05
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		PAN   , c_v-4
	.byte	W06
	.byte		        c_v-10
	.byte		BEND  , c_v-18
	.byte	W03
	.byte		VOL   , 89*song194_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-5
	.byte	W02
	.byte		VOL   , 74*song194_mvl/mxv
	.byte		BEND  , c_v-25
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		VOL   , 62*song194_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W03
	.byte		PAN   , c_v+4
	.byte	W01
	.byte		VOL   , 45*song194_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-40
	.byte	W04
	.byte		VOL   , 28*song194_mvl/mxv
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v-49
	.byte	W03
	.byte		        c_v-64
	.byte	W01
	.byte		VOL   , 10*song194_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+4
	.byte	W02
	.byte		VOL   , 5*song194_mvl/mxv
	.byte	W04
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song194:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song194_pri	@ Priority
	.byte	song194_rev	@ Reverb.

	.word	song194_grp

	.word	song194_0

	.end
