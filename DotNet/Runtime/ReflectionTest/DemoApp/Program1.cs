record Student (string Name, string Course, float Score);

record Teacher (string Name, int Experience);

class Program
{
    private static void PrintAsXml(object info)
    {
        Console.WriteLine("<Student>");
        Console.WriteLine("  <Name>{0}</Name>", info.Name);
        Console.WriteLine("  <Course>{0}</Course>", info.Course);
        Console.WriteLine("  <Score>{0}</Score>", info.Score);
        Console.WriteLine("</Student>");
        Console.WriteLine();
    }

    private static void PrintAsXml(Teacher info)
    {
        Console.WriteLine("<Teacher>");
        Console.WriteLine("  <Name>{0}</Name>", info.Name);
        Console.WriteLine("  <Experience>{0}</Experience>", info.Experience);
        Console.WriteLine("</Teacher>");
        Console.WriteLine();
    }


    public static void Main()
    {
        PrintAsXml(new Student("Jack", "Java", 67));
        PrintAsXml(new Teacher("Jill", 9));
    }
}