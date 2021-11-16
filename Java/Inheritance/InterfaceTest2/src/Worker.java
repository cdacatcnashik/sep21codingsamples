package taxation;

public class Worker implements TaxPayer {

	private double monthlyWages;

	public Worker(double wages) { monthlyWages = wages; }

	public double annualIncome() {
		double bonus = monthlyWages < 20000 ? 30000 : 1.5 * monthlyWages;
		return 12 * monthlyWages + bonus;
	}
}

