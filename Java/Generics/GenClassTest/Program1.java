class Program {

	public static void main(String[] args) {
		SimpleStack<String> a = new SimpleStack<String>();
		a.push("Monday");
		a.push("Tuesday");
		a.push("Wednesday");
		a.push("Thursday");
		a.push("Friday");
		//a.push(12.1);
		while(!a.empty())
			System.out.println(a.pop());
		System.out.println("---------------------");
		SimpleStack<Double> b = new SimpleStack<>(); //type inference
		b.push(12.1);
		b.push(35.2);
		b.push(24.3);
		b.push(52.4);
		while(!b.empty())
			System.out.println(b.pop());
	}
}

