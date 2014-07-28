/*
 * save_functions.h
 *
 *  Created on: Jul 28, 2014
 *      Author: Gamer2020
 */

extern void bytecpy(void *in_dst, const void *in_src, unsigned int length);
extern void byteclr(void *in_dst, unsigned int length);
extern int SaveThing(void *in_dst, const void *in_src, unsigned int length);
extern int byteverify(void *in_dst, const void *in_src, unsigned int length);
