/*
 * String.cpp
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#include "String.h"
#include "TextFunctions.h"

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
	char* arr = string.GetUnderlyingArray();
	for (int i = 0; i < stringSize; i++)
	{
		underlyingString[i] = arr[i];
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

bool String::EndsWith(char c)
{
	return underlyingString[stringSize] == c;
}

String String::SubString(s32 startIndex, u32 length)
{
	String newString = this->underlyingString;
	if (startIndex < 0)
	{
		char* array = newString.GetUnderlyingArray();
		TextFunctions::StringCopy(array, underlyingString, stringSize + startIndex);
		newString.SetLength(stringSize + startIndex);
	}
	else
	{
		if (length)
		{
			char* array = newString.GetUnderlyingArray();
			TextFunctions::StringCopy(array, (char*)((u32)underlyingString + startIndex), length);
			newString.SetLength(length);
		}
		else
		{
			char* array = newString.GetUnderlyingArray();
			TextFunctions::StringCopy(array, (char*)((u32)underlyingString + startIndex), 0);
			newString.SetLength(stringSize - startIndex);
		}
	}
	return newString;
}

bool String::EndsWith(char* c)
{
	u32 index = 0;
	while (c[index] != '\0')
	{
		index++;
	}
	u32 startPos = stringSize - index;
	while (index > 0)
	{
		if (underlyingString[startPos + index] != c[index])
		{
			return false;
		}
		index--;
	}
	return true;
}

bool String::EndsWith(const String &rhs)
{
	return EndsWith(rhs.GetUnderlyingArray());
}

bool String::StartsWith(char c)
{
	return underlyingString[0] == c;
}

bool String::StartsWith(char* c)
{
	u32 index = 0;
	while (c[index] != '\0')
	{
		index++;
	}
	while (index > 0)
	{
		if (underlyingString[index] != c[index])
		{
			return false;
		}
		index--;
	}
	return true;
}

bool String::StartsWith(const String &rhs)
{
	return EndsWith(rhs.GetUnderlyingArray());
}
