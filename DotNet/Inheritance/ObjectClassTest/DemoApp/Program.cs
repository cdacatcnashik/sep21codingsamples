partial class Interval
{
    public static Interval operator+(Interval lhs, Interval rhs)
    {
        return new Interval(lhs.Minutes + rhs.Minutes, lhs.Seconds + rhs.Seconds);
    }
}

class Program
{
    private static void PrintItem(string label, object info)
    {
        Console.WriteLine("{0} = {1}", label, info.ToString());
    }

    public static void Main(string[] args)
    {
        Interval a = new Interval(5, 15);
        Interval b = new Interval(3, 50);
        Interval c = new Interval(4, 75);
        Interval d = b;
        Interval e = a + b;
        PrintItem("Interval a", a);
        PrintItem("Interval b", b);
        PrintItem("Interval c", c);
        PrintItem("Interval d", d);
        PrintItem("a+b", e);
        Console.WriteLine("----------------------");

        Console.WriteLine("a is identical to b: {0}", ReferenceEquals(a, b));
        Console.WriteLine("a is identical to c: {0}", ReferenceEquals(a, c));
        Console.WriteLine("d is identical to b: {0}", ReferenceEquals(d, b));
        Console.WriteLine("----------------------");

        Console.WriteLine("a is equal to b: {0}", a.GetHashCode() == b.GetHashCode() && a.Equals(b));
        Console.WriteLine("a is equal to c: {0}", a.GetHashCode() == c.GetHashCode() && a.Equals(c));
        Console.WriteLine("d is equal to b: {0}", d.GetHashCode() == b.GetHashCode() && d.Equals(b));
        Console.WriteLine("----------------------");

        if(args.Length > 1)
        {
            Rectangle frame;
            frame.Length = float.Parse(args[0]);
            frame.Breadth = float.Parse(args[1]);
            //Auto Boxing - enclosing value-type data into an object on the heap so that
            //it can be converted to a compatible reference type
            PrintItem("Your Frame", frame);
        }
    }
}