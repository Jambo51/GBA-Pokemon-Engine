@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song343_grp, group_59
	.equ	song343_pri, 0
	.equ	song343_rev, 178
	.equ	song343_mvl, 127
	.equ	song343_key, 0
	.equ	song343_tbs, 1
	.equ	song343_exg, 1
	.equ	song343_cmp, 1

	.section .rodata
	.global	song343
	.align	2

@**************** Track 00 ****************************@

song343_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 64
	.byte		VOICE , 38
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 45*song343_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		MOD   , 2
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		        En1 , v064
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		        En1 , v064
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song343_0 + 0x23
	.byte	PATT
	 .word	song343_0 + 0x23
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v120
	.byte	W12
	.byte		        Ds1 , v064
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song343_0 + 0x43
	.byte	PATT
	 .word	song343_0 + 0x43
	.byte	PATT
	 .word	song343_0 + 0x43
	.byte	GOTO
	 .word	song343_0 + 0x2
	.byte	FINE

@**************** Track 01 ****************************@

song343_1:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 76*song343_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N06   , En1 , v120
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+2
	.byte		N06   , En1 , v120
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+3
	.byte		N06   , En1 , v120
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-3
	.byte		N06   , En1 , v120
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+2
	.byte		N06   , Ds1 , v120
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte		N06   , Ds1 , v120
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte	PATT
	 .word	song343_1 + 0x192
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-2
	.byte		N06   , Ds1 , v120
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Ds1 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds1 , v020
	.byte	W06
	.byte	GOTO
	 .word	song343_1 + 0x2
	.byte	FINE

@**************** Track 02 ****************************@

