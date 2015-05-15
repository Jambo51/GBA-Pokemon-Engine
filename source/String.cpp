/*
 * String.cpp
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#include "String.h"

String::String(char* string)
{
	// TODO Auto-generated constructor stub
	stringSize = CountStringLength(string);
	arraySize = stringSize * 2;
	underlyingString = new char[arraySize];
	for (int i = 0; i < stringSize; i++)
	{
		underlyingString[i] = string[i];
	}
}

String::String(const String &string)
{
	stringSize = CountStringLength(string.GetUnderlyingArray());
	arraySize = stringSize * 2;
	underlyingString = new char[arraySize];
	for (int i = 0; i < stringSize; i++)
	{
		underlyingString[i] = string[i];
	}
}

String::~String()
{
	// TODO Auto-generated destructor stub
	if (underlyingString)
	{
		delete[] underlyingString;
	}
}

