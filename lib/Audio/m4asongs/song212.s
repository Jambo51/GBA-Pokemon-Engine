@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song212_grp, group_6
	.equ	song212_pri, 4
	.equ	song212_rev, 178
	.equ	song212_mvl, 127
	.equ	song212_key, 0
	.equ	song212_tbs, 1
	.equ	song212_exg, 1
	.equ	song212_cmp, 1

	.text
	.global	song212
	.align	2

@**************** Track 00 ****************************@

song212_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 100
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		PAN   , c_v-48
	.byte		VOL   , 11*song212_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , En3 , v127
	.byte	W03
	.byte		VOL   , 17*song212_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		VOL   , 24*song212_mvl/mxv
	.byte	W03
	.byte		        32*song212_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		VOL   , 52*song212_mvl/mxv
	.byte	W03
	.byte		        65*song212_mvl/mxv
	.byte	W03
	.byte		        76*song212_mvl/mxv
	.byte	W02
	.byte		        88*song212_mvl/mxv
	.byte		PAN   , c_v-43
	.byte	W02
	.byte		VOL   , 98*song212_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		VOL   , 111*song212_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 127*song212_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-12
	.byte	W02
	.byte		PAN   , c_v-38
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W06
	.byte		        c_v-13
	.byte	W05
	.byte		PAN   , c_v-31
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W03
	.byte	W03
	.byte		        c_v+6
	.byte	W03
	.byte		        c_v+11
	.byte	W03
	.byte		        c_v+20
	.byte	W01
	.byte		PAN   , c_v-21
	.byte	W05
	.byte		BEND  , c_v+12
	.byte	W03
	.byte		        c_v+7
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-20
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-13
	.byte	W06
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		PAN   , c_v+2
	.byte		BEND  , c_v+22
	.byte	W02
	.byte		        c_v+8
	.byte	W04
	.byte		        c_v+0
	.byte	W05
	.byte		PAN   , c_v+10
	.byte	W10
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W02
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		PAN   , c_v+24
	.byte		BEND  , c_v-20
	.byte	W06
	.byte		        c_v-13
	.byte	W05
	.byte		PAN   , c_v+32
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W03
	.byte	W03
	.byte		        c_v+6
	.byte	W03
	.byte		        c_v+11
	.byte	W03
	.byte		        c_v+20
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W05
	.byte		BEND  , c_v+12
	.byte	W03
	.byte		        c_v+7
	.byte	W04
	.byte		VOL   , 114*song212_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v+48
	.byte	W01
	.byte		VOL   , 104*song212_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		VOL   , 93*song212_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		VOL   , 82*song212_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W04
	.byte		VOL   , 67*song212_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		VOL   , 52*song212_mvl/mxv
	.byte	W03
	.byte		        32*song212_mvl/mxv
	.byte	W02
	.byte		        13*song212_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		EOT
	.byte	FINE

@**************** Track 01 ****************************@

song212_1:
	.byte	KEYSH , 0
	.byte		VOICE , 57
	.byte		PAN   , c_v+0
	.byte		VOL   , 60*song212_mvl/mxv
	.byte		N03   , Cn3 , v100
	.byte	W03
	.byte		        En3 , v080
	.byte	W04
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 , v100
	.byte	W04
	.byte		        En3 , v080
	.byte	W04
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 , v100
	.byte	W03
	.byte	W01
	.byte		N03   , En3 , v080
	.byte	W03
	.byte		        Dn3 
	.byte	W04
	.byte		        Cn3 , v100
	.byte	W04
	.byte		        En3 , v080
	.byte	W03
	.byte		        Dn3 
	.byte	W04
	.byte		        Cn3 , v100
	.byte	W03
	.byte		        En3 , v080
	.byte	W02
	.byte	PEND
	.byte	W02
	.byte		        Dn3 
	.byte	W04
	.byte		        Cn3 , v100
	.byte	W03
	.byte		        En3 , v080
	.byte	W04
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 , v100
	.byte	W04
	.byte		        En3 , v080
	.byte	W04
	.byte		        Cn3 , v100
	.byte	W03
	.byte		        En3 , v080
	.byte	W04
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 , v100
	.byte	W04
	.byte		        En3 , v080
	.byte	W04
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 , v100
	.byte	W03
	.byte	PATT
	 .word	song212_1 + 0x1C
	.byte	W02
	.byte		N03   , Cn3 , v076
	.byte	W04
	.byte		        En3 , v064
	.byte	W03
	.byte		        Dn3 , v060
	.byte	W04
	.byte		        Cn3 , v076
	.byte	W03
	.byte		        En3 , v052
	.byte	W04
	.byte		        Dn3 , v048
	.byte	W04
	.byte		        Cn3 , v068
	.byte	W03
	.byte		        En3 , v044
	.byte	W04
	.byte		        Dn3 , v040
	.byte	W03
	.byte		        Cn3 , v056
	.byte	W04
	.byte		        En3 , v032
	.byte	W04
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 , v048
	.byte	W03
	.byte	W01
	.byte		        En3 , v024
	.byte	W03
	.byte		        Dn3 , v020
	.byte	W04
	.byte		        Cn3 , v036
	.byte	W04
	.byte		        En3 , v016
	.byte	W03
	.byte		        Dn3 , v012
	.byte	W04
	.byte		        Cn3 , v028
	.byte	W05
	.byte	FINE

@******************************************************@
	.align	2

song212:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song212_pri	@ Priority
	.byte	song212_rev	@ Reverb.

	.word	song212_grp

	.word	song212_0
	.word	song212_1

	.end
