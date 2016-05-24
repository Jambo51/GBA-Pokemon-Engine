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
				ArrayList();
				ArrayList(int initialItemCount, const T* intialItems);
				~ArrayList();
				int Size() const;
				void PushBack(T item);
				void PushFront(T item);
				void PushFrontMany(const T* items, int numItems);
				bool Remove(T item);
				void Clear();
				void PushAt(T item, int index);
				T At(int index) const;
				void Replace(int index, T item);
				T* GetPointer() const { return arrayPointer; }

				T operator[](int index) const
				{
					return At(index);
				}
		};
	}
}


#endif /* INCLUDE_COLLECTIONS_LISTS_ARRAYLIST_H_ */
