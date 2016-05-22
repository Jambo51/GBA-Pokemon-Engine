/*
 * UnorderedMap.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef UNORDEREDMAP_H_
#define UNORDEREDMAP_H_

#include "GlobalDefinitions.h"
namespace Collections
{
	namespace Lists
	{
		template <class T> class ListNode
		{
			private:
				ListNode<T>* previous;
				T itemItself;
				ListNode<T>* next;
			public:
				ListNode(ListNode<T>* previousItem, T item, ListNode<T>* nextItem);
				~ListNode();
				T GetItem() const { return itemItself; }
				void SetItem(T item) { itemItself = item; }
				ListNode<T>* GetNext() const { return next; }
				ListNode<T>* GetPrevious() const { return previous; }
				void SetPrevious(ListNode<T>* node) { this->previous = node; }
				void SetNext(ListNode<T>* node) { this->next = node; }
		};

		template <class T> class LinkedList : public List<T>
		{
			private:
				int numItems;
				ListNode<T>* frontNode;
				ListNode<T>* backNode;
			public:
				LinkedList<T>();
				~LinkedList<T>();
				int Size() const { return numItems; }
				ListNode<T>* FrontNode() const { return frontNode; }
				ListNode<T>* BackNode() const { return backNode; }
				void PushBack(T item);
				void PushFront(T item);
				void PushFrontMany(const T* items, int numItems);
				bool Remove(T item);
				ListNode<T>* NodeAt(int index) const;
				T At(int index) const;
				void Clear();
				void PushAt(T item, int index);
				void Replace(int index, T item);

				T operator[](int index)
				{
					return At(index);
				}
		};
	}
}
#endif /* UNORDEREDMAP_H_ */
