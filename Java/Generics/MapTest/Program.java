import java.util.*;

class Program {

	public static void main(String[] args) {
		//Map<String, Interval> store = new HashMap<>();
		Map<String, Interval> store = new TreeMap<>();
		store.put("monday", new Interval(5, 31));
		store.put("tuesday", new Interval(7, 42));
		store.put("wednesday", new Interval(4, 23));
		store.put("thursday", new Interval(3, 34));
		store.put("friday", new Interval(2, 55));
		store.put("tuesday", new Interval(6, 12));
		if(args.length > 0) {
			Interval val = store.get(args[0]);
			if(val != null)
				System.out.printf("Value = %s%n", val);
			else
				System.out.println("No such key!");
		}else{
			for(var pair : store.entrySet())
			{
				System.out.printf("%-16s%8s%n", pair.getKey(), pair.getValue());
			}
		}
	}
}

