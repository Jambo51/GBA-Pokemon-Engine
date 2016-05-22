/*
 * ArrayList.cpp
 *
 *  Created on: 22 May 2016
 *      Author: CoolerMaster
 */

#include "ArrayList.h"

namespace Collections
{
	namespace Lists
	{
		template <class T>
		ArrayList<T>::ArrayList()
		{
			// TODO Auto-generated constructor stub
			itemCount = 0;
			arrayLength = 0;
		}

		template <class T>
		ArrayList<T>::ArrayList(int initialItemCount, const T* initialItems = 0)
		{
			// TODO Auto-generated constructor stub
			itemCount = 0;
			arrayLength = initialItemCount;
			arrayPointer = new T[initialItemCount];
			if (initialItems)
			{
				for (int i = 0; i < initialItemCount; i++)
				{
					arrayPointer[i] = initialItems[i];
				}
			}
		}

		template <class T>
		ArrayList<T>::~ArrayList()
		{
			// TODO Auto-generated destructor stub
			if (arrayPointer)
			{
				delete[] arrayPointer;
			}
		}

		template <class T>
		int ArrayList<T>::Size() const
		{
			return itemCount;
		}

		template <class T>
		void ArrayList<T>::PushBack(T item)
		{
			if (arrayPointer)
			{
				if (itemCount + 1 <= arrayLength)
				{
					arrayPointer[itemCount] = item;
					itemCount++;
					arrayPointer[itemCount] = '\0';
				}
				else
				{
					T* original = arrayPointer;
					arrayLength *= 2;
					arrayPointer = new char[arrayLength];
					for (int i = 0; i < itemCount; i++)
					{
						arrayPointer[i] = original[i];
					}
					arrayPointer[itemCount] = item;
					itemCount++;
					delete[] original;
				}
			}
			else
			{
				arrayPointer = new T[5];
				arrayPointer[0] = item;
				arrayLength = 5;
				itemCount = 1;
			}
		}

		template <class T>
		void ArrayList<T>::PushFront(T item)
		{
			if (arrayPointer)
			{
				if (itemCount + 1 <= arrayLength)
				{
					for (int i = itemCount + 1; i > 0; i--)
					{
						arrayPointer[i] = arrayPointer[i - 1];
					}
					arrayPointer[0] = item;
				}
				else
				{
					T* original = arrayPointer;
					arrayLength *= 2;
					arrayPointer = new T[arrayLength];
					for (int i = itemCount + 1; i > 0; i--)
					{
						arrayPointer[i] = original[i - 1];
					}
					arrayPointer[0] = item;
					itemCount++;
					delete[] original;
				}
			}
			else
			{
				arrayPointer = new T[5];
				arrayPointer[0] = item;
				arrayLength = 5;
				itemCount = 1;
			}
		}

		template <class T>
		void ArrayList<T>::PushFrontMany(const T* items, int numItems)
		{
			if (arrayPointer)
			{
				if (itemCount + numItems <= arrayLength)
				{
					for (int i = itemCount + numItems - 1; i >= numItems; i--)
					{
						arrayPointer[i] = arrayPointer[i - numItems];
					}
					for (int i = 0; i < numItems; i++)
					{
						arrayPointer[i] = items[i];
					}
				}
				else
				{
					T* original = arrayPointer;
					arrayLength *= 2;
					arrayPointer = new T[arrayLength];
					for (int i = itemCount + numItems - 1; i >= numItems; i--)
					{
						arrayPointer[i] = original[i - numItems];
					}
					for (int i = 0; i < numItems; i++)
					{
						arrayPointer[i] = items[i];
					}
					itemCount++;
					delete[] original;
				}
			}
			else
			{
				arrayLength = numItems * 2;
				arrayPointer = new T[arrayLength];
				for (int i = 0; i < numItems; i++)
				{
					arrayPointer[i] = items[i];
				}
				itemCount = numItems;
			}
		}

		template <class T>
		bool ArrayList<T>::Remove(T item)
		{
			int indexToRemove = -1;
			for (int i = 0; i < itemCount; i++)
			{
				if (item == arrayPointer[i])
				{
					indexToRemove = i;
					break;
				}
			}
			if (indexToRemove >= 0)
			{
				for (int i = indexToRemove; i < itemCount; i++)
				{
					arrayPointer[i] = arrayPointer[i + 1];
				}
				itemCount--;
			}
		}

		template <class T>
		void ArrayList<T>::Clear()
		{
			for (int i = 0; i < itemCount; i++)
			{
				arrayPointer[i] = T();
			}
		}

		template <typename T>
		void ArrayList<T>::Clear()
		{
			for (int i = 0; i < itemCount; i++)
			{
				arrayPointer[i] = 0;
			}
		}

		template <class T>
		void ArrayList<T>::PushAt(T item, int index)
		{
			if (arrayPointer)
			{
				if (index < itemCount && itemCount + 1 <= arrayLength)
				{
					for (int i = itemCount + 1; i > index; i--)
					{
						arrayPointer[i] = arrayPointer[i - 1];
					}
					arrayPointer[index] = item;
				}
				else
				{
					T* original = arrayPointer;
					arrayLength *= 2;
					arrayPointer = new T[arrayLength];
					for (int i = itemCount + 1; i > index; i--)
					{
						arrayPointer[i] = original[i - 1];
					}
					arrayPointer[index] = item;
					itemCount++;
					delete[] original;
				}
			}
			else if (index == 0)
			{
				arrayPointer = new T[5];
				arrayPointer[0] = item;
				arrayLength = 5;
				itemCount = 1;
			}
		}

		template <class T>
		T ArrayList<T>::At(int index) const
		{
			if (index < itemCount)
			{
				return arrayPointer[index];
			}
			return T();
		}

		template <typename T>
		T ArrayList<T>::At(int index) const
		{
			if (index < itemCount)
			{
				return arrayPointer[index];
			}
			return 0;
		}

		template <class T>
		void ArrayList<T>::Replace(int index, T item)
		{
			if (index < itemCount)
			{
				arrayPointer[index] = item;
			}
		}
	}
}

