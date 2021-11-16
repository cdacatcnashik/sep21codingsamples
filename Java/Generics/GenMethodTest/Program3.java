class Program {

	/*
	 * A generic declaration enables the Java compiler to identify matching object types
	 * in its usage and to perform type-conversions which are othewise explicit.
	 * A generic declaration contains one or more type arguments each of which stands for
	 * java.lang.Object type and as such it can be substituted by any reference type in its 
	 * usage by default.
	 */
	//a generic select method with type argument T
	private static <T> T select(int choice, T first, T second) {
		if((choice % 2) == 1)
			return first;
		return second;
	}

	/*
	 * A type-argument only supports members of java.lang.Object (type erasure) by default
	 * however if it is bounded (using extends statement) by a reference type R then it also
	 * supports members of R but it can only be substituted by a type which supports implicit
	 * conversion to R.
	 */
	//type argument T bounded by java.lang.Comparable<T> interface
	private static <T extends Comparable<T>> T select(T first, T second) {
		if(first.compareTo(second) > 0)
			return first;
		return second;
	}

	public static void main(String[] args) {
		if(args.length > 0) {
			int s = Integer.parseInt(args[0]);
			String ss = select(s, "Monday", "Friday");
			System.out.printf("Selected String = %s%n", ss);
			double sd = select(s, 23.4, 32.1); 
			System.out.printf("Selected double = %s%n", sd);
			//int si = select(s, 1234, "abcd");
			int si = select(s, 1234, 2345);
			System.out.printf("Selected int = %s%n", si);
		}else{
			String ss = select("Monday", "Friday");
			System.out.printf("Selected String = %s%n", ss);
			double sd = select(23.4, 32.1); 
			System.out.printf("Selected double = %s%n", sd);
			Interval si = select(new Interval(4, 50), new Interval(3, 40));
			System.out.printf("Selected Interval = %s%n", si);
		}
	}
}

