package taxation;

public class Dealer implements TaxPayer {

	private double totalSales;

	public Dealer(double sales) { totalSales = sales; }

	public double annualIncome() {
		return 0.125 * totalSales;
	}
}

