//IDictionary<string, Interval> store = new Dictionary<string, Interval>();
//IDictionary<string, Interval> store = new SortedList<string, Interval>();
IDictionary<string, Interval> store = new SortedDictionary<string, Interval>();
store.Add("monday", new Interval(4, 31));
store.Add("tuesday", new Interval(7, 42));
store.Add("wednesday", new Interval(5, 13));
store.Add("thursday", new Interval(6, 54));
store.Add("friday", new Interval(3, 25));
if(args.Length > 0)
{
    string key = args[0].ToLower();
    if(store.TryGetValue(key, out Interval val)) //out parameter is a ref parameter which can accept uninitialized argument
        Console.WriteLine("Value = {0}", val);
    else    
        Console.WriteLine("No such key!");
}
else
{
    foreach(var pair in store)
        Console.WriteLine("{0, -16}{1, 8}", pair.Key, pair.Value);
}