song343_2:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-62
	.byte		VOL   , 56*song343_mvl/mxv
	.byte		N01   , Fs4 , v064
	.byte	W02
	.byte		        Fs4 , v020
	.byte	W04
	.byte		        Gs4 , v064
	.byte	W02
	.byte		        Gs4 , v020
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W04
	.byte		N01   , En5 , v064
	.byte	W03
	.byte		        En5 , v020
	.byte	W02
	.byte		        Fs5 , v064
	.byte	W03
	.byte		PAN   , c_v-61
	.byte		N01   , Fs5 , v020
	.byte	W02
	.byte		PAN   , c_v-62
	.byte	W08
	.byte		N01   , Dn5 , v064
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N01   , Cn5 
	.byte		N01   , Dn5 , v020
	.byte	W02
	.byte		        Cn5 
	.byte	W09
	.byte		PAN   , c_v-62
	.byte		N01   , Fs3 , v064
	.byte	W02
	.byte		        Fs3 , v020
	.byte	W01
	.byte		        Gs3 , v064
	.byte	W03
	.byte		        Gs3 , v020
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W04
	.byte		N01   , Bn4 , v064
	.byte	W03
	.byte		        Bn4 , v020
	.byte	W01
	.byte		        Dn5 , v064
	.byte	W02
	.byte		        Dn5 , v020
	.byte	W02
	.byte		PAN   , c_v-62
	.byte	W09
	.byte		N01   , Fs5 , v064
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N01   , Fs5 , v020
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W02
	.byte		        Cs5 , v020
	.byte	W04
	.byte		PAN   , c_v-62
	.byte	W02
	.byte		N01   , Cs4 , v064
	.byte	W02
	.byte		        As3 
	.byte		N01   , Cs4 , v020
	.byte	W03
	.byte		        As3 
	.byte	W05
	.byte		PAN   , c_v+63
	.byte		N01   , Fs3 , v064
	.byte	W02
	.byte		        Fs3 , v020
	.byte	W01
	.byte		        Gs3 , v064
	.byte	W03
	.byte		        Gs3 , v020
	.byte	W06
	.byte		PAN   , c_v-61
	.byte	W02
	.byte		        c_v-62
	.byte	W01
	.byte		N01   , Dn5 , v064
	.byte	W03
	.byte		        Cn5 
	.byte		N01   , Dn5 , v020
	.byte	W02
	.byte		        Cn5 
	.byte	W04
	.byte		PAN   , c_v+63
	.byte		N01   , Fs4 , v064
	.byte	W02
	.byte		        Fs4 , v020
	.byte	W01
	.byte		        Cn4 , v064
	.byte	W03
	.byte		        Cn4 , v020
	.byte	W01
	.byte		        Gn3 , v064
	.byte	W02
	.byte		        Gn3 , v020
	.byte	W03
	.byte		PAN   , c_v-62
	.byte	W06
	.byte		N01   , Gn4 , v064
	.byte	W02
	.byte		        Gn4 , v020
	.byte		N01   , An4 , v064
	.byte	W02
	.byte		        An4 , v020
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		N01   , Fs4 , v064
	.byte	W02
	.byte		        Fs4 , v020
	.byte	W04
	.byte		        Gs4 , v064
	.byte	W02
	.byte		        Gs4 , v020
	.byte	W01
	.byte		PAN   , c_v-62
	.byte	W07
	.byte		N01   , En5 , v064
	.byte	W03
	.byte		        En5 , v020
	.byte	W02
	.byte		PAN   , c_v+63
	.byte		N01   , Fs5 , v064
	.byte	W03
	.byte		        Fs5 , v020
	.byte	W09
	.byte	PEND
	.byte		PAN   , c_v-62
	.byte	W01
	.byte		N01   , Dn5 , v064
	.byte	W03
	.byte		        Cn5 
	.byte		N01   , Dn5 , v020
	.byte	W02
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		N01   , Fs3 , v064
	.byte	W02
	.byte		        Fs3 , v020
	.byte	W01
	.byte		        Gs3 , v064
	.byte	W03
	.byte		        Gs3 , v020
	.byte	W03
	.byte		PAN   , c_v-61
	.byte	W02
	.byte		        c_v-62
	.byte	W05
	.byte		N01   , Bn4 , v064
	.byte	W03
	.byte		        Bn4 , v020
	.byte	W01
	.byte		        Dn5 , v064
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N01   , Dn5 , v020
	.byte	W11
	.byte		PAN   , c_v-62
	.byte		N01   , Fs5 , v064
	.byte	W03
	.byte		        Fs5 , v020
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W02
	.byte		        Cs5 , v020
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W05
	.byte		N01   , Cs4 , v064
	.byte	W02
	.byte		        As3 
	.byte		N01   , Cs4 , v020
	.byte	W03
	.byte		        As3 
	.byte	W02
	.byte		PAN   , c_v-62
	.byte	W03
	.byte		N01   , Fs3 , v064
	.byte	W02
	.byte		        Fs3 , v020
	.byte	W01
	.byte		        Gs3 , v064
	.byte	W03
	.byte		        Gs3 , v020
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N01   , Dn5 , v064
	.byte	W03
	.byte		        Cn5 
	.byte		N01   , Dn5 , v020
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte		PAN   , c_v-62
	.byte	W03
	.byte		N01   , Fs4 , v064
	.byte	W02
	.byte		        Fs4 , v020
	.byte	W01
	.byte		        Cn4 , v064
	.byte	W03
	.byte		        Cn4 , v020
	.byte	W01
	.byte		        Gn3 , v064
	.byte	W02
	.byte		PAN   , c_v+63
	.byte		N01   , Gn3 , v020
	.byte	W09
	.byte		        Gn4 , v064
	.byte	W02
	.byte		        Gn4 , v020
	.byte		N01   , An4 , v064
	.byte	W01
	.byte		PAN   , c_v-61
	.byte	W01
	.byte		N01   , An4 , v020
	.byte	W01
	.byte		PAN   , c_v-62
	.byte	W07
	.byte		N01   , Fs4 , v064
	.byte	W02
	.byte		        Fs4 , v020
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		N01   , Gs4 , v064
	.byte	W02
	.byte		        Gs4 , v020
	.byte	W07
	.byte		PAN   , c_v-62
	.byte	W01
	.byte		N01   , En5 , v064
	.byte	W03
	.byte		        En5 , v020
	.byte	W02
	.byte		        Fs5 , v064
	.byte	W03
	.byte		        Fs5 , v020
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W07
	.byte		N01   , Dn5 , v064
	.byte	W03
	.byte		        Cn5 
	.byte		N01   , Dn5 , v020
	.byte	W02
	.byte		PAN   , c_v-62
	.byte		N01   , Cn5 
	.byte	W09
	.byte		        Fs3 , v064
	.byte	W02
	.byte		        Fs3 , v020
	.byte	W01
	.byte		PAN   , c_v+63
	.byte		N01   , Gs3 , v064
	.byte	W03
	.byte		        Gs3 , v020
	.byte	W09
	.byte		PAN   , c_v-62
	.byte	W01
	.byte		N01   , Bn4 , v064
	.byte	W03
	.byte		        Bn4 , v020
	.byte	W01
	.byte		        Dn5 , v064
	.byte	W02
	.byte		        Dn5 , v020
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N01   , Fs5 , v064
	.byte	W03
	.byte		        Fs5 , v020
	.byte	W03
	.byte		PAN   , c_v-61
	.byte	W02
	.byte		        c_v-62
	.byte	W01
	.byte		N01   , Cs5 , v064
	.byte	W02
	.byte		        Cs5 , v020
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N01   , As3 
	.byte		N01   , Cs4 , v020
	.byte	W03
	.byte		        As3 
	.byte	W05
	.byte		        Fs3 , v064
	.byte	W02
	.byte		        Fs3 , v020
	.byte	W01
	.byte		PAN   , c_v-62
	.byte		N01   , Gs3 , v064
	.byte	W03
	.byte		        Gs3 , v020
	.byte	W09
	.byte		PAN   , c_v+63
	.byte		N01   , Dn5 , v064
	.byte	W03
	.byte		        Cn5 
	.byte		N01   , Dn5 , v020
	.byte	W02
	.byte		        Cn5 
	.byte	W04
	.byte		        Fs4 , v064
	.byte	W02
	.byte		        Fs4 , v020
	.byte	W01
	.byte		PAN   , c_v-62
	.byte		N01   , Cn4 , v064
	.byte	W03
	.byte		        Cn4 , v020
	.byte	W01
	.byte		        Gn3 , v064
	.byte	W02
	.byte		        Gn3 , v020
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		N01   , Gn4 , v064
	.byte	W02
	.byte		        Gn4 , v020
	.byte		N01   , An4 , v064
	.byte	W02
	.byte		        An4 , v020
	.byte	W05
	.byte		PAN   , c_v-62
	.byte		N01   , Fs4 , v064
	.byte	W02
	.byte		        Fs4 , v020
	.byte	W04
	.byte		        Gs4 , v064
	.byte	W02
	.byte		        Gs4 , v020
	.byte	W04
	.byte		PAN   , c_v+63
	.byte	W04
	.byte		N01   , En5 , v064
	.byte	W03
	.byte		        En5 , v020
	.byte	W02
	.byte		        Fs5 , v064
	.byte	W03
	.byte		PAN   , c_v-61
	.byte		N01   , Fs5 , v020
	.byte	W02
	.byte		PAN   , c_v-62
	.byte	W08
	.byte		N01   , Dn5 , v064
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N01   , Cn5 
	.byte		N01   , Dn5 , v020
	.byte	W02
	.byte		        Cn5 
	.byte	W09
	.byte		PAN   , c_v-62
	.byte		N01   , Fs3 , v064
	.byte	W02
	.byte		        Fs3 , v020
	.byte	W01
	.byte		        Gs3 , v064
	.byte	W03
	.byte		        Gs3 , v020
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W04
	.byte		N01   , Bn4 , v064
	.byte	W03
	.byte		        Bn4 , v020
	.byte	W01
	.byte		        Dn5 , v064
	.byte	W02
	.byte		        Dn5 , v020
	.byte	W02
	.byte		PAN   , c_v-62
	.byte	W09
	.byte		N01   , Fs5 , v064
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N01   , Fs5 , v020
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W02
	.byte		        Cs5 , v020
	.byte	W04
	.byte	PATT
	 .word	song343_2 + 0x70
	.byte		PAN   , c_v-62
	.byte	W01
	.byte		N01   , Dn5 , v064
	.byte	W03
	.byte		        Cn5 
	.byte		N01   , Dn5 , v020
	.byte	W02
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		N01   , Fs3 , v064
	.byte	W02
	.byte		        Fs3 , v020
	.byte	W01
	.byte		        Gs3 , v064
	.byte	W03
	.byte		        Gs3 , v020
	.byte	W03
	.byte		PAN   , c_v-61
	.byte	W02
	.byte		        c_v-62
	.byte	W05
	.byte		N01   , Bn4 , v064
	.byte	W03
	.byte		        Bn4 , v020
	.byte	W01
	.byte		        Dn5 , v064
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		N01   , Dn5 , v020
	.byte	W11
	.byte		PAN   , c_v-62
	.byte		N01   , Fs5 , v064
	.byte	W03
	.byte		        Fs5 , v020
	.byte	W06
	.byte		        Cs5 , v064
	.byte	W02
	.byte		        Cs5 , v020
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W05
	.byte		N01   , Cs4 , v064
	.byte	W02
	.byte		        As3 
	.byte		N01   , Cs4 , v020
	.byte	W03
	.byte		        As3 
	.byte	W02
	.byte		PAN   , c_v-62
	.byte	W03
	.byte		N01   , Fs3 , v064
	.byte	W02
	.byte		        Fs3 , v020
	.byte	W01
	.byte		        Gs3 , v064
	.byte	W03
	.byte		        Gs3 , v020
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N01   , Dn5 , v064
	.byte	W03
	.byte		        Cn5 
	.byte		N01   , Dn5 , v020
	.byte	W03
	.byte	GOTO
	 .word	song343_2 + 0x2
	.byte	FINE

