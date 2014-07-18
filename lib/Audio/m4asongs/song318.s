@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song318_grp, group_53
	.equ	song318_pri, 5
	.equ	song318_rev, 178
	.equ	song318_mvl, 127
	.equ	song318_key, 0
	.equ	song318_tbs, 1
	.equ	song318_exg, 1
	.equ	song318_cmp, 1

	.text
	.global	song318
	.align	2

@**************** Track 00 ****************************@

song318_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 22
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 51*song318_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte	TEMPO , 36
	.byte		        c_v-64
	.byte		N10   , As3 , v080
	.byte	W06
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N03   , Cn4 
	.byte	W02
	.byte	W03
	.byte		N01
	.byte	W02
	.byte		N01
	.byte	W01
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N10   , Ds4 
	.byte	W04
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Fn4 
	.byte	W05
	.byte		N01
	.byte	W01
	.byte	W01
	.byte		MOD   , 7
	.byte		N01
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N16   , As4 
	.byte	W02
	.byte		MOD   , 5
	.byte	W02
	.byte		VOL   , 46*song318_mvl/mxv
	.byte	W01
	.byte		        43*song318_mvl/mxv
	.byte	W01
	.byte		        37*song318_mvl/mxv
	.byte		MOD   , 3
	.byte	W02
	.byte		VOL   , 34*song318_mvl/mxv
	.byte	W01
	.byte		        30*song318_mvl/mxv
	.byte	W01
	.byte		        24*song318_mvl/mxv
	.byte	W01
	.byte		        19*song318_mvl/mxv
	.byte		MOD   , 0
	.byte	W01
	.byte		VOL   , 12*song318_mvl/mxv
	.byte	W02
	.byte		        8*song318_mvl/mxv
	.byte	W01
	.byte		        4*song318_mvl/mxv
	.byte	W01
	.byte		        0*song318_mvl/mxv
	.byte	W04
	.byte	W06
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 01 ****************************@

song318_1:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 76*song318_mvl/mxv
	.byte	W06
	.byte		N03   , Gn4 , v072
	.byte	W05
	.byte		N01
	.byte	W01
	.byte	W01
	.byte		N01
	.byte	W03
	.byte		N10   , Ds4 
	.byte	W02
	.byte	W06
	.byte	W02
	.byte		N03   , Gs4 
	.byte	W04
	.byte	W01
	.byte		N01
	.byte	W02
	.byte		N01
	.byte	W03
	.byte		N03   , As4 
	.byte	W05
	.byte		N01
	.byte	W01
	.byte	W01
	.byte		N01
	.byte	W03
	.byte		VOL   , 64*song318_mvl/mxv
	.byte		N16   , Ds5 
	.byte	W02
	.byte		VOL   , 55*song318_mvl/mxv
	.byte	W01
	.byte		        53*song318_mvl/mxv
	.byte	W01
	.byte		        48*song318_mvl/mxv
	.byte	W01
	.byte		        44*song318_mvl/mxv
	.byte	W01
	.byte		        40*song318_mvl/mxv
	.byte	W02
	.byte		        33*song318_mvl/mxv
	.byte	W01
	.byte		        30*song318_mvl/mxv
	.byte	W01
	.byte		        24*song318_mvl/mxv
	.byte	W01
	.byte		        22*song318_mvl/mxv
	.byte	W01
	.byte		        16*song318_mvl/mxv
	.byte	W02
	.byte		        15*song318_mvl/mxv
	.byte	W01
	.byte		        11*song318_mvl/mxv
	.byte	W01
	.byte		        8*song318_mvl/mxv
	.byte	W01
	.byte		        0*song318_mvl/mxv
	.byte	W03
	.byte	W06
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 02 ****************************@

song318_2:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 77*song318_mvl/mxv
	.byte		PAN   , c_v-16
	.byte	W06
	.byte		N10   , Ds2 , v088
	.byte	W06
	.byte	W04
	.byte		        Gs2 
	.byte	W02
	.byte	W06
	.byte	W02
	.byte		PAN   , c_v+16
	.byte		N10   , Gn2 
	.byte	W04
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	W01
	.byte		MOD   , 7
	.byte	W01
	.byte		VOL   , 69*song318_mvl/mxv
	.byte	W01
	.byte		        60*song318_mvl/mxv
	.byte	W01
	.byte		        51*song318_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N13   , Ds2 , v100
	.byte	W02
	.byte		VOL   , 46*song318_mvl/mxv
	.byte		MOD   , 5
	.byte	W01
	.byte		VOL   , 38*song318_mvl/mxv
	.byte	W01
	.byte		        33*song318_mvl/mxv
	.byte	W01
	.byte		        31*song318_mvl/mxv
	.byte	W01
	.byte		        28*song318_mvl/mxv
	.byte		MOD   , 4
	.byte	W02
	.byte		VOL   , 24*song318_mvl/mxv
	.byte	W01
	.byte		        22*song318_mvl/mxv
	.byte	W01
	.byte		        18*song318_mvl/mxv
	.byte	W01
	.byte		        12*song318_mvl/mxv
	.byte		MOD   , 2
	.byte	W01
	.byte		VOL   , 8*song318_mvl/mxv
	.byte	W02
	.byte		        0*song318_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte	W04
	.byte	W06
	.byte		        0
	.byte	FINE

