class Program
{
    private static string Select(int choice, string first, string second)
    {
        if((choice % 2) == 1)
            return first;
        return second;
    }

    private static double Select(int choice, double first, double second)
    {
        if((choice % 2) == 1)
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
    }
}
