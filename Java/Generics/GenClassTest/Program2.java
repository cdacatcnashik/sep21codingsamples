class Program {

	/*
	 * A generic type G with a type argument T can be used in a declaration with a wild-card as
	 * (a) G<? extends V> which can be sustituted by any G<U> where U supports implicit conversion
	 *     to V but only members of G in which its type-argument does not appear as a parameter type
	 *     can be applied to this declaration
	 * (b) G<? super V> which can be sustituted by any G<U> where U supports implicit conversion
	 *     from V but only members of G in which its type-argument does not appear as a return type
	 *     can be applied to this declaration
	 */
	//SimpleStack<?> is equivalent to SimpleStack<? extends Object>
	private static void printStack(SimpleStack<?> store) {
		for(int count = 0; !store.empty(); ++count){
			if(count > 0)
				System.out.print(", ");
			System.out.print(store.pop());
		}
		System.out.println();
	}

	public static void main(String[] args) {
		SimpleStack<String> a = new SimpleStack<String>();
		a.push("Monday");
		a.push("Tuesday");
		a.push("Wednesday");
		a.push("Thursday");
		a.push("Friday");
		printStack(a);
		SimpleStack<Double> b = new SimpleStack<>();
		b.push(12.1);
		b.push(35.2);
		b.push(24.3);
		b.push(52.4);
		printStack(b);
	}
}

