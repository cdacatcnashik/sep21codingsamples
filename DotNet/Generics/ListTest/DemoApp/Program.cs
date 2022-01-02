List<Interval> store = new List<Interval>();
store.Add(new Interval(4, 31));
store.Add(new Interval(7, 42));
store.Add(new Interval(5, 13));
store.Add(new Interval(6, 54));
store.Add(new Interval(3, 25));
store.Add(new Interval(4, 73));
store.Sort();
foreach(var i in store)
    Console.WriteLine(i);
Console.WriteLine("Third Interval = {0}", store[2]);