@**************** Track 03 ****************************@

song318_3:
	.byte	KEYSH , 0
	.byte		VOICE , 13
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 62*song318_mvl/mxv
	.byte	W06
	.byte		N03   , Gn3 , v127
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W02
	.byte		N01
	.byte	W01
	.byte	W01
	.byte		N01
	.byte	W03
	.byte		N10   , Ds3 
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v-32
	.byte	W05
	.byte	W02
	.byte		N03   , Gs3 
	.byte	W04
	.byte		PAN   , c_v-32
	.byte	W01
	.byte		N01
	.byte	W02
	.byte		N01
	.byte	W03
	.byte		N03   , As3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W02
	.byte		N01
	.byte	W01
	.byte	W01
	.byte		N01
	.byte	W03
	.byte		N13   , Ds4 
	.byte	W02
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@**************** Track 04 ****************************@

song318_4:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 70*song318_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Gn4 , v127
	.byte	W05
	.byte		N01
	.byte	W01
	.byte	W01
	.byte		N01
	.byte	W02
	.byte		PAN   , c_v+24
	.byte	W01
	.byte		N10   , Ds4 
	.byte	W02
	.byte		MOD   , 4
	.byte	W06
	.byte	W02
	.byte		        0
	.byte		PAN   , c_v-32
	.byte		N03   , Gs4 
	.byte	W04
	.byte	W01
	.byte		N01
	.byte	W02
	.byte		N01
	.byte	W03
	.byte		PAN   , c_v+22
	.byte		N03   , As4 
	.byte	W05
	.byte		N01
	.byte	W01
	.byte	W01
	.byte		N01
	.byte	W02
	.byte		PAN   , c_v+32
	.byte	W01
	.byte		N13
	.byte	W02
	.byte	W03
	.byte		VOL   , 57*song318_mvl/mxv
	.byte	W01
	.byte		        44*song318_mvl/mxv
	.byte	W02
	.byte		        36*song318_mvl/mxv
	.byte	W01
	.byte		        25*song318_mvl/mxv
	.byte	W01
	.byte		        12*song318_mvl/mxv
	.byte	W01
	.byte		        4*song318_mvl/mxv
	.byte	W01
	.byte		        1*song318_mvl/mxv
	.byte	W02
	.byte	W06
	.byte	W06
	.byte	FINE

@**************** Track 05 ****************************@

song318_5:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v-48
	.byte		VOL   , 56*song318_mvl/mxv
	.byte	W06
	.byte		N03   , Fs2 , v096
	.byte	W03
	.byte		PAN   , c_v+48
	.byte	W02
	.byte		N01
	.byte	W01
	.byte	W01
	.byte		N01
	.byte	W03
	.byte		N10   , Bn4 , v052
	.byte	W02
	.byte	W01
	.byte		PAN   , c_v-48
	.byte	W05
	.byte	W02
	.byte		N03   , Fs2 , v092
	.byte	W04
	.byte		PAN   , c_v+50
	.byte	W01
	.byte		N01
	.byte	W02
	.byte		N01
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		PAN   , c_v-48
	.byte	W02
	.byte		N01   , Fs2 , v096
	.byte	W01
	.byte	W01
	.byte		N01
	.byte	W03
	.byte		N14   , Bn4 , v056
	.byte	W02
	.byte	W06
	.byte	W01
	.byte		VOL   , 44*song318_mvl/mxv
	.byte	W01
	.byte		        35*song318_mvl/mxv
	.byte	W01
	.byte		        28*song318_mvl/mxv
	.byte	W01
	.byte		        8*song318_mvl/mxv
	.byte	W02
	.byte		        0*song318_mvl/mxv
	.byte	W06
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song318:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song318_pri	@ Priority
	.byte	song318_rev	@ Reverb.

	.word	song318_grp

	.word	song318_0
	.word	song318_1
	.word	song318_2
	.word	song318_3
	.word	song318_4
	.word	song318_5

	.end
