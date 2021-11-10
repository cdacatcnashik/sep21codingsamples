class Program {

	private static void makeSmart(Investment i) {
		double a = i.getSum();
		i.allowRisk(a < 50000);
	}

	public static void main(String[] args) {
		System.out.println("Welcome Investor");
		double s = Double.parseDouble(args[0]);
		int y = Integer.parseInt(args[1]);
		Investment inv = new Investment(s, y); //creating new instance on garbage-collected heap
		System.out.printf("Income in risk-free investment: %.2f%n", inv.income());
		inv.allowRisk(true);
		System.out.printf("Income in riskful investment: %.2f%n", inv.income());
		makeSmart(inv);
		System.out.printf("Income in smart investment: %.2f%n", inv.income());
	}

}

