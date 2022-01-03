var shop = new Shop();
if(args[0] == "items")
{
    Item[] items = shop.GetItems();
    items.Where(i => i.Brand == args[1])
        .Select(i => i.Name)
        .PrintEach();
}
else if(args[0] == "customers")
{
    decimal limit = decimal.Parse(args[1]);
    ICollection<Customer> customers = shop.GetCustomers();
    var selection = from c in customers
                    where c.Purchase >= limit
                    orderby c.Name descending
                    select new //creates object of anonymous type
                    {
                        Id = c.Name.ToUpper(),
                        Stars = new string('*', c.Rating)
                    };
    foreach(var entry in selection)
        Console.WriteLine($"{entry.Stars}\t{entry.Id}");
}