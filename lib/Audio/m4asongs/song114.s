@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song114_grp, group_6
	.equ	song114_pri, 4
	.equ	song114_rev, 178
	.equ	song114_mvl, 127
	.equ	song114_key, 0
	.equ	song114_tbs, 1
	.equ	song114_exg, 1
	.equ	song114_cmp, 1

	.text
	.global	song114
	.align	2

@**************** Track 00 ****************************@

song114_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 3
	.byte		VOL   , 110*song114_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W06
	.byte		N03   , Gn2 , v092
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N03   , Gn2 , v088
	.byte	W09
	.byte		PAN   , c_v-1
	.byte		N03   , Fs3 , v104
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+16
	.byte		N03   , Fs3 , v088
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Ds3 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N03
	.byte	W09
	.byte		PAN   , c_v-1
	.byte		N03   , An2 , v096
	.byte	W06
	.byte		PAN   , c_v+17
	.byte		N03   , An2 , v088
	.byte	W09
	.byte		PAN   , c_v-1
	.byte		N03   , Gs3 , v104
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N03   , Gs3 , v088
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v-1
	.byte		N03   , Fn3 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N03
	.byte	W15
	.byte	FINE

@**************** Track 01 ****************************@

song114_1:
	.byte	KEYSH , 0
	.byte		VOICE , 20
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 110*song114_mvl/mxv
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v+55
	.byte		N03   , Cn2 , v100
	.byte	W06
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+36
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v+17
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+2
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-8
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+12
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v+6
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+0
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-6
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-19
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-31
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-44
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-55
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-64
	.byte		N03
	.byte	W18
	.byte	FINE

@******************************************************@
	.align	2

song114:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song114_pri	@ Priority
	.byte	song114_rev	@ Reverb.

	.word	song114_grp

	.word	song114_0
	.word	song114_1

	.end
