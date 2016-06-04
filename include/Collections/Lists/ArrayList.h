/*
 * ArrayList.h
 *
 *  Created on: 22 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_COLLECTIONS_LISTS_ARRAYLIST_H_
#define INCLUDE_COLLECTIONS_LISTS_ARRAYLIST_H_

#include "../Lists/List.h"

namespace Collections
{
	namespace Lists
	{
		template <class T> class ArrayList : public List<T>
		{
			private:
				T* arrayPointer;
				int itemCount;
				int arrayLength;
			public:
				ArrayList<T>()
				{
					// TODO Auto-generated constructor stub
					itemCount = 0;
					arrayLength = 0;
					arrayPointer = 0;
				}

				ArrayList<T>(int initialItemCount, const T* initialItems = 0)
				{
					// TODO Auto-generated constructor stub
					itemCount = initialItemCount;
					arrayLength = initialItemCount << 2;
					if (arrayLength)
					{
						arrayPointer = new T[arrayLength];
						if (initialItems)
						{
							for (int i = 0; i < initialItemCount; i++)
							{
								arrayPointer[i] = initialItems[i];
							}
						}
					}
					else
					{
						arrayPointer = 0;
					}
				}

				~ArrayList<T>()
				{
					// TODO Auto-generated destructor stub
					Clear();
					if (arrayPointer)
					{
						delete[] arrayPointer;
					}
				}

				int Size() const
				{
					return itemCount - 1;
				}

				int RealSize() const
				{
					return itemCount;
				}

				void PushBack(T item)
				{
					if (arrayPointer)
					{
						if (itemCount + 1 <= arrayLength)
						{
							arrayPointer[itemCount] = item;
							itemCount++;
						}
						else
						{
							T* original = arrayPointer;
							arrayLength *= 2;
							arrayPointer = new T[arrayLength];
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

				void PushFront(T item)
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
							itemCount++;
							return;
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
							return;
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

				void PushFrontMany(const T* items, int numItems)
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

				bool Remove(T item)
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
						return true;
					}
					return false;
				}

				void Clear()
				{
					for (int i = 0; i < itemCount; i++)
					{
						arrayPointer[i] = T();
					}
				}

				void PushAt(T item, int index)
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

				T At(int index) const
				{
					if (index < itemCount)
					{
						return arrayPointer[index];
					}
					return T();
				}

				void Replace(int index, T item)
				{
					if (!arrayPointer)
					{
						PushBack(item);
						return;
					}
					if (index < itemCount)
					{
						arrayPointer[index] = item;
					}
				}

				T* GetPointer() const { return arrayPointer; }

				T operator[](int index) const
				{
					return At(index);
				}
		};
	}
}


#endif /* INCLUDE_COLLECTIONS_LISTS_ARRAYLIST_H_ */
