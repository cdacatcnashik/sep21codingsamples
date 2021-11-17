import java.util.*;

class Program {

	public static void main(String[] args) {
		Shop shop = new Shop();
		if(args[0].equals("items")){
			Item[] items = shop.getItems();
			Arrays.stream(items)
				  .filter(i -> i.brand().equals(args[1]))
				  .map(i -> i.name())
				  .forEach(System.out::println);
		}else if(args[0].equals("customers")) {
			double limit = Double.parseDouble(args[1]);
			Collection<Customer> customers = shop.getCustomers();
			customers.stream()
					 .filter(c -> c.purchase() >= limit)
					 .sorted()
					 .map(c -> "*".repeat(c.rating()) + "\t" + c.name())
					 .forEach(System.out::println);
		}
	}
}

