package finance;

public class PersonalLoan {

	@MaxDuration(value=4)
	public float common(double amount, int period) {
		return 10 + period / 3;
	}

	public float employees(double amount, int period) {
		return 6 + period / 4;
	}
}

