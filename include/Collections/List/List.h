/*
 * List.h
 *
 *  Created on: 22 May 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_COLLECTIONS_LIST_LIST_H_
#define INCLUDE_COLLECTIONS_LIST_LIST_H_

namespace Collections
{
	namespace Lists
	{
		template <class T> class List
		{
		protected:
			List<T>() { }
		public:
			virtual ~List<T>()
			{
				Clear();
			}
			virtual int Size() const = 0;
			virtual void PushBack(T item) = 0;
			virtual void PushFront(T item) = 0;
			virtual void PushFrontMany(const T* items, int numItems) = 0;
			virtual bool Remove(T item) = 0;
			virtual void Clear() = 0;
			virtual void PushAt(T item, int index) = 0;
			virtual T At(int index) const = 0;
			virtual void Replace(int index, T item) = 0;
			const T First() const
			{
				return At(0);
			}
			const T Last() const
			{
				return At(Size() - 1);
			}
		};
	}
}


#endif /* INCLUDE_COLLECTIONS_LIST_LIST_H_ */
