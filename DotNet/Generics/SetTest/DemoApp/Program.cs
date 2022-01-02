//ISet<Interval> store = new HashSet<Interval>();
//ISet<Interval> store = new SortedSet<Interval>();
ISet<Interval> store = new SortedSet<Interval>(new SecondsComparer());
store.Add(new Interval(4, 31));
store.Add(new Interval(7, 42));
store.Add(new Interval(5, 13));
store.Add(new Interval(6, 54));
store.Add(new Interval(3, 25));
store.Add(new Interval(4, 73));
foreach(var i in store)
    Console.WriteLine(i);
