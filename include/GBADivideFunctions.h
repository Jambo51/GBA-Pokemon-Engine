#ifndef DIVIDEROUTINES_H
#define DIVIDEROUTINES_H

#include "GlobalDefinitions.h"

#ifdef __cplusplus
extern "C" {
#endif
u32 FastDivModUnsigned(u32 numerator, u32 denominator);
s32 FastDivModSigned(s32 numerator, s32 denominator);
#ifdef __cplusplus
}
#endif

#endif
