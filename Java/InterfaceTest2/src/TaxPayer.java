package taxation;

public interface TaxPayer {

	double annualIncome();

	//implementing a method in an interface using default modifier
	default double incomeTax() {
		double excess = annualIncome() - 120000;
		return excess > 0 ? 0.15 * excess : 0;
	}
}

