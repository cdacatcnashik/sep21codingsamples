class Program {

	private static float safeScheme(int n) {
		return n < 3 ? 5 : 6;
	}

	public static void main(String[] args) {
		var input = new java.util.Scanner(System.in);
		System.out.print("Amount and Period: ");
		double s = input.nextDouble();
		int y = input.nextInt();
		var inv = new Investment(s, y);
		//passing method-reference in place of InterestRate 
		//a class which implements InterestRate will be created at runtime and its object will be passed
		System.out.printf("Income in risk-free investment: %.2f%n", inv.income(Program::safeScheme)); 
		//passing a lambda expression: (arguments) -> expression
		//compiler will write corresponding method and pass its reference
		System.out.printf("Income in riskful investment: %.2f%n", inv.income(n -> 8.0f + n / 3)); 
	}
}


