@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song258_grp, group_0
	.equ	song258_pri, 5
	.equ	song258_rev, 178
	.equ	song258_mvl, 127
	.equ	song258_key, 0
	.equ	song258_tbs, 1
	.equ	song258_exg, 1
	.equ	song258_cmp, 1

	.text
	.global	song258
	.align	2

@**************** Track 00 ****************************@

song258_0:
	.byte	KEYSH , 0
	.byte	W12
	.byte	TEMPO , 95
	.byte		VOICE , 46
	.byte		VOL   , 90*song258_mvl/mxv
	.byte		PAN   , c_v-24
	.byte		N16   , Gs4 , v080
	.byte	W08
	.byte		MOD   , 5
	.byte	W08
	.byte		        0
	.byte	W08
	.byte		N06   , Ds4 
	.byte	W08
	.byte		        Gs4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		N08   , As4 
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		N48   , Gs4 
	.byte	W16
	.byte		MOD   , 5
	.byte	W08
	.byte		VOL   , 82*song258_mvl/mxv
	.byte	W05
	.byte		        72*song258_mvl/mxv
	.byte	W07
	.byte		        41*song258_mvl/mxv
	.byte	W05
	.byte		        14*song258_mvl/mxv
	.byte	W07
	.byte		MOD   , 0
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song258_1:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 46
	.byte		VOL   , 90*song258_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N16   , Cn5 , v104
	.byte	W08
	.byte		MOD   , 5
	.byte	W08
	.byte		        0
	.byte	W08
	.byte		N06
	.byte	W08
	.byte		N06
	.byte	W08
	.byte		N06
	.byte	W08
	.byte		N08   , Cs5 
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		N48   , Cn5 
	.byte	W16
	.byte		MOD   , 5
	.byte	W08
	.byte		VOL   , 82*song258_mvl/mxv
	.byte	W05
	.byte		        72*song258_mvl/mxv
	.byte	W07
	.byte		        41*song258_mvl/mxv
	.byte	W05
	.byte		        14*song258_mvl/mxv
	.byte	W07
	.byte		MOD   , 0
	.byte	W24
	.byte	FINE

@**************** Track 02 ****************************@

song258_2:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 58
	.byte		VOL   , 90*song258_mvl/mxv
	.byte		N16   , Gs1 , v120
	.byte	W24
	.byte		N06
	.byte	W08
	.byte		N06
	.byte	W08
	.byte		N06
	.byte	W08
	.byte		N08   , Fs1 
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		        Gn1 
	.byte	W16
	.byte		N48   , Gs1 
	.byte	W24
	.byte		VOL   , 82*song258_mvl/mxv
	.byte	W05
	.byte		        72*song258_mvl/mxv
	.byte	W07
	.byte		        41*song258_mvl/mxv
	.byte	W05
	.byte		        14*song258_mvl/mxv
	.byte	W07
	.byte	W24
	.byte	FINE

@**************** Track 03 ****************************@

song258_3:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 82
	.byte		VOL   , 90*song258_mvl/mxv
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v-48
	.byte		N16   , Cn4 , v036
	.byte	W08
	.byte		MOD   , 5
	.byte	W08
	.byte		        0
	.byte	W08
	.byte		N06   , Gs3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		N08   , As3 
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		N48   , Gs3 
	.byte	W16
	.byte		MOD   , 5
	.byte	W08
	.byte		VOL   , 82*song258_mvl/mxv
	.byte	W05
	.byte		        72*song258_mvl/mxv
	.byte	W07
	.byte		        41*song258_mvl/mxv
	.byte	W05
	.byte		        14*song258_mvl/mxv
	.byte	W07
	.byte		MOD   , 0
	.byte	W24
	.byte	FINE

@**************** Track 04 ****************************@

song258_4:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 83
	.byte		VOL   , 90*song258_mvl/mxv
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+48
	.byte		N16   , Gs3 , v036
	.byte	W08
	.byte		MOD   , 5
	.byte	W08
	.byte		        0
	.byte	W08
	.byte		N06   , Ds3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Ds3 
	.byte	W08
	.byte		N08   , Fs3 
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		N48   , Ds3 
	.byte	W16
	.byte		MOD   , 5
	.byte	W08
	.byte		VOL   , 82*song258_mvl/mxv
	.byte	W05
	.byte		        72*song258_mvl/mxv
	.byte	W07
	.byte		        41*song258_mvl/mxv
	.byte	W05
	.byte		        14*song258_mvl/mxv
	.byte	W07
	.byte		MOD   , 0
	.byte	W24
	.byte	FINE

@**************** Track 05 ****************************@

song258_5:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 46
	.byte		PAN   , c_v+24
	.byte		VOL   , 90*song258_mvl/mxv
	.byte		N16   , Ds4 , v080
	.byte	W08
	.byte		MOD   , 5
	.byte	W08
	.byte		        0
	.byte	W08
	.byte		N06   , Cn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		N08   , Fs4 
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		N08
	.byte	W16
	.byte		N48   , Ds4 
	.byte	W16
	.byte		MOD   , 5
	.byte	W08
	.byte		VOL   , 82*song258_mvl/mxv
	.byte	W05
	.byte		        72*song258_mvl/mxv
	.byte	W07
	.byte		        41*song258_mvl/mxv
	.byte	W05
	.byte		        14*song258_mvl/mxv
	.byte	W07
	.byte		MOD   , 0
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song258:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song258_pri	@ Priority
	.byte	song258_rev	@ Reverb.

	.word	song258_grp

	.word	song258_0
	.word	song258_1
	.word	song258_2
	.word	song258_3
	.word	song258_4
	.word	song258_5

	.end
