class Investment {

	//instance fields
	private double sum;
	private int years;
	private boolean risk;

	//parameterized constructor
	public Investment(double amount, int duration) {
		sum = amount;
		years = duration;
		risk = false;
	}

	//instance methods

	public double getSum() {
		return sum;
	}

	public int getYears() {
		return years;
	}	

	public void allowRisk(boolean yes) {
		risk = yes;
	}

	public double income() {
		float rate = risk ? 8 : 5;
		double amount = sum * Math.pow(1 + rate / 100, years);
		return amount - sum;
	}
}