@**************** Track 03 ****************************@

song343_3:
	.byte	KEYSH , 0
	.byte		VOICE , 85
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		MOD   , 0
	.byte		PAN   , c_v-32
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 29*song343_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , En2 , v120
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v+16
	.byte	W12
	.byte		        c_v+32
	.byte	W12
	.byte		        c_v+16
	.byte	W12
	.byte		        c_v+0
	.byte		BEND  , c_v-1
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v-32
	.byte		BEND  , c_v-2
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v+0
	.byte		BEND  , c_v-5
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W12
	.byte		        c_v+32
	.byte		BEND  , c_v-7
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W12
	.byte		        c_v+0
	.byte		BEND  , c_v-6
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v-32
	.byte		BEND  , c_v-5
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v+0
	.byte		BEND  , c_v-4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W12
	.byte		        c_v+32
	.byte		BEND  , c_v-2
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W12
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v-32
	.byte	W12
	.byte		        c_v-16
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v+16
	.byte	W12
	.byte		        c_v+32
	.byte		BEND  , c_v+2
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W12
	.byte		        c_v+0
	.byte		BEND  , c_v+4
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v-32
	.byte		BEND  , c_v+5
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v+0
	.byte		BEND  , c_v+7
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W12
	.byte		        c_v+32
	.byte		BEND  , c_v+10
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W12
	.byte		        c_v+0
	.byte		BEND  , c_v+9
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v-32
	.byte		BEND  , c_v+7
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v+0
	.byte		BEND  , c_v+6
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W12
	.byte		        c_v+32
	.byte		BEND  , c_v+4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W12
	.byte		        c_v+0
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		MOD   , 2
	.byte		PAN   , c_v-32
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v+16
	.byte	W12
	.byte		MOD   , 4
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		        c_v+16
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v-16
	.byte	W12
	.byte		MOD   , 7
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		        c_v-16
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v+16
	.byte	W12
	.byte		MOD   , 9
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		        c_v+16
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v-16
	.byte	W12
	.byte		EOT
	.byte	GOTO
	 .word	song343_3 + 0x2
	.byte	FINE

