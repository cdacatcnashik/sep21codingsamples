class Program
{
    private static object Select(int choice, object first, object second)
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
            string ss = (string)Select(s, "Monday", "Tuesday");
            Console.WriteLine($"Selected string = {ss}");
            double sd = (double)Select(s, 5.67, 3.21);
            Console.WriteLine($"Selected double = {sd}");
            Select(s, "Sunday", 3.14);
        }
    }
}
