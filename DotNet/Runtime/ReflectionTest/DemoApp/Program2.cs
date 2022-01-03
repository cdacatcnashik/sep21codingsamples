record Student (string Name, string Course, float Score);

record Teacher (string Name, int Experience);

class Program
{
    private static void PrintAsXml(object info)
    {
        Type t = info.GetType();
        Console.WriteLine("<{0}>", t.Name);
        foreach(var prop in t.GetProperties())
            Console.WriteLine("  <{0}>{1}</{0}>", prop.Name, prop.GetValue(info));
        Console.WriteLine("</{0}>", t.Name);
        Console.WriteLine();
    }

    public static void Main()
    {
        PrintAsXml(new Student("Jack", "Java", 67));
        PrintAsXml(new Teacher("Jill", 9));
    }
}
