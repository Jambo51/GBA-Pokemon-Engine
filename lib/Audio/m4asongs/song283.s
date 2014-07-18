@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song283_grp, group_19
	.equ	song283_pri, 0
	.equ	song283_rev, 178
	.equ	song283_mvl, 127
	.equ	song283_key, 0
	.equ	song283_tbs, 1
	.equ	song283_exg, 1
	.equ	song283_cmp, 1

	.text
	.global	song283
	.align	2

@**************** Track 00 ****************************@

song283_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 73
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 47*song283_mvl/mxv
	.byte	W24
	.byte		N12   , Gs2 , v088
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		VOL   , 23*song283_mvl/mxv
	.byte		N24   , Gs2 
	.byte	W03
	.byte		VOL   , 28*song283_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte		VOL   , 36*song283_mvl/mxv
	.byte	W03
	.byte		        41*song283_mvl/mxv
	.byte	W03
	.byte		        48*song283_mvl/mxv
	.byte	W03
	.byte		        56*song283_mvl/mxv
	.byte	W03
	.byte		        60*song283_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		MOD   , 0
	.byte		VOL   , 47*song283_mvl/mxv
	.byte		N06   , En2 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06   , En2 , v088
	.byte	W24
	.byte		VOL   , 23*song283_mvl/mxv
	.byte		N24
	.byte	W03
	.byte		VOL   , 28*song283_mvl/mxv
	.byte	W03
	.byte		MOD   , 8
	.byte		VOL   , 36*song283_mvl/mxv
	.byte	W03
	.byte		        41*song283_mvl/mxv
	.byte	W03
	.byte		        48*song283_mvl/mxv
	.byte	W03
	.byte		        56*song283_mvl/mxv
	.byte	W03
	.byte		        60*song283_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 47*song283_mvl/mxv
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song283_0 + 0x31
	.byte	PATT
	 .word	song283_0 + 0x31
	.byte	PATT
	 .word	song283_0 + 0x31
	.byte	GOTO
	 .word	song283_0 + 0x31
	.byte	FINE

@**************** Track 01 ****************************@

song283_1:
	.byte	KEYSH , 0
	.byte		VOICE , 38
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 95*song283_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Cs3 , v120
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N48   , Cs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 84*song283_mvl/mxv
	.byte	W12
	.byte		        72*song283_mvl/mxv
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte		VOL   , 96*song283_mvl/mxv
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N03   , Cs3 , v120
	.byte	W24
	.byte		VOL   , 48*song283_mvl/mxv
	.byte		N24
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 52*song283_mvl/mxv
	.byte	W03
	.byte		        60*song283_mvl/mxv
	.byte	W03
	.byte		        72*song283_mvl/mxv
	.byte	W03
	.byte		        84*song283_mvl/mxv
	.byte		MOD   , 12
	.byte	W03
	.byte		VOL   , 96*song283_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		VOL   , 48*song283_mvl/mxv
	.byte		N24   , Cn3 
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 52*song283_mvl/mxv
	.byte	W03
	.byte		        60*song283_mvl/mxv
	.byte	W03
	.byte		        72*song283_mvl/mxv
	.byte	W03
	.byte		        84*song283_mvl/mxv
	.byte	W03
	.byte		        96*song283_mvl/mxv
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte		N12   , An2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N03   , Cs3 
	.byte	W24
	.byte		VOL   , 48*song283_mvl/mxv
	.byte		N24
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 52*song283_mvl/mxv
	.byte	W03
	.byte		        60*song283_mvl/mxv
	.byte	W03
	.byte		        72*song283_mvl/mxv
	.byte	W03
	.byte		        84*song283_mvl/mxv
	.byte	W03
	.byte		        96*song283_mvl/mxv
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		VOL   , 48*song283_mvl/mxv
	.byte		N24   , Cn3 
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 52*song283_mvl/mxv
	.byte	W03
	.byte		        60*song283_mvl/mxv
	.byte	W03
	.byte		        72*song283_mvl/mxv
	.byte	W03
	.byte		        84*song283_mvl/mxv
	.byte	W03
	.byte		        96*song283_mvl/mxv
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	GOTO
	 .word	song283_1 + 0x2E
	.byte	FINE

