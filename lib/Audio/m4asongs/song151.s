@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song151_grp, group_6
	.equ	song151_pri, 4
	.equ	song151_rev, 178
	.equ	song151_mvl, 127
	.equ	song151_key, 0
	.equ	song151_tbs, 1
	.equ	song151_exg, 1
	.equ	song151_cmp, 1

	.text
	.global	song151
	.align	2

@**************** Track 00 ****************************@

song151_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song151_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , En2 , v127
	.byte	W01
	.byte		VOL   , 55*song151_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v-16
	.byte		N07   , An1 
	.byte	W01
	.byte		VOL   , 71*song151_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 86*song151_mvl/mxv
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 110*song151_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+33
	.byte	W02
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+54
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte	W02
	.byte		VOL   , 90*song151_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+1
	.byte		N04
	.byte	W01
	.byte		VOL   , 54*song151_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+38
	.byte	W02
	.byte		VOL   , 83*song151_mvl/mxv
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		VOL   , 110*song151_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte	W03
	.byte		VOL   , 90*song151_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Ds2 , v104
	.byte	W02
	.byte		PAN   , c_v+10
	.byte		VOL   , 55*song151_mvl/mxv
	.byte		BEND  , c_v-16
	.byte		N07   , Gs1 , v100
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 71*song151_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v-9
	.byte		VOL   , 86*song151_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song151_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+54
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte	W02
	.byte		PAN   , c_v+10
	.byte		VOL   , 90*song151_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N04
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 54*song151_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		PAN   , c_v-9
	.byte		VOL   , 83*song151_mvl/mxv
	.byte		BEND  , c_v+48
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song151_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W03
	.byte		VOL   , 90*song151_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Dn2 , v088
	.byte	W01
	.byte		PAN   , c_v+10
	.byte		VOL   , 55*song151_mvl/mxv
	.byte		BEND  , c_v-16
	.byte		N07   , Gn1 , v060
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		VOL   , 71*song151_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v-9
	.byte		VOL   , 86*song151_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song151_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+54
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte	W03
	.byte		PAN   , c_v+10
	.byte		VOL   , 90*song151_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N04
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 54*song151_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		PAN   , c_v-9
	.byte		VOL   , 83*song151_mvl/mxv
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song151_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song151_1:
	.byte	KEYSH , 0
	.byte		VOICE , 25
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song151_mvl/mxv
	.byte		N08   , Cn2 , v040
	.byte	W01
	.byte		VOL   , 72*song151_mvl/mxv
	.byte	W01
	.byte		        87*song151_mvl/mxv
	.byte	W01
	.byte		        110*song151_mvl/mxv
	.byte	W01
	.byte		        89*song151_mvl/mxv
	.byte	W02
	.byte		        49*song151_mvl/mxv
	.byte	W01
	.byte		        14*song151_mvl/mxv
	.byte	W02
	.byte		        110*song151_mvl/mxv
	.byte		N04   , Gn4 
	.byte	W01
	.byte		VOL   , 84*song151_mvl/mxv
	.byte	W02
	.byte		        110*song151_mvl/mxv
	.byte	W02
	.byte		        55*song151_mvl/mxv
	.byte	W02
	.byte		        110*song151_mvl/mxv
	.byte		N08   , Cn2 , v032
	.byte	W02
	.byte		VOL   , 72*song151_mvl/mxv
	.byte	W01
	.byte		        87*song151_mvl/mxv
	.byte	W01
	.byte		        110*song151_mvl/mxv
	.byte	W01
	.byte		        89*song151_mvl/mxv
	.byte	W01
	.byte		        49*song151_mvl/mxv
	.byte	W02
	.byte		        14*song151_mvl/mxv
	.byte	W02
	.byte		        110*song151_mvl/mxv
	.byte		N04   , Gn4 
	.byte	W01
	.byte		VOL   , 84*song151_mvl/mxv
	.byte	W01
	.byte		        110*song151_mvl/mxv
	.byte	W03
	.byte		        55*song151_mvl/mxv
	.byte	W02
	.byte		        110*song151_mvl/mxv
	.byte		N08   , Cn2 , v020
	.byte	W01
	.byte		VOL   , 72*song151_mvl/mxv
	.byte	W02
	.byte		        87*song151_mvl/mxv
	.byte	W01
	.byte		        110*song151_mvl/mxv
	.byte	W01
	.byte		        89*song151_mvl/mxv
	.byte	W01
	.byte		        49*song151_mvl/mxv
	.byte	W01
	.byte		        14*song151_mvl/mxv
	.byte	W03
	.byte		        110*song151_mvl/mxv
	.byte		N04   , Gn4 
	.byte	W01
	.byte		VOL   , 84*song151_mvl/mxv
	.byte	W01
	.byte		        110*song151_mvl/mxv
	.byte	W03
	.byte		        55*song151_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

song151:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song151_pri	@ Priority
	.byte	song151_rev	@ Reverb.

	.word	song151_grp

	.word	song151_0
	.word	song151_1

	.end
