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

	TEXT_LOCATION ALIGN(4) char* String::octalPrepend = "0o";
	TEXT_LOCATION ALIGN(4) char* String::binaryPrepend = "0b";
	TEXT_LOCATION ALIGN(4) char* String::hexadecimalPrepend = "0x";
	TEXT_LOCATION ALIGN(4) char* String::thornalPrepend = "0t";
	TEXT_LOCATION ALIGN(4) char* String::quaternaryPrepend = "0q";

	String::String(const char* string)
	{
		underlyingString = Collections::Lists::ArrayList<char>(CountStringLength(string), string);
		underlyingString.PushBack('\0');
	}

	String::String(const String &string)
	{
		char* array = string.GetUnderlyingArray();
		underlyingString = Collections::Lists::ArrayList<char>(CountStringLength(array), array);
		underlyingString.PushBack('\0');
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

	String* String::SubString(u32 startIndex, u32 length) const
	{
		char* array = underlyingString.GetPointer();
		if (underlyingString.Size() >= startIndex + length)
		{
			array = (char*)(((u32)array) + startIndex);
			Collections::Lists::ArrayList<char> newString = Collections::Lists::ArrayList<char>(length, array);
			return new String(newString);
		}
		else
		{
			return new String((u32)0);
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

	String* String::ToUpper() const
	{
		String* s = new String(underlyingString.GetPointer());
		for (int i = 0; i < s->Size(); i++)
		{
			if (s->CharAt(i) >= 'a' && s->CharAt(i) <= 'z')
			{
				s->SetCharacterAt(i, s->CharAt(i) - ('a' - 'A'));
			}
		}
		return s;
	}

	String* String::ToLower() const
	{
		String* s = new String(underlyingString.GetPointer());
		for (int i = 0; i < s->Size(); i++)
		{
			if (s->CharAt(i) >= 'A' && s->CharAt(i) <= 'Z')
			{
				s->SetCharacterAt(i, s->CharAt(i) + ('a' - 'A'));
			}
		}
		return s;
	}

	String* String::ToString(u32 value, u32 minCharacterCount, NumberFormat format)
	{
		char* stringToPrepend = 0;
		switch (format)
		{
			case Hexadecimal:
				stringToPrepend = hexadecimalPrepend;
				break;
			case Binary:
				stringToPrepend = binaryPrepend;
				break;
			case Octal:
				stringToPrepend = octalPrepend;
				break;
			case Thornal:
				stringToPrepend = thornalPrepend;
				break;
			case Quaternary:
				stringToPrepend = quaternaryPrepend;
				break;
		}
		String* s = 0;
		if (value == 0)
		{
			s = new String((u32)0);
			s->Append("0");
		}
		else
		{
			switch (format)
			{
				case Hexadecimal:
					{
						s = new String((u32)0);
						s->Append('\0');
						while (value)
						{
							u32 tempValue = (value & 0xF);
							char temp = '0';
							if (tempValue < 10)
							{
								temp += tempValue;
							}
							else
							{
								temp = 'A' + (tempValue - 10);
							}
							s->Prepend(temp);
							value >>= 4;
						}
						while (s->Size() < minCharacterCount)
						{
							s->Prepend('0');
						}
						if (stringToPrepend)
						{
							s->Prepend(stringToPrepend);
						}
					}
					break;
				case Thornal:
					{
						s = new String((u32)0);
						s->Append('\0');
						while (value)
						{
							u32 tempValue = (value & 0x1F);
							char temp = '0';
							if (tempValue < 10)
							{
								temp += tempValue;
							}
							else
							{
								temp = 'A' + (tempValue - 10);
							}
							s->Prepend(temp);
							value >>= 5;
						}
						while (s->Size() < minCharacterCount)
						{
							s->Prepend('0');
						}
						if (stringToPrepend)
						{
							s->Prepend(stringToPrepend);
						}
					}
					break;
				case Octal:
					{
						s = new String((u32)0);
						s->Append('\0');
						while (value)
						{
							char temp = '0' + (value & 0x7);
							s->Prepend(temp);
							value >>= 3;
						}
						while (s->Size() < minCharacterCount)
						{
							s->Prepend('0');
						}
						if (stringToPrepend)
						{
							s->Prepend(stringToPrepend);
						}
					}
					break;
				case Binary:
					{
						s = new String((u32)0);
						s->Append('\0');
						while (value)
						{
							char temp = '0' + (value & 0x1);
							s->Prepend(temp);
							value >>= 1;
						}
						while (s->Size() < minCharacterCount)
						{
							s->Prepend('0');
						}
						if (stringToPrepend)
						{
							s->Prepend(stringToPrepend);
						}
					}
					break;
				case Quaternary:
					{
						s = new String((u32)0);
						s->Append('\0');
						while (value)
						{
							char temp = '0' + (value & 0x3);
							s->Prepend(temp);
							value >>= 2;
						}
						while (s->Size() < minCharacterCount)
						{
							s->Prepend('0');
						}
						if (stringToPrepend)
						{
							s->Prepend(stringToPrepend);
						}
					}
					break;
				case Decimal:
					{
						s = new String((u32)0);
						s->Append('\0');
						while (value)
						{
							char temp = '0' + Maths::UnsignedModulus(value, 10);
							s->Prepend(temp);
							value = Maths::UnsignedDivide(value, 10);
						}
						while (s->Size() < minCharacterCount)
						{
							s->Prepend('0');
						}
					}
					break;
			}
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
		String* s = str.ToUpper();
		u32 value = 0;
		u32 counter = 0;
		for (s32 i = s->Size() - 1; i >= 0; i--)
		{
			char c = s->CharAt(i);
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
		delete s;
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
		String* s = ToUpper();
		bool result = s->StartsWith('A') || s->StartsWith('E') || s->StartsWith('I') || s->StartsWith('O') || s->StartsWith('U') || s->StartsWith('Y');
		delete s;
		return result;
	}

	void String::Append(const char c)
	{
		if (c != '\0')
		{
			underlyingString.Replace(underlyingString.Size(), c);
		}
		underlyingString.PushBack('\0');
	}

	void String::Append(const char* c)
	{
		if (c)
		{
			underlyingString.Replace(underlyingString.Size(), c[0]);
			int index = 1;
			while (c[index] != '\0')
			{
				underlyingString.PushBack(c[index]);
				index++;
			}
			underlyingString.PushBack('\0');
		}
	}

	void String::Append(const String* str)
	{
		Append(str->GetUnderlyingArray());
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
