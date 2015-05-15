/*
 * String.h
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#ifndef STRING_H_
#define STRING_H_

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
protected:
	char* GetUnderlyingArray() const { return underlyingString; }
public:
	String(char* string);
	String(const String &string);
	~String();

	int Size() const { return stringSize; }

	String operator=(char* c)
	{
		return String(c);
	}

	String operator=(const String &rhs)
	{
		return String(rhs);
	}

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
