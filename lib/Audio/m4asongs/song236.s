@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song236_grp, group_6
	.equ	song236_pri, 4
	.equ	song236_rev, 178
	.equ	song236_mvl, 127
	.equ	song236_key, 0
	.equ	song236_tbs, 1
	.equ	song236_exg, 1
	.equ	song236_cmp, 1

	.text
	.global	song236
	.align	2

@**************** Track 00 ****************************@

song236_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 46
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song236_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		N09   , As5 , v112
	.byte	W06
	.byte	W03
	.byte		PAN   , c_v-5
	.byte		N08   , Cn5 
	.byte	W03
	.byte	W06
	.byte		PAN   , c_v-9
	.byte		N10   , Gn5 
	.byte	W06
	.byte	W04
	.byte		PAN   , c_v-5
	.byte		N09   , Fn6 
	.byte	W02
	.byte	W06
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		N09   , An5 
	.byte	W04
	.byte	W06
	.byte		PAN   , c_v+4
	.byte		N09   , As5 
	.byte	W06
	.byte	W03
	.byte		PAN   , c_v+9
	.byte		N08   , Cn5 , v108
	.byte	W03
	.byte	W06
	.byte		PAN   , c_v+4
	.byte		N10   , Gn5 , v104
	.byte	W06
	.byte	W04
	.byte		PAN   , c_v+0
	.byte		N09   , Fn6 , v096
	.byte	W02
	.byte	W06
	.byte	W02
	.byte		PAN   , c_v-5
	.byte		N09   , An5 , v092
	.byte	W04
	.byte	W04
	.byte		PAN   , c_v-9
	.byte	W02
	.byte		N09   , As5 , v084
	.byte	W06
	.byte	W03
	.byte		PAN   , c_v-5
	.byte		N08   , Cn5 , v080
	.byte	W03
	.byte	W06
	.byte		N10   , Gn5 , v072
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W05
	.byte	W04
	.byte		        c_v+4
	.byte		N09   , Fn6 , v068
	.byte	W02
	.byte	W06
	.byte	W02
	.byte		PAN   , c_v+9
	.byte		N09   , An5 , v060
	.byte	W04
	.byte	W04
	.byte		PAN   , c_v+4
	.byte	W02
	.byte		N09   , As5 , v056
	.byte	W06
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N08   , Cn5 , v052
	.byte	W03
	.byte	W06
	.byte		N10   , Gn5 , v044
	.byte	W01
	.byte		PAN   , c_v-5
	.byte	W05
	.byte	W03
	.byte		        c_v-9
	.byte	W01
	.byte		N09   , Fn6 , v040
	.byte	W02
	.byte	W06
	.byte	W02
	.byte		PAN   , c_v-5
	.byte		N09   , An5 , v032
	.byte	W04
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song236_1:
	.byte	KEYSH , 0
	.byte		VOICE , 53
	.byte		XCMD  , xIECV , 9
	.byte		        xIECL , 8
	.byte		VOL   , 43*song236_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W04
	.byte		N08   , Fn5 , v112
	.byte	W02
	.byte	W06
	.byte	W01
	.byte		N10   , Ds5 
	.byte	W05
	.byte	W06
	.byte		N09   , As6 
	.byte	W06
	.byte	W03
	.byte		        Cn6 
	.byte	W03
	.byte	W06
	.byte		N10   , Fn5 
	.byte	W06
	.byte	W04
	.byte		N08
	.byte	W02
	.byte	W06
	.byte	W01
	.byte		N10   , Ds5 , v104
	.byte	W05
	.byte	W06
	.byte		N09   , As6 , v100
	.byte	W06
	.byte	W03
	.byte		        Cn6 , v092
	.byte	W03
	.byte	W06
	.byte		N10   , Fn5 , v088
	.byte	W06
	.byte	W04
	.byte		N08   , Fn5 , v080
	.byte	W02
	.byte	W06
	.byte	W01
	.byte		N10   , Ds5 , v076
	.byte	W05
	.byte	W06
	.byte		N09   , As6 , v072
	.byte	W06
	.byte	W03
	.byte		        Cn6 , v064
	.byte	W03
	.byte	W06
	.byte		N10   , Fn5 , v060
	.byte	W06
	.byte	W04
	.byte		N08   , Fn5 , v052
	.byte	W02
	.byte	W06
	.byte	W01
	.byte		N10   , Ds5 , v048
	.byte	W05
	.byte	W06
	.byte		N09   , As6 , v040
	.byte	W06
	.byte	W03
	.byte		        Cn6 , v036
	.byte	W03
	.byte	W06
	.byte		N12   , Fn5 , v032
	.byte	W06
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song236:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song236_pri	@ Priority
	.byte	song236_rev	@ Reverb.

	.word	song236_grp

	.word	song236_0
	.word	song236_1

	.end
