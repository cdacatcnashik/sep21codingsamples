//A record is a type generally defined for constructing immutable data-objects.
//By default compiler generates a class for the record type which contains
//read-only properties corresponding to positional parameters specified in the 
//defintion of that record type along with a constructor to initialize those
//properties and overrides for GetHashCode and ToString methods.
record Item(string Name, string Brand);

//mutable value-type record
record struct Customer(string Name, decimal Purchase, int Rating);

class Shop
{
    public Item[] GetItems()
    {
		return new Item[]
        {
			new Item("cpu", "intel"),
			new Item("ssd", "samsung"),
			new Item("mouse", "microsoft"),
			new Item("ddr", "samsung"),
			new Item("ssd", "seagate"),
			new Item("motherboard", "intel"),
			new Item("monitor", "samsung")
		};
    }

    public ICollection<Customer> GetCustomers()
    {
		List<Customer> customers = new();
		customers.Add(new ("Mayur", 54000, 3));
		customers.Add(new ("Sanket", 48000, 4));
		customers.Add(new ("Sourav", 32000, 1));
		customers.Add(new ("Vivek", 61000, 5));
		customers.Add(new ("Pooja", 45000, 2));
		customers.Add(new ("Rahul", 76000, 4));
		customers.Add(new ("Gopal", 22000, 3));
		customers.Add(new ("Yash", 85000, 5));
		return customers;
    }
}