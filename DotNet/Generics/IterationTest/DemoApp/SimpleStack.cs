class SimpleStack<V>
{
    class Node
    {
        internal V Value;
        internal Node Below;

        internal Node(V val, Node bel)
        {
            Value = val;
            Below = bel;
        }
    }

    private Node top;

    public void Push(V item)
    {
        top = new Node(item, top);
    }

    public V Pop()
    {
        V item = top.Value;
        top = top.Below;
        return item;
    }

    public bool Empty()
    {
        return top is null;
    }

    public IEnumerator<V> GetEnumerator()
    {
        for(Node n = top; n != null; n = n.Below)
            yield return n.Value; 
            //compiler will generate implementation for IEnumerator<V> for yielded values
    }
}
