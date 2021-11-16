//A functional interface contains exactly one abstract method.
//Functional interface type supports implicit conversion from a method reference type
//whose return type and parameter types match with those of its abstract method
interface InterestRate {
	float forPeriod(int duration);
}

//this class produces immutable objects whose states cannot be modified after their construction
class Investment {

	private double sum;
	private int years;

	public Investment(double sum, int years) {
		this.sum = sum;
		this.years = years;
	}

	public double sum() { return sum; }

	public int years() { return years; }

	public double income(InterestRate profit) {
		float rate = profit.forPeriod(years);
		double amount = sum * Math.pow(1 + rate / 100, years);
		return amount - sum;
	}

}

