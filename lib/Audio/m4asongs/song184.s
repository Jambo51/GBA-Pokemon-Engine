@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song184_grp, group_6
	.equ	song184_pri, 4
	.equ	song184_rev, 178
	.equ	song184_mvl, 127
	.equ	song184_key, 0
	.equ	song184_tbs, 1
	.equ	song184_exg, 1
	.equ	song184_cmp, 1

	.text
	.global	song184
	.align	2

@**************** Track 00 ****************************@

song184_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 28
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*song184_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Fn5 , v100
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		N01   , Fs5 , v088
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		N01   , Gn5 
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N01   , Fs5 
	.byte	W01
	.byte		N14   , Gn5 , v100
	.byte	W02
	.byte		PAN   , c_v-4
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		VOL   , 95*song184_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 92*song184_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		VOL   , 87*song184_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 79*song184_mvl/mxv
	.byte		PAN   , c_v-4
	.byte	W01
	.byte		VOL   , 66*song184_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		VOL   , 58*song184_mvl/mxv
	.byte	W01
	.byte		VOICE , 22
	.byte		VOL   , 100*song184_mvl/mxv
	.byte		N10   , Cn4 , v092
	.byte	W01
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v+7
	.byte	W02
	.byte		VOL   , 96*song184_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 90*song184_mvl/mxv
	.byte		PAN   , c_v-3
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 84*song184_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 70*song184_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 61*song184_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W03
	.byte		VOL   , 100*song184_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N10
	.byte	W01
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		PAN   , c_v+2
	.byte		BEND  , c_v+7
	.byte	W02
	.byte		VOL   , 96*song184_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 90*song184_mvl/mxv
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 84*song184_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 70*song184_mvl/mxv
	.byte		PAN   , c_v+7
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 61*song184_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W03
	.byte		VOL   , 100*song184_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N16
	.byte	W01
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		PAN   , c_v+3
	.byte		BEND  , c_v+7
	.byte	W02
	.byte		VOL   , 96*song184_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 90*song184_mvl/mxv
	.byte		PAN   , c_v-2
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 84*song184_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 70*song184_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+26
	.byte	W01
	.byte		VOL   , 61*song184_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W02
	.byte		VOL   , 56*song184_mvl/mxv
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+36
	.byte	W01
	.byte		VOL   , 48*song184_mvl/mxv
	.byte		BEND  , c_v+42
	.byte	W01
	.byte		VOL   , 37*song184_mvl/mxv
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		VOL   , 25*song184_mvl/mxv
	.byte		BEND  , c_v+56
	.byte	W01
	.byte		VOL   , 11*song184_mvl/mxv
	.byte		PAN   , c_v-11
	.byte		BEND  , c_v+63
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song184_1:
	.byte	KEYSH , 0
	.byte		VOICE , 25
	.byte		VOL   , 100*song184_mvl/mxv
	.byte		N04   , Cn3 , v040
	.byte	W04
	.byte		N14   , Gs4 
	.byte	W08
	.byte		VOL   , 89*song184_mvl/mxv
	.byte	W01
	.byte		        72*song184_mvl/mxv
	.byte	W01
	.byte		        46*song184_mvl/mxv
	.byte	W01
	.byte		        25*song184_mvl/mxv
	.byte	W01
	.byte		        11*song184_mvl/mxv
	.byte	W08
	.byte	W12
	.byte	W12
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song184:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song184_pri	@ Priority
	.byte	song184_rev	@ Reverb.

	.word	song184_grp

	.word	song184_0
	.word	song184_1

	.end