@**************** Track 04 ****************************@

song343_4:
	.byte	KEYSH , 0
	.byte		VOICE , 31
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		BEND  , c_v+0
	.byte	W06
	.byte		VOL   , 24*song343_mvl/mxv
	.byte	W12
	.byte		TIE   , As3 , v080
	.byte	W06
	.byte	W24
	.byte		PAN   , c_v-16
	.byte	W24
	.byte		        c_v-32
	.byte	W01
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-14
	.byte	W02
	.byte		        c_v-18
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-26
	.byte	W02
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-44
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-54
	.byte	W02
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v-56
	.byte	W02
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-60
	.byte	W02
	.byte		        c_v-62
	.byte	W03
	.byte		        c_v-63
	.byte	W14
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v-62
	.byte	W02
	.byte		        c_v-58
	.byte	W03
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-38
	.byte	W03
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-31
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v+7
	.byte	W02
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+26
	.byte	W02
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+49
	.byte	W02
	.byte		        c_v+53
	.byte	W01
	.byte		PAN   , c_v-33
	.byte	W01
	.byte		BEND  , c_v+59
	.byte	W01
	.byte		        c_v+63
	.byte	W04
	.byte		PAN   , c_v-16
	.byte	W06
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+31
	.byte	W06
	.byte		        c_v+48
	.byte	W06
	.byte		        c_v+63
	.byte	W19
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+59
	.byte	W02
	.byte		PAN   , c_v+48
	.byte		BEND  , c_v+58
	.byte	W03
	.byte		        c_v+56
	.byte	W01
	.byte		        c_v+53
	.byte	W03
	.byte		        c_v+52
	.byte	W01
	.byte		        c_v+50
	.byte	W02
	.byte		        c_v+42
	.byte	W02
	.byte		PAN   , c_v+32
	.byte	W02
	.byte		BEND  , c_v+40
	.byte	W01
	.byte		        c_v+39
	.byte	W02
	.byte		        c_v+37
	.byte	W03
	.byte		        c_v+34
	.byte	W02
	.byte		        c_v+32
	.byte	W02
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+29
	.byte	W02
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+25
	.byte	W02
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+14
	.byte	W02
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v+10
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+1
	.byte	W03
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-14
	.byte	W03
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-35
	.byte	W02
	.byte		        c_v-43
	.byte	W02
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-60
	.byte	W18
	.byte		        c_v-63
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-55
	.byte	W02
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-46
	.byte	W02
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v+0
	.byte	W07
	.byte		EOT
	.byte		VOL   , 65*song343_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W09
	.byte		N01   , Gs4 
	.byte	W04
	.byte		        Gs4 , v032
	.byte	W05
	.byte		PAN   , c_v-64
	.byte		N01   , Gs4 , v080
	.byte	W04
	.byte		        Gs4 , v032
	.byte	W20
	.byte		N02   , Cs5 , v088
	.byte	W04
	.byte		        Cs5 , v032
	.byte	W14
	.byte		PAN   , c_v+63
	.byte	W09
	.byte		N02   , En4 , v080
	.byte	W04
	.byte		        En4 , v032
	.byte	W17
	.byte		PAN   , c_v-1
	.byte	W09
	.byte		N02   , Gn4 , v084
	.byte	W04
	.byte		        Gn4 , v032
	.byte	W32
	.byte	W03
	.byte		PAN   , c_v-64
	.byte		N02   , Dn5 , v080
	.byte	W04
	.byte		        Dn5 , v032
	.byte	W20
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N02   , Gs4 , v084
	.byte	W04
	.byte		        Gs4 , v032
	.byte	W08
	.byte	GOTO
	 .word	song343_4 + 0x2
	.byte	FINE

