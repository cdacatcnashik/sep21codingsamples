package payroll;

//subclass SalesPerson inherits from superclass Employee
public class SalesPerson extends Employee {

	private double sales;

	public SalesPerson(int h, float r, double s) {
		super(h, r); //calling superclass constructor
		sales = s;
	}

	public double getSales() { return sales; }

	//overriding method of superclass
	public double getIncome() {
		double income = super.getIncome();
		if(sales >= 20000)
			income += 0.05 * sales;
		return income;
	}
}

