static class Printable
{
    public static void PrintEach<V>(this IEnumerable<V> source)
    {
        foreach(V item in source)
            Console.WriteLine(item);
    }
}