class TaxPayerBridge {

	private double income;

	public TaxPayerBridge(double i) { income = i; }

	public boolean validate(short age) {
		return age >= 18 && age <=100;
	}

	public native double getIncomeTax(short age);

	static {
		System.loadLibrary("tpb");
	}
}

