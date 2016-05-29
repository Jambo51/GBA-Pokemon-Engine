/*
 * ArrayStack.h
 *
 *  Created on: 27 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_COLLECTIONS_STACKS_ARRAYSTACK_H_
#define INCLUDE_COLLECTIONS_STACKS_ARRAYSTACK_H_

#include "Stack.h"

namespace Collections
{
	namespace Stacks
	{
		template <class T> class ArrayStack : public Stack<T>
		{
			private:
				T* arrayPointer;
				int itemCount;
				int arrayLength;
			public:
				ArrayStack<T>()
				{
					// TODO Auto-generated constructor stub
					itemCount = 0;
					arrayLength = 0;
				}

				ArrayStack<T>(int initialItemCount, const T* initialItems = 0)
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

				~ArrayStack<T>()
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
					return itemCount;
				}

				void Push(T item)
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

				T Pop()
				{
					if (arrayPointer && itemCount > 0)
					{
						T item = arrayPointer[0];
						for (int i = i; i < itemCount; i++)
						{
							arrayPointer[i - 1] = arrayPointer[i];
						}
						arrayPointer[itemCount - 1] = T();
						itemCount--;
						return item;
					}
					return T();
				}

				T Peek()
				{
					if (arrayPointer && itemCount > 0)
					{
						return arrayPointer[0];
					}
					return T();
				}

				void Clear()
				{
					for (int i = 0; i < itemCount; i++)
					{
						arrayPointer[i] = T();
					}
				}

				T* GetPointer() const { return arrayPointer; }
		};
	}
}



#endif /* INCLUDE_COLLECTIONS_STACKS_ARRAYSTACK_H_ */
