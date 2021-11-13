class Program {

	private static Object select(int choice, Object first, Object second) {
		if((choice % 2) == 1)
			return first;
		return second;
	}

	public static void main(String[] args) {
		if(args.length > 0) {
			int s = Integer.parseInt(args[0]);
			String ss = (String)select(s, "Monday", "Friday");
			System.out.printf("Selected String = %s%n", ss);
			//implicit conversion (auto-boxing) from primitive value (double) type 
			//to Object type using its wrapper class (java.lang.Double)
			double sd = (double)select(s, 23.4, 32.1); 
			System.out.printf("Selected double = %s%n", sd);
			int si = (int)select(s, 1234, "abcd");
			System.out.printf("Selected int = %s%n", si);
		}
	}
}

