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
	int CountStringLength(char* string)
	{
		int count = 0;
		while (string[count] != '\0')
		{
			count++;
		}
		return count;
	}
	void SetLength(u32 newLength) { stringSize = newLength; }
public:
	String(char* string);
	String(const String &string);
	~String();
	char* GetUnderlyingArray() const { return underlyingString; }

	int Size() const { return stringSize; }

	String operator=(char* c)
	{
		return String(c);
	}

	String operator=(const String &rhs)
	{
		return String(rhs);
	}

	bool EndsWith(char c);
	String SubString(s32 startIndex, u32 length = 0);
	bool EndsWith(char* c);
	bool EndsWith(const String &rhs);
	bool StartsWith(char c);
	bool StartsWith(char* c);
	bool StartsWith(const String &rhs);

	bool operator==(char* c)
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

	bool operator==(const String &rhs)
	{
		return *this == rhs.GetUnderlyingArray();
	}

	bool operator!=(char* c)
	{
		return !(*this == c);
	}

	bool operator!=(const String &rhs)
	{
		return !(*this == rhs);
	}

	void operator+=(char c)
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

	void operator+=(char* c)
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

	void operator+=(const String &str)
	{
		*this += str.GetUnderlyingArray();
	}

	String operator+(char c)
	{
		String s = underlyingString;
		s += c;
		return s;
	}

	String operator+(char* rhs)
	{
		String s = underlyingString;
		s += rhs;
		return s;
	}

	String operator+(const String &rhs)
	{
		String s = underlyingString;
		s += rhs;
		return s;
	}

	char operator[](int position)
	{
		if (position < stringSize)
		{
			return underlyingString[position];
		}
		return '\0';
	}
};

#endif /* STRING_H_ */
