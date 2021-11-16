import java.util.*;

class Program {

	public static void main(String[] args) {
		//Set<Interval> store = new HashSet<>();
		Set<Interval> store = new TreeSet<>();
		store.add(new Interval(5, 31));
		store.add(new Interval(4, 12));
		store.add(new Interval(2, 43));
		store.add(new Interval(7, 24));
		store.add(new Interval(6, 55));
		store.add(new Interval(3, 72));
		for(var item : store)
			System.out.println(item);
	}
}
