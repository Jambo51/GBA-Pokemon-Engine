#include "tonc_asminc.h"

BEGIN_FUNC_ARM(FastDivModUnsigned, CSEC_IWRAM)
				CMP     R1, #0
                BXEQ    LR
                MOV     R12, R2
                CMP     R0, R1
                MOVCC   R1, R0
                MOVCC   R0, #0
                BXCC    LR
                MOV     R2, #0x1C
                MOV     R3, R0,LSR#4
                CMP     R1, R3,LSR#12
                SUBLE   R2, R2, #0x10
                MOVLE   R3, R3,LSR#16
                CMP     R1, R3,LSR#4
                SUBLE   R2, R2, #8
                MOVLE   R3, R3,LSR#8
                CMP     R1, R3
                SUBLE   R2, R2, #4
                MOVLE   R3, R3,LSR#4
                MOV     R0, R0,LSL R2
                RSB     R1, R1, #0
                ADDS    R0, R0, R0
                ADD     R2, R2, R2,LSL#1
                ADD     PC, PC, R2,LSL#2
                NOP
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                MOV     R1, R3
                CMP		R12, #1
                MOVEQ   R0, R1
                BX      LR
END_FUNC(FastDivModUnsigned)

BEGIN_FUNC_ARM(FastDivModSigned, CSEC_IWRAM)
                STMFD   SP!, {R10}
                MOV     R10, R2
                EOR     R12, R0, R1
                AND     R12, R12, #0x80000000
                CMP     R0, #0
                RSBLT   R0, R0, #0
                ADDLT   R12, R12, #1
                CMP     R1, #0
                RSBLT   R1, R1, #0
                BEQ     DivmodSigned_1
                CMP     R0, R1
                MOVCC   R1, R0
                MOVCC   R0, #0
                BCC     DivmodSigned_1
                MOV     R2, #0x1C
                MOV     R3, R0,LSR#4
                CMP     R1, R3,LSR#12
                SUBLE   R2, R2, #0x10
                MOVLE   R3, R3,LSR#16
                CMP     R1, R3,LSR#4
                SUBLE   R2, R2, #8
                MOVLE   R3, R3,LSR#8
                CMP     R1, R3
                SUBLE   R2, R2, #4
                MOVLE   R3, R3,LSR#4
                MOV     R0, R0,LSL R2
                RSB     R1, R1, #0
                ADDS    R0, R0, R0
                ADD     R2, R2, R2,LSL#1
                ADD     PC, PC, R2,LSL#2
                NOP
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                ADCS    R3, R1, R3,LSL#1
                SUBCC   R3, R3, R1
                ADCS    R0, R0, R0
                MOV     R1, R3

        DivmodSigned_1:
                ANDS    R3, R12, #0x80000000
                RSBNE   R0, R0, #0
                ANDS    R3, R12, #1
                RSBNE   R1, R1, #0
                CMP             R10, #1
                MOVEQ   R0, R1
                LDMFD   SP!, {R10}
                BX      LR
END_FUNC(FastDivModSigned)