@**************** Track 05 ****************************@

song343_5:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 79*song343_mvl/mxv
	.byte		N48   , Fn3 , v127
	.byte	W24
	.byte		VOL   , 56*song343_mvl/mxv
	.byte	W06
	.byte		        45*song343_mvl/mxv
	.byte	W06
	.byte		        34*song343_mvl/mxv
	.byte	W06
	.byte		        22*song343_mvl/mxv
	.byte	W06
	.byte		        79*song343_mvl/mxv
	.byte		N48   , Gn3 
	.byte	W24
	.byte		VOL   , 56*song343_mvl/mxv
	.byte	W06
	.byte		        45*song343_mvl/mxv
	.byte	W06
	.byte		        34*song343_mvl/mxv
	.byte	W06
	.byte		        22*song343_mvl/mxv
	.byte	W06
	.byte		        79*song343_mvl/mxv
	.byte		N96   , Cn3 
	.byte	W24
	.byte		VOL   , 62*song343_mvl/mxv
	.byte	W06
	.byte		        55*song343_mvl/mxv
	.byte	W06
	.byte		        50*song343_mvl/mxv
	.byte	W06
	.byte		        45*song343_mvl/mxv
	.byte	W06
	.byte		        39*song343_mvl/mxv
	.byte	W06
	.byte		        34*song343_mvl/mxv
	.byte	W06
	.byte		        29*song343_mvl/mxv
	.byte	W06
	.byte		        24*song343_mvl/mxv
	.byte	W06
	.byte		        18*song343_mvl/mxv
	.byte	W06
	.byte		        13*song343_mvl/mxv
	.byte	W06
	.byte		        8*song343_mvl/mxv
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song343_5 + 0x2
	.byte	FINE

