string[] names = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday"};
Console.WriteLine("Small elements in names array");
foreach(string item in names)
{
    if(item.Length < 8)
        Console.WriteLine(item);
}
SimpleStack<double> values = new();
values.Push(23.1);
values.Push(47.2);
values.Push(58.3);
values.Push(13.4);
values.Push(62.5);
values.Push(21.6);
values.Push(35.7);
Console.WriteLine("Big elements on values stack");
foreach(double item in values)
{
    if(item > 25)
        Console.WriteLine(item);
}
