/*
 * String.h
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#ifndef STRING_H_
#define STRING_H_

#include "GlobalDefinitions.h"
#include "Collections/Lists/ArrayList.h"

class String
{
private:
	Collections::Lists::ArrayList<char> underlyingString;
	static int CountStringLength(const char* string)
	{
		int count = 0;
		while (string[count] != '\0')
		{
			count++;
		}
		return count;
	}
	void SetCharacterAt(const int position, const char c)
	{
		underlyingString.Replace(position, c);
	}
	String(u32 initialLength);
	String(Collections::Lists::ArrayList<char> premadeList);
public:
	String(const char* string);
	String(const String &string);
	~String();
	char* GetUnderlyingArray() const { return underlyingString.GetPointer(); }

	int Size() const { return underlyingString.Size(); }

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
		return underlyingString.Size() == 1 && underlyingString[0] == c;
	}

	bool operator==(const char* c) const
	{
		for (int i = 0; i < underlyingString.Size(); i++)
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
		if (position < underlyingString.Size())
		{
			return underlyingString[position];
		}
		return '\0';
	}
};

#endif /* STRING_H_ */
