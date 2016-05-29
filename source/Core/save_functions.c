#include <stdio.h>
#include <string.h>
#include <tonc.h>

//These are very basic save functions.
//Some of the save functions are actually borrowed from OpenPoke.

void bytecpy(void *in_dst, const void *in_src, unsigned int length)
{
	unsigned char *src = (unsigned char *)in_src;
	unsigned char *dst = (unsigned char *)in_dst;

	for(; length > 0; length--)
		*dst++ = *src++;
}

/** \brief Clears bytes. Only good for SRAM. */
void byteclr(void *in_dst, unsigned int length)
{
	unsigned char *dst = (unsigned char *)in_dst;

	for(; length > 0; length--)
		*dst++ = 0xFF;
}

int SaveThing(void *in_dst, const void *in_src, unsigned int length)
{
	bytecpy((MEM_SRAM + 1) + in_dst, in_src, length);

    if(byteverify((MEM_SRAM + 1) + in_dst, in_src, length))
	{
		return 1;
	}
	return 0;
}

int byteverify(void *in_dst, const void *in_src, unsigned int length)
{
	unsigned char *src = (unsigned char *)in_src;
	unsigned char *dst = (unsigned char *)in_dst;

	for(; length > 0; length--)
	{

		if(*dst++ != *src++) return 1;
	}
	return 0;
}
