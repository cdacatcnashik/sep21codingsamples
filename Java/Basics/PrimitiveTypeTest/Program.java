class Program {

	private static double income(double sum, int years, boolean risky) {
		float rate = risky ? 8 : 5;
		double amount = sum * Math.pow(1 + rate / 100, years);
		return amount - sum;
	}

	public static void main(String[] args) {
		System.out.println("Welcome Investor");
		double s = Double.parseDouble(args[0]);
		int y = Integer.parseInt(args[1]);
		System.out.printf("Income in risk-free investment: %.2f%n", income(s, y, false));
		System.out.printf("Income in riskful investment: %.2f%n", income(s, y, true));
	}
}

