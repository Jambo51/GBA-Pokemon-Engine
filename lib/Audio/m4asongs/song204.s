@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song204_grp, group_6
	.equ	song204_pri, 4
	.equ	song204_rev, 178
	.equ	song204_mvl, 127
	.equ	song204_key, 0
	.equ	song204_tbs, 1
	.equ	song204_exg, 1
	.equ	song204_cmp, 1

	.text
	.global	song204
	.align	2

@**************** Track 00 ****************************@

song204_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 46
	.byte		VOL   , 100*song204_mvl/mxv
	.byte		BENDR , 4
	.byte		PAN   , c_v+0
	.byte		MOD   , 6
	.byte		BEND  , c_v+3
	.byte		N01   , Ds6 , v092
	.byte	W01
	.byte		        Dn6 
	.byte	W01
	.byte		        Gn5 
	.byte	W01
	.byte		N20   , Gn6 , v100
	.byte	W21
	.byte		N01   , Ds6 , v056
	.byte	W01
	.byte		        Dn6 
	.byte	W01
	.byte		        Gn5 
	.byte	W01
	.byte		N20   , Gn6 , v064
	.byte	W03
	.byte		PAN   , c_v+6
	.byte	W04
	.byte		        c_v-4
	.byte	W05
	.byte		        c_v+6
	.byte	W05
	.byte		        c_v-4
	.byte	W04
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		N01   , Gs5 , v092
	.byte	W01
	.byte		        Gn5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		N20   , Cn6 , v100
	.byte	W21
	.byte	PEND
	.byte		PAN   , c_v+16
	.byte		N01   , Gs5 , v056
	.byte	W01
	.byte		        Gn5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		N20   , Cn6 , v064
	.byte	W21
	.byte	PEND
	.byte		PAN   , c_v-16
	.byte		N01   , Gs5 , v040
	.byte	W01
	.byte		        Gn5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		N20   , Cn6 
	.byte	W21
	.byte	PEND
	.byte		PAN   , c_v+32
	.byte		N01   , Gs5 , v020
	.byte	W01
	.byte		        Gn5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		N20   , Cn6 
	.byte	W21
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		N01   , Ds6 , v092
	.byte	W01
	.byte		        Dn6 
	.byte	W01
	.byte		        Gn5 
	.byte	W01
	.byte		N20   , Gn6 , v100
	.byte	W21
	.byte	PATT
	 .word	song204_0 + 0x1C
	.byte	PATT
	 .word	song204_0 + 0x32
	.byte	PATT
	 .word	song204_0 + 0x41
	.byte	PATT
	 .word	song204_0 + 0x50
	.byte	PATT
	 .word	song204_0 + 0x5E
	.byte	FINE

@**************** Track 01 ****************************@

song204_1:
	.byte	KEYSH , 0
	.byte		VOICE , 55
	.byte		PAN   , c_v+0
	.byte		VOL   , 39*song204_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W10
	.byte		N01   , Ds6 , v112
	.byte	W02
	.byte		        Dn6 
	.byte	W01
	.byte		        Gn5 
	.byte	W01
	.byte		N04   , Gn6 
	.byte	W05
	.byte		        Gn6 , v096
	.byte	W05
	.byte		PAN   , c_v+50
	.byte		N04   , Gn6 , v080
	.byte	W04
	.byte		PAN   , c_v-48
	.byte		N04   , Gn6 , v064
	.byte	W05
	.byte		PAN   , c_v+50
	.byte		N04   , Gn6 , v048
	.byte	W05
	.byte		PAN   , c_v-49
	.byte		N04   , Gn6 , v032
	.byte	W10
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte	W10
	.byte		N01   , Gs5 , v112
	.byte	W02
	.byte		        Gn5 
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		N04   , Cn6 
	.byte	W05
	.byte		        Cn6 , v096
	.byte	W05
	.byte	PEND
	.byte		PAN   , c_v+50
	.byte		N04   , Cn6 , v080
	.byte	W04
	.byte		PAN   , c_v-48
	.byte		N04   , Cn6 , v064
	.byte	W05
	.byte		PAN   , c_v+50
	.byte		N04   , Cn6 , v048
	.byte	W05
	.byte		PAN   , c_v-49
	.byte		N04   , Cn6 , v032
	.byte	W10
	.byte	PEND
	.byte	W24
	.byte	W24
	.byte		PAN   , c_v+0
	.byte	W10
	.byte		N01   , Ds6 , v112
	.byte	W02
	.byte		        Dn6 
	.byte	W01
	.byte		        Gn5 
	.byte	W01
	.byte		N04   , Gn6 
	.byte	W05
	.byte		        Gn6 , v096
	.byte	W05
	.byte	PATT
	 .word	song204_1 + 0x19
	.byte	PATT
	 .word	song204_1 + 0x32
	.byte	PATT
	 .word	song204_1 + 0x44
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song204:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song204_pri	@ Priority
	.byte	song204_rev	@ Reverb.

	.word	song204_grp

	.word	song204_0
	.word	song204_1

	.end
