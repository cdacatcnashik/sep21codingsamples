//generic SimpleStack class with type-argument V
class SimpleStack<V> {

	//inner member class can refer to all members of its outer class (SimpleStack)
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
}

