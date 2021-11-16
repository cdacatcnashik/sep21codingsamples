import java.util.*;

class Program {

	public static void main(String[] args) {
		//List<Interval> store = new ArrayList<>();
		List<Interval> store = new LinkedList<>();
		store.add(new Interval(5, 31));
		store.add(new Interval(4, 12));
		store.add(new Interval(2, 43));
		store.add(new Interval(7, 24));
		store.add(new Interval(6, 55));
		store.add(new Interval(3, 72));
		for(var item : store)
			System.out.println(item);
		System.out.printf("Third Interval = %s%n", store.get(2));
	}
}

