/*
 * String.cpp
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#include "String.h"
#include "TextFunctions.h"
#include "Maths.h"

String::String(const char* string)
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

String::String(u32 initialLength)
{
	stringSize = 0;
	arraySize = initialLength;
	underlyingString = new char[initialLength];
	for (u32 i = 0; i < initialLength; i++)
	{
		underlyingString[i] = '\0';
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

bool String::EndsWith(const char c) const
{
	return underlyingString[stringSize] == c;
}

String String::SubString(s32 startIndex, u32 length) const
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

bool String::EndsWith(const char* c) const
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

bool String::EndsWith(const String &rhs) const
{
	return EndsWith(rhs.GetUnderlyingArray());
}

bool String::StartsWith(const char c) const
{
	return underlyingString[0] == c;
}

bool String::StartsWith(const char* c) const
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

bool String::StartsWith(const String &rhs) const
{
	return EndsWith(rhs.GetUnderlyingArray());
}

String String::ToUpper() const
{
	String s = underlyingString;
	for (int i = 0; i < s.stringSize; i++)
	{
		if (s[i] >= 'a' && s[i] <= 'z')
		{
			s.SetCharacterAt(i, s[i] - ('a' - 'A'));
		}
	}
	return s;
}

String String::ToLower() const
{
	String s = underlyingString;
	for (int i = 0; i < s.stringSize; i++)
	{
		if (s[i] >= 'A' && s[i] <= 'Z')
		{
			s.SetCharacterAt(i, s[i] + ('a' - 'A'));
		}
	}
	return s;
}

String String::ToString(u32 value, const String &infoStr, bool isHex)
{
	if (isHex)
	{
		value = Maths::ToDecimal(value);
	}
	u32 leadingZeroes = 0;
	if (infoStr != "")
	{
		if (infoStr.StartsWith('D') || infoStr.StartsWith('X'))
		{
			leadingZeroes = String::ParseU32(infoStr.SubString(1));
		}
	}
	if (leadingZeroes > BUFFERLENGTH)
	{
		leadingZeroes = BUFFERLENGTH;
	}
	u32 lastNeededPosition = 0;
	for (u32 i = 0; i < 8; i++)
	{
		if (((value & (0xF << (4 * i))) >> (4 * i)) != 0)
		{
			lastNeededPosition = i;
		}
	}
	if (lastNeededPosition > leadingZeroes)
	{
		leadingZeroes = lastNeededPosition;
	}
	String s = String(leadingZeroes + 1);
	u32 strSize = s.Size();
	if (!infoStr.StartsWith('X'))
	{
		for (u32 i = 0; i < lastNeededPosition; i++)
		{
			s.SetCharacterAt(strSize - i, '0' + ((value & (0xF << (4 * i))) >> (4 * i)));
		}
	}
	else
	{
		for (u32 i = 0; i < lastNeededPosition; i++)
		{
			u32 loopValue = ((value & (0xF << (4 * i))) >> (4 * i));
			if (loopValue < 10)
			{
				s.SetCharacterAt(strSize - i, '0' + loopValue);
			}
			else
			{
				s.SetCharacterAt(strSize - i, 'A' + loopValue);
			}
		}
		s -= "0x";
	}
	return s;
}

u32 String::ParseU32(const String &str)
{
	u32 value = 0;
	u32 counter = 0;
	for (s32 i = str.Size() - 1; i >= 0; i--)
	{
		value += (str[i] - '0') * Maths::Power(10, counter);
		counter++;
	}
	return value;
}

u32 String::ParseU32FromHex(const String &str)
{
	String s = str.ToUpper();
	u32 value = 0;
	u32 counter = 0;
	for (s32 i = s.Size() - 1; i >= 0; i--)
	{
		char c = s[i];
		if (c >= '0' && c <= '9')
		{
			value += (c - '0') * Maths::Power(16, counter);
		}
		else if (c >= 'A' && c <= 'F')
		{
			value += (10 + (c - 'A')) * Maths::Power(16, counter);
		}
		counter++;
	}
	return value;
}

u32 String::ToU32() const
{
	return ParseU32(*this);
}

u32 String::ToU32FromHex() const
{
	return ParseU32FromHex(*this);
}

bool String::StartsWithVowel() const
{
	String s = ToUpper();
	return s.StartsWith('A') || s.StartsWith('E') || s.StartsWith('I') || s.StartsWith('O') || s.StartsWith('U') || s.StartsWith('Y');
}

void String::Append(const char c)
{
	if (stringSize + 1 <= arraySize)
	{
		underlyingString[stringSize] = c;
		stringSize++;
		underlyingString[stringSize] = '\0';
	}
	else
	{
		char* original = underlyingString;
		arraySize *= 2;
		underlyingString = new char[arraySize];
		for (int i = 0; i < stringSize; i++)
		{
			underlyingString[i] = original[i];
		}
		underlyingString[stringSize] = c;
		stringSize++;
		underlyingString[stringSize] = '\0';
		delete[] original;
	}
}

void String::Append(const char* c)
{
	int count = CountStringLength(c);
	if (stringSize + count <= arraySize)
	{
		for (int i = 0; i < count; i++)
		{
			underlyingString[stringSize] = c[i];
			stringSize++;
		}
		underlyingString[stringSize] = '\0';
	}
	else if (stringSize + count <= arraySize * 2)
	{
		char* original = underlyingString;
		arraySize *= 2;
		underlyingString = new char[arraySize];
		for (int i = 0; i < stringSize; i++)
		{
			underlyingString[i] = original[i];
		}
		for (int i = 0; i < count; i++)
		{
			underlyingString[stringSize] = c[i];
			stringSize++;
		}
		underlyingString[stringSize] = '\0';
		delete[] original;
	}
	else
	{
		char* original = underlyingString;
		arraySize = count * 2;
		underlyingString = new char[arraySize];
		for (int i = 0; i < stringSize; i++)
		{
			underlyingString[i] = original[i];
		}
		for (int i = 0; i < count; i++)
		{
			underlyingString[stringSize] = c[i];
			stringSize++;
		}
		underlyingString[stringSize] = '\0';
		delete[] original;
	}
}

void String::Prepend(const char c)
{
	if (stringSize + 1 <= arraySize)
	{
		TextFunctions::StringCopy((char*)((u32)underlyingString + 1), underlyingString, stringSize);
		underlyingString[0] = c;
		stringSize++;
		underlyingString[stringSize] = '\0';
	}
	else
	{
		char* original = underlyingString;
		arraySize *= 2;
		underlyingString = new char[arraySize];
		TextFunctions::StringCopy((char*)((u32)underlyingString + 1), original, stringSize);
		underlyingString[0] = c;
		stringSize++;
		underlyingString[stringSize] = '\0';
		delete[] original;
	}
}

void String::Prepend(const char* c)
{
	int count = CountStringLength(c);
	if (stringSize + count <= arraySize)
	{
		TextFunctions::StringCopy((char*)((u32)underlyingString + count), underlyingString, stringSize);
		char c = underlyingString[count];
		TextFunctions::StringCopy(underlyingString, (char*)c, stringSize);
		underlyingString[count] = c;
		underlyingString[stringSize] = '\0';
	}
	else if (stringSize + count <= arraySize * 2)
	{

		char* original = underlyingString;
		arraySize *= 2;
		underlyingString = new char[arraySize];
		TextFunctions::StringCopy((char*)((u32)underlyingString + count), original, stringSize);
		char c = underlyingString[count];
		TextFunctions::StringCopy(underlyingString, (char*)c, stringSize);
		underlyingString[count] = c;
		stringSize++;
		underlyingString[stringSize] = '\0';
		delete[] original;
	}
	else
	{
		char* original = underlyingString;
		arraySize = count * 2;
		underlyingString = new char[arraySize];
		TextFunctions::StringCopy((char*)((u32)underlyingString + count), original, stringSize);
		char c = underlyingString[count];
		TextFunctions::StringCopy(underlyingString, (char*)c, stringSize);
		underlyingString[count] = c;
		stringSize++;
		underlyingString[stringSize] = '\0';
		delete[] original;
	}
}
