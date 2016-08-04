/*
 * ArrayQueue.h
 *
 *  Created on: 27 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_COLLECTIONS_QUEUES_ARRAYQUEUE_H_
#define INCLUDE_COLLECTIONS_QUEUES_ARRAYQUEUE_H_

#include "Queue.h"

namespace Collections
{
	namespace Queues
	{
		template <class T> class ArrayQueue : public Queue<T>
		{
			private:
				T* arrayPointer;
				int itemCount;
				int arrayLength;
			public:
				ArrayQueue<T>()
				{
					// TODO Auto-generated constructor stub
					itemCount = 0;
					arrayLength = 0;
				}

				ArrayQueue<T>(int initialItemCount, const T* initialItems = 0)
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

				~ArrayQueue<T>()
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

				void Enqueue(T item)
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

				T Dequeue()
				{
					if (arrayPointer)
					{
						T item = arrayPointer[0];
						if (itemCount > 0)
						{
							T item = arrayPointer[0];
							for (int i = 1; i < itemCount; i++)
							{
								arrayPointer[i - 1] = arrayPointer[i];
							}
							arrayPointer[itemCount - 1] = 0;
							itemCount--;
							return item;
						}
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
						arrayPointer[i] = 0;
					}
					delete[] arrayPointer;
					arrayPointer = __null;
				}

				T* GetPointer() const { return arrayPointer; }
		};
	}
}

#endif /* INCLUDE_COLLECTIONS_QUEUES_ARRAYQUEUE_H_ */
