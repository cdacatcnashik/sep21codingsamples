class Program
{
    //generic method with type argument T
    private static T Select<T>(int choice, T first, T second)
    {
        if((choice % 2) == 1)
            return first;
        return second;
    }

    private static T Select<T>(T first, T second) where T: IComparable<T>
    {
        if(first.CompareTo(second) > 0)
            return first;
        return second;
    }

    static void Main(string[] args)
    {
        if(args.Length > 0)
        {
            int s = int.Parse(args[0]);
            string ss = Select(s, "Monday", "Tuesday");
            Console.WriteLine($"Selected string = {ss}");
            double sd = Select(s, 5.67, 3.21);
            Console.WriteLine($"Selected double = {sd}");
            //Select(s, "Sunday", 3.14);
        }
        else
        {
            string ss = Select("Monday", "Tuesday");
            Console.WriteLine($"Selected string = {ss}");
            double sd = Select(5.67, 3.21);
            Console.WriteLine($"Selected double = {sd}");     
            Interval si = Select(new Interval(5, 40), new Interval(3, 45));
            Console.WriteLine($"Selected Interval = {si}");
        }
    }
}