@**************** Track 02 ****************************@

song283_2:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+24
	.byte		VOL   , 47*song283_mvl/mxv
	.byte	W24
	.byte	W24
	.byte		N12   , Cs5 , v124
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N24   , Cs5 
	.byte	W06
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 30*song283_mvl/mxv
	.byte	W06
	.byte		        21*song283_mvl/mxv
	.byte	W03
	.byte		        12*song283_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 48*song283_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N06   , Gs4 , v127
	.byte	W24
	.byte		N06   , Gs4 , v127
	.byte	W24
	.byte		VOL   , 23*song283_mvl/mxv
	.byte		N24   , Cn5 , v120
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 30*song283_mvl/mxv
	.byte	W03
	.byte		        36*song283_mvl/mxv
	.byte	W03
	.byte		        40*song283_mvl/mxv
	.byte	W03
	.byte		        48*song283_mvl/mxv
	.byte	W03
	.byte		        60*song283_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 42*song283_mvl/mxv
	.byte		N06   , Gs4 , v127
	.byte	W03
	.byte		VOL   , 48*song283_mvl/mxv
	.byte	W21
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		VOL   , 23*song283_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 30*song283_mvl/mxv
	.byte	W03
	.byte		        36*song283_mvl/mxv
	.byte	W03
	.byte		        40*song283_mvl/mxv
	.byte	W03
	.byte		        48*song283_mvl/mxv
	.byte	W03
	.byte		        60*song283_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 48*song283_mvl/mxv
	.byte		N06   , Gs4 , v120
	.byte	W24
	.byte		        Gs4 , v127
	.byte	W24
	.byte		N06   , Gs4 , v127
	.byte	W24
	.byte		VOL   , 23*song283_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 30*song283_mvl/mxv
	.byte	W03
	.byte		        36*song283_mvl/mxv
	.byte	W03
	.byte		        40*song283_mvl/mxv
	.byte	W03
	.byte		        48*song283_mvl/mxv
	.byte	W03
	.byte		        60*song283_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 48*song283_mvl/mxv
	.byte		N06   , Gs4 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song283_2 + 0x6E
	.byte	GOTO
	 .word	song283_2 + 0x2B
	.byte	FINE

@**************** Track 03 ****************************@

song283_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 48*song283_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Cs2 , v120
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N36   , Cs1 
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06   , Cs1 , v120
	.byte	W24
	.byte		N24   , Cs2 
	.byte	W12
	.byte		VOL   , 60*song283_mvl/mxv
	.byte	W06
	.byte		        72*song283_mvl/mxv
	.byte	W06
	.byte		        48*song283_mvl/mxv
	.byte		N06   , Gs1 
	.byte	W24
	.byte		N24   , Dn1 
	.byte	W24
	.byte		N06   , Cs1 
	.byte	W24
	.byte		N24   , Cn2 
	.byte	W12
	.byte		VOL   , 60*song283_mvl/mxv
	.byte	W06
	.byte		        72*song283_mvl/mxv
	.byte	W06
	.byte		        48*song283_mvl/mxv
	.byte		N06   , Cs1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W24
	.byte		N24   , Cs2 
	.byte	W12
	.byte		VOL   , 60*song283_mvl/mxv
	.byte	W06
	.byte		        72*song283_mvl/mxv
	.byte	W06
	.byte		        48*song283_mvl/mxv
	.byte		N06   , Cs1 
	.byte	W24
	.byte		N24   , Cn2 
	.byte	W12
	.byte		VOL   , 60*song283_mvl/mxv
	.byte	W06
	.byte		        72*song283_mvl/mxv
	.byte	W06
	.byte		        48*song283_mvl/mxv
	.byte		N06   , Cs1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte	GOTO
	 .word	song283_3 + 0x20
	.byte	FINE

@**************** Track 04 ****************************@

song283_4:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 95*song283_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Cs3 , v084
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N48   , Cs3 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		VOL   , 84*song283_mvl/mxv
	.byte	W12
	.byte		        72*song283_mvl/mxv
	.byte	W12
	.byte		        96*song283_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N03   , Cs4 , v084
	.byte	W24
	.byte		VOL   , 48*song283_mvl/mxv
	.byte		N24
	.byte	W06
	.byte		VOL   , 52*song283_mvl/mxv
	.byte		MOD   , 10
	.byte	W03
	.byte		VOL   , 60*song283_mvl/mxv
	.byte	W03
	.byte		        72*song283_mvl/mxv
	.byte	W03
	.byte		        84*song283_mvl/mxv
	.byte	W03
	.byte		        96*song283_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte		N06
	.byte	W24
	.byte		VOL   , 48*song283_mvl/mxv
	.byte	W06
	.byte		        52*song283_mvl/mxv
	.byte		MOD   , 10
	.byte	W03
	.byte		VOL   , 60*song283_mvl/mxv
	.byte	W03
	.byte		        72*song283_mvl/mxv
	.byte	W03
	.byte		        84*song283_mvl/mxv
	.byte	W03
	.byte		        96*song283_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		N12   , An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PATT
	 .word	song283_4 + 0x29
	.byte		N06   , Cs4 , v084
	.byte	W24
	.byte		VOL   , 48*song283_mvl/mxv
	.byte	W06
	.byte		        52*song283_mvl/mxv
	.byte		MOD   , 10
	.byte	W03
	.byte		VOL   , 60*song283_mvl/mxv
	.byte	W03
	.byte		        72*song283_mvl/mxv
	.byte	W03
	.byte		        84*song283_mvl/mxv
	.byte	W03
	.byte		        96*song283_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	GOTO
	 .word	song283_4 + 0x29
	.byte	FINE

@**************** Track 05 ****************************@

song283_5:
	.byte	KEYSH , 0
	.byte		VOICE , 83
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 36*song283_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N12   , Cs3 , v127
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N48   , Cs3 
	.byte	W12
	.byte		MOD   , 9
	.byte	W36
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N03   , Cs3 , v127
	.byte	W24
	.byte		N24
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte		N06
	.byte	W24
	.byte		N24   , Cn3 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , An2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PATT
	 .word	song283_5 + 0x29
	.byte		N06   , Cs3 , v127
	.byte	W24
	.byte		N24   , Cn3 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	GOTO
	 .word	song283_5 + 0x29
	.byte	FINE

@**************** Track 06 ****************************@

song283_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 61*song283_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N48   , Fn2 , v064
	.byte	W48
	.byte		N06   , En3 , v104
	.byte	W12
	.byte		        Dn3 , v084
	.byte	W12
	.byte		        En3 , v104
	.byte	W12
	.byte		        Gs2 , v080
	.byte	W12
	.byte		N12   , Cn1 , v096
	.byte	W12
	.byte		        Fs2 , v120
	.byte	W12
	.byte		N24   , Fn2 , v048
	.byte	W24
	.byte		N12   , En1 , v120
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N24   , Fn2 , v048
	.byte	W24
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		N12   , Fs2 , v096
	.byte	W12
	.byte		N06   , En3 , v120
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gs2 , v080
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W12
	.byte		        En3 , v112
	.byte	W12
	.byte		        Gs2 , v080
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N24   , Fn2 , v048
	.byte	W24
	.byte		N06   , Dn3 , v120
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , Cn2 , v100
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Cn2 , v120
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	GOTO
	 .word	song283_6 + 0x1F
	.byte	FINE

@******************************************************@
	.align	2

song283:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song283_pri	@ Priority
	.byte	song283_rev	@ Reverb.

	.word	song283_grp

	.word	song283_0
	.word	song283_1
	.word	song283_2
	.word	song283_3
	.word	song283_4
	.word	song283_5
	.word	song283_6

	.end
