/*
 * String.h
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#ifndef STRING_H_
#define STRING_H_

#include "GlobalDefinitions.h"

class String
{
private:
	char* underlyingString;
	int stringSize;
	int arraySize;
	int CountStringLength(const char* string)
	{
		int count = 0;
		while (string[count] != '\0')
		{
			count++;
		}
		return count;
	}
	void SetLength(u32 newLength) { stringSize = newLength; }
	void SetCharacterAt(const int position, const char c)
	{
		if (position < stringSize)
		{
			underlyingString[position] = c;
		}
	}
	String(u32 initialLength);
public:
	String(const char* string);
	String(const String &string);
	~String();
	char* GetUnderlyingArray() const { return underlyingString; }

	int Size() const { return stringSize; }

	String operator=(const char* c)
	{
		return String(c);
	}

	String operator=(const String &rhs)
	{
		return String(rhs);
	}

	bool EndsWith(const char c) const;
	String SubString(s32 startIndex, u32 length = 0) const;
	bool EndsWith(const char* c) const;
	bool EndsWith(const String &rhs) const;
	bool StartsWith(const char c) const;
	bool StartsWith(const char* c) const;
	bool StartsWith(const String &rhs) const;
	String ToUpper() const;
	String ToLower() const;
	static String ToString(u32 value, const String &infoStr = "", bool isHex = false);
	static u32 ParseU32(const String &str);
	static u32 ParseU32FromHex(const String &str);
	u32 ToU32() const;
	u32 ToU32FromHex() const;
	void Append(const char c);
	void Append(const char* c);
	void Prepend(const char c);
	void Prepend(const char* c);
	bool StartsWithVowel() const;

	bool operator==(const char c) const
	{
		return stringSize == 1 && underlyingString[0] == c;
	}

	bool operator==(const char* c) const
	{
		for (int i = 0; i < stringSize; i++)
		{
			if (underlyingString[i] != c[i])
			{
				return false;
			}
		}
		return true;
	}

	bool operator==(const String &rhs) const
	{
		return *this == rhs.GetUnderlyingArray();
	}

	bool operator!=(const char c) const
	{
		return !(*this == c);
	}

	bool operator!=(const char* c) const
	{
		return !(*this == c);
	}

	bool operator!=(const String &rhs) const
	{
		return !(*this == rhs);
	}

	void operator+=(const char c)
	{
		Append(c);
	}

	void operator+=(const char* c)
	{
		Append(c);
	}

	void operator+=(const String &str)
	{
		*this += str.GetUnderlyingArray();
	}

	void operator-=(const char c)
	{
		Prepend(c);
	}

	void operator-=(const char* c)
	{
		Prepend(c);
	}

	void operator-=(const String &str)
	{
		*this -= str.GetUnderlyingArray();
	}

	String operator+(const char c) const
	{
		String s = underlyingString;
		s += c;
		return s;
	}

	String operator+(const char* rhs) const
	{
		String s = underlyingString;
		s += rhs;
		return s;
	}

	String operator+(const String &rhs) const
	{
		String s = underlyingString;
		s += rhs;
		return s;
	}

	char operator[](const int position) const
	{
		if (position < stringSize)
		{
			return underlyingString[position];
		}
		return '\0';
	}
};

#endif /* STRING_H_ */
