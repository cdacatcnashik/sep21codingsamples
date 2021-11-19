package finance;

public class HomeLoan {

	public float common(double amount, int period) {
		return amount < 1000000 ? 9.5f : 8.5f; 
	}

	@MaxDuration(12)
	public float women(double amount, int period) {
		return common(amount, period) - 1;
	}
}

