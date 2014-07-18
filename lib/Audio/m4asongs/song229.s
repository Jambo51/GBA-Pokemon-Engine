@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song229_grp, group_6
	.equ	song229_pri, 4
	.equ	song229_rev, 178
	.equ	song229_mvl, 127
	.equ	song229_key, 0
	.equ	song229_tbs, 1
	.equ	song229_exg, 1
	.equ	song229_cmp, 1

	.text
	.global	song229
	.align	2

@**************** Track 00 ****************************@

song229_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 61
	.byte		BENDR , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song229_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N36   , En3 , v096
	.byte	W12
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+2
	.byte	W12
	.byte		PAN   , c_v-10
	.byte		BEND  , c_v+4
	.byte	W12
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+5
	.byte		N36   , Fn3 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+6
	.byte	W12
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+7
	.byte	W12
	.byte		PAN   , c_v+9
	.byte		BEND  , c_v+8
	.byte		N36   , En3 , v088
	.byte	W12
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v+8
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+9
	.byte	W12
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+10
	.byte		N60   , Fs3 , v056
	.byte	W12
	.byte		PAN   , c_v-10
	.byte		BEND  , c_v+11
	.byte	W12
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+12
	.byte	W04
	.byte		VOL   , 103*song229_mvl/mxv
	.byte	W04
	.byte		        97*song229_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 91*song229_mvl/mxv
	.byte	W05
	.byte		        81*song229_mvl/mxv
	.byte	W03
	.byte		        72*song229_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 62*song229_mvl/mxv
	.byte	W02
	.byte		        51*song229_mvl/mxv
	.byte	W03
	.byte		        39*song229_mvl/mxv
	.byte	W02
	.byte		        24*song229_mvl/mxv
	.byte	W02
	.byte		        12*song229_mvl/mxv
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song229_1:
	.byte	KEYSH , 0
	.byte		VOICE , 22
	.byte		BENDR , 44
	.byte		PAN   , c_v+1
	.byte		VOL   , 38*song229_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		TIE   , Gn3 , v100
	.byte	W03
	.byte		VOL   , 50*song229_mvl/mxv
	.byte	W04
	.byte		        62*song229_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 65*song229_mvl/mxv
	.byte	W04
	.byte		        74*song229_mvl/mxv
	.byte	W04
	.byte		        78*song229_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		VOL   , 86*song229_mvl/mxv
	.byte	W03
	.byte		        95*song229_mvl/mxv
	.byte	W03
	.byte		        105*song229_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		VOL   , 110*song229_mvl/mxv
	.byte	W13
	.byte		BEND  , c_v-2
	.byte	W04
	.byte	W10
	.byte		        c_v-1
	.byte	W10
	.byte		        c_v+0
	.byte	W04
	.byte	W03
	.byte		        c_v+1
	.byte	W10
	.byte		        c_v+1
	.byte	W11
	.byte	W02
	.byte		        c_v+2
	.byte	W14
	.byte		        c_v+3
	.byte	W08
	.byte		VOL   , 105*song229_mvl/mxv
	.byte	W03
	.byte		        101*song229_mvl/mxv
	.byte	W05
	.byte		        96*song229_mvl/mxv
	.byte	W04
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOL   , 91*song229_mvl/mxv
	.byte	W03
	.byte		        86*song229_mvl/mxv
	.byte	W05
	.byte		        78*song229_mvl/mxv
	.byte	W03
	.byte	W02
	.byte		        68*song229_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+1
	.byte	W04
	.byte		VOL   , 58*song229_mvl/mxv
	.byte	W03
	.byte		        48*song229_mvl/mxv
	.byte	W04
	.byte		        37*song229_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		VOL   , 23*song229_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W02
	.byte		VOL   , 12*song229_mvl/mxv
	.byte	W03
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song229:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song229_pri	@ Priority
	.byte	song229_rev	@ Reverb.

	.word	song229_grp

	.word	song229_0
	.word	song229_1

	.end
