class Program {

	public static void main(String[] args) {
		String[] names = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday"};
		System.out.println("Small strings in names array"); 
		for(String name : names){
			if(name.length() < 8)
				System.out.println(name);
		}
		SimpleStack<Double> values = new SimpleStack<Double>();
		values.push(55.1);
		values.push(34.2);
		values.push(63.3);
		values.push(29.4);
		values.push(78.5);
		values.push(42.6);
		System.out.println("Big numbers in values array");
		for(double value : values){
			if(value > 40)
				System.out.println(value);
		}
	}
}

