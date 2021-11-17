import java.util.*;

//A record is a reference type which produces immutable value like objects.
//Compiler generates a class for a record type which contains final fields
//along with a constructor to initialize them and methods for getting their values.
//This class also overrides toString, hashCode and equals methods.
record Item(String name, String brand) {}

record Customer(String name, double purchase, int rating) implements Comparable<Customer> {

	public int compareTo(Customer other) {
		return name.compareTo(other.name);
	}

}

class Shop {

	public Item[] getItems() {
		return new Item[]{
			new Item("cpu", "intel"),
			new Item("ssd", "samsung"),
			new Item("mouse", "microsoft"),
			new Item("ddr", "samsung"),
			new Item("ssd", "seagate"),
			new Item("motherboard", "intel"),
			new Item("monitor", "samsung")
		};
	}

	public Collection<Customer> getCustomers() {
		var customers = new ArrayList<Customer>();
		customers.add(new Customer("Mayur", 54000, 3));
		customers.add(new Customer("Sanket", 48000, 4));
		customers.add(new Customer("Sourav", 32000, 1));
		customers.add(new Customer("Vivek", 61000, 5));
		customers.add(new Customer("Pooja", 45000, 2));
		customers.add(new Customer("Rahul", 76000, 4));
		customers.add(new Customer("Gopal", 22000, 3));
		customers.add(new Customer("Yash", 85000, 5));
		return customers;
	}
}

