@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song97_grp, group_6
	.equ	song97_pri, 5
	.equ	song97_rev, 178
	.equ	song97_mvl, 127
	.equ	song97_key, 0
	.equ	song97_tbs, 1
	.equ	song97_exg, 1
	.equ	song97_cmp, 1

	.text
	.global	song97
	.align	2

@**************** Track 00 ****************************@

song97_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 55
	.byte		VOICE , 66
	.byte		BENDR , 12
	.byte		VOL   , 90*song97_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N90   , Gs3 , v040
	.byte	W06
	.byte	W06
	.byte		BEND  , c_v+1
	.byte	W04
	.byte		        c_v+3
	.byte	W02
	.byte	W04
	.byte		        c_v+5
	.byte	W02
	.byte	W04
	.byte		        c_v+8
	.byte	W02
	.byte	W03
	.byte		        c_v+11
	.byte	W03
	.byte	W03
	.byte		        c_v+18
	.byte	W03
	.byte	W02
	.byte		        c_v+24
	.byte	W04
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+38
	.byte	W02
	.byte		        c_v+43
	.byte	W02
	.byte	W01
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+63
	.byte	W03
	.byte	W03
	.byte		VOL   , 83*song97_mvl/mxv
	.byte	W03
	.byte		        75*song97_mvl/mxv
	.byte	W04
	.byte		        68*song97_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		        55*song97_mvl/mxv
	.byte	W04
	.byte		        42*song97_mvl/mxv
	.byte	W01
	.byte	W03
	.byte		        29*song97_mvl/mxv
	.byte	W03
	.byte		        17*song97_mvl/mxv
	.byte	W03
	.byte		        8*song97_mvl/mxv
	.byte	W03
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song97_1:
	.byte	KEYSH , 0
	.byte		VOICE , 2
	.byte		VOL   , 14*song97_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v+0
	.byte		TIE   , Gn3 , v100
	.byte	W01
	.byte		VOL   , 19*song97_mvl/mxv
	.byte	W01
	.byte		        30*song97_mvl/mxv
	.byte	W02
	.byte		        37*song97_mvl/mxv
	.byte	W02
	.byte	W02
	.byte		        44*song97_mvl/mxv
	.byte	W04
	.byte		        49*song97_mvl/mxv
	.byte	W04
	.byte		        53*song97_mvl/mxv
	.byte	W02
	.byte	W03
	.byte		        58*song97_mvl/mxv
	.byte	W03
	.byte	W02
	.byte		        64*song97_mvl/mxv
	.byte	W04
	.byte		        68*song97_mvl/mxv
	.byte	W03
	.byte		        74*song97_mvl/mxv
	.byte	W03
	.byte	W01
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		VOL   , 81*song97_mvl/mxv
	.byte	W04
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOL   , 90*song97_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v+4
	.byte	W02
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte	W01
	.byte		        c_v+6
	.byte	W03
	.byte		        c_v+6
	.byte	W02
	.byte	W02
	.byte		        c_v+8
	.byte	W02
	.byte		        c_v+10
	.byte	W02
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		        c_v+17
	.byte	W03
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+46
	.byte	W02
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		VOL   , 87*song97_mvl/mxv
	.byte	W03
	.byte		        85*song97_mvl/mxv
	.byte		PAN   , c_v-4
	.byte	W02
	.byte		VOL   , 78*song97_mvl/mxv
	.byte		PAN   , c_v+4
	.byte	W02
	.byte		VOL   , 75*song97_mvl/mxv
	.byte		PAN   , c_v-6
	.byte	W02
	.byte	W01
	.byte		VOL   , 69*song97_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W02
	.byte		VOL   , 59*song97_mvl/mxv
	.byte		PAN   , c_v-20
	.byte	W03
	.byte		VOL   , 49*song97_mvl/mxv
	.byte		PAN   , c_v+22
	.byte	W02
	.byte		VOL   , 41*song97_mvl/mxv
	.byte		PAN   , c_v-37
	.byte	W02
	.byte		VOL   , 30*song97_mvl/mxv
	.byte		PAN   , c_v+37
	.byte	W02
	.byte	W01
	.byte		VOL   , 19*song97_mvl/mxv
	.byte		PAN   , c_v-48
	.byte	W02
	.byte		VOL   , 10*song97_mvl/mxv
	.byte		PAN   , c_v+48
	.byte	W01
	.byte		VOL   , 4*song97_mvl/mxv
	.byte	W02
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song97:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song97_pri	@ Priority
	.byte	song97_rev	@ Reverb.

	.word	song97_grp

	.word	song97_0
	.word	song97_1

	.end
