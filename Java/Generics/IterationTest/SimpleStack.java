import java.util.Iterator;

class SimpleStack<V> implements Iterable<V> {

	class Node {

		V value;
		Node below;

		Node(V val) {
			value = val;
			below = top;
		}
	}

	private Node top;

	public void push(V item) {
		top = new Node(item);
	}

	public V pop() {
		V item = top.value;
		top = top.below;
		return item;
	}

	public boolean empty() {
		return top == null;
	}

	public Iterator<V> iterator() {
		//creating a new instance of an inner local anonymous class
		//which implements java.util.Iterator interface
		return new Iterator<V>() {

			Node current = top;

			public boolean hasNext() {
				return current != null;
			}

			public V next() {
				V result = current.value;
				current = current.below;
				return result;
			}
		};
	}
}



