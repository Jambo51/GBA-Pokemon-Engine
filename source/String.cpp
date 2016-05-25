/*
 * String.cpp
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#include "Text/String.h"
#include "Text/TextFunctions.h"
#include "Core/Maths.h"

using namespace Core;

namespace Text
{
	String::String(const char* string)
	{
		underlyingString = Collections::Lists::ArrayList<char>(CountStringLength(string), string);
	}

	String::String(const String &string)
	{
		char* array = string.GetUnderlyingArray();
		underlyingString = Collections::Lists::ArrayList<char>(CountStringLength(array), array);
	}

	String::String(u32 initialLength)
	{
		underlyingString = Collections::Lists::ArrayList<char>(initialLength);
		for (u32 i = 0; i < initialLength; i++)
		{
			underlyingString.Replace(i, '/0');
		}
	}

	String::String(Collections::Lists::ArrayList<char> premadeList)
	{
		underlyingString = premadeList;
	}

	String::~String()
	{
		// TODO Auto-generated destructor stub
	}

	bool String::EndsWith(const char c) const
	{
		return underlyingString.Last() == c;
	}

	String String::SubString(u32 startIndex, u32 length) const
	{
		char* array = underlyingString.GetPointer();
		if (underlyingString.Size() >= startIndex + length)
		{
			array = (char*)(((u32)array) + startIndex);
			Collections::Lists::ArrayList<char> newString = Collections::Lists::ArrayList<char>(length, array);
			return String(newString);
		}
		else
		{
			return String("");
		}
	}

	bool String::EndsWith(const char* c) const
	{
		u32 index = 0;
		while (c[index] != '\0')
		{
			index++;
		}
		u32 startPos = underlyingString.Size() - index;
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
		String s = underlyingString.GetPointer();
		for (int i = 0; i < s.Size(); i++)
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
		String s = underlyingString.GetPointer();
		for (int i = 0; i < s.Size(); i++)
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
		underlyingString.PushBack(c);
	}

	void String::Append(const char* c)
	{
		if (c)
		{
			int index = 0;
			do
			{
				underlyingString.PushBack(c[index]);
				index++;
			} while (c[index] != '/0');
		}
	}

	void String::Prepend(const char c)
	{
		underlyingString.PushFront(c);
	}

	void String::Prepend(const char* c)
	{
		underlyingString.PushFrontMany(c, CountStringLength(c));
	}
}
