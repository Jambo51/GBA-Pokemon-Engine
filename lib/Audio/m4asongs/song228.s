@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song228_grp, group_6
	.equ	song228_pri, 4
	.equ	song228_rev, 178
	.equ	song228_mvl, 127
	.equ	song228_key, 0
	.equ	song228_tbs, 1
	.equ	song228_exg, 1
	.equ	song228_cmp, 1

	.text
	.global	song228
	.align	2

@**************** Track 00 ****************************@

song228_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 67*song228_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Dn2 , v127
	.byte	W03
	.byte		VOL   , 83*song228_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W03
	.byte		VOL   , 88*song228_mvl/mxv
	.byte		PAN   , c_v-4
	.byte	W03
	.byte		VOL   , 95*song228_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 105*song228_mvl/mxv
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		VOL   , 115*song228_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v-12
	.byte	W06
	.byte		        c_v-17
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		PAN   , c_v-9
	.byte	W06
	.byte		        c_v-3
	.byte	W01
	.byte		BEND  , c_v-12
	.byte	W02
	.byte		PAN   , c_v+6
	.byte	W03
	.byte		        c_v+10
	.byte	W06
	.byte		        c_v+16
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W05
	.byte		PAN   , c_v+13
	.byte	W06
	.byte		        c_v+8
	.byte	W03
	.byte		        c_v+0
	.byte	W01
	.byte		BEND  , c_v-13
	.byte	W02
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-17
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W05
	.byte		PAN   , c_v-9
	.byte	W06
	.byte		        c_v-3
	.byte	W03
	.byte		        c_v+6
	.byte	W03
	.byte		        c_v+10
	.byte	W01
	.byte		BEND  , c_v+6
	.byte	W05
	.byte		PAN   , c_v+16
	.byte	W06
	.byte		        c_v+13
	.byte	W06
	.byte		        c_v+8
	.byte	W03
	.byte		        c_v+0
	.byte		BEND  , c_v+11
	.byte	W03
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		        c_v-11
	.byte		VOL   , 103*song228_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-17
	.byte	W01
	.byte		BEND  , c_v+20
	.byte	W05
	.byte		PAN   , c_v-9
	.byte	W01
	.byte		VOL   , 97*song228_mvl/mxv
	.byte	W05
	.byte		PAN   , c_v-3
	.byte	W01
	.byte		BEND  , c_v+12
	.byte	W02
	.byte		PAN   , c_v+6
	.byte		VOL   , 88*song228_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+10
	.byte	W02
	.byte		BEND  , c_v+7
	.byte	W02
	.byte		VOL   , 79*song228_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+16
	.byte	W04
	.byte		VOL   , 62*song228_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		PAN   , c_v+13
	.byte	W04
	.byte		VOL   , 45*song228_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 33*song228_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		        c_v-8
	.byte	W01
	.byte		VOL   , 18*song228_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-11
	.byte	W03
	.byte		EOT
	.byte	FINE

@**************** Track 01 ****************************@

song228_1:
	.byte	KEYSH , 0
	.byte		VOICE , 25
	.byte		VOL   , 67*song228_mvl/mxv
	.byte		TIE   , Gs4 , v012
	.byte	W03
	.byte		VOL   , 83*song228_mvl/mxv
	.byte	W03
	.byte		        88*song228_mvl/mxv
	.byte	W03
	.byte		        95*song228_mvl/mxv
	.byte	W03
	.byte		        105*song228_mvl/mxv
	.byte	W03
	.byte		        115*song228_mvl/mxv
	.byte	W09
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W21
	.byte		        103*song228_mvl/mxv
	.byte	W03
	.byte	W07
	.byte		        97*song228_mvl/mxv
	.byte	W08
	.byte		        88*song228_mvl/mxv
	.byte	W07
	.byte		        79*song228_mvl/mxv
	.byte	W02
	.byte	W04
	.byte		        62*song228_mvl/mxv
	.byte	W06
	.byte		        45*song228_mvl/mxv
	.byte	W04
	.byte		        33*song228_mvl/mxv
	.byte	W05
	.byte		        18*song228_mvl/mxv
	.byte	W05
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song228:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song228_pri	@ Priority
	.byte	song228_rev	@ Reverb.

	.word	song228_grp

	.word	song228_0
	.word	song228_1

	.end