@**************** Track 06 ****************************@

song343_6:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 56*song343_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N48   , Fn3 , v064
	.byte	W24
	.byte		VOL   , 34*song343_mvl/mxv
	.byte	W06
	.byte		        28*song343_mvl/mxv
	.byte	W06
	.byte		        22*song343_mvl/mxv
	.byte	W06
	.byte		        16*song343_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		VOL   , 56*song343_mvl/mxv
	.byte		N48   , Gn3 
	.byte	W24
	.byte		VOL   , 34*song343_mvl/mxv
	.byte	W06
	.byte		        28*song343_mvl/mxv
	.byte	W06
	.byte		        22*song343_mvl/mxv
	.byte	W06
	.byte		        16*song343_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		VOL   , 56*song343_mvl/mxv
	.byte		N96   , Cn3 
	.byte	W48
	.byte		VOL   , 38*song343_mvl/mxv
	.byte	W06
	.byte		        34*song343_mvl/mxv
	.byte	W06
	.byte		        29*song343_mvl/mxv
	.byte	W06
	.byte		        22*song343_mvl/mxv
	.byte	W06
	.byte		        17*song343_mvl/mxv
	.byte	W06
	.byte		        11*song343_mvl/mxv
	.byte	W06
	.byte		        5*song343_mvl/mxv
	.byte	W12
	.byte		        0*song343_mvl/mxv
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song343_6 + 0x2
	.byte	FINE

@******************************************************@
	.align	2

song343:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song343_pri	@ Priority
	.byte	song343_rev	@ Reverb.

	.word	song343_grp

	.word	song343_0
	.word	song343_1
	.word	song343_2
	.word	song343_3
	.word	song343_4
	.word	song343_5
	.word	song343_6

	.end
