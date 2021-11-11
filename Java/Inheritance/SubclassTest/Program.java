import payroll.Employee;

class Program {

	private static double getIncomeTax(Employee emp) {
		double i = emp.getIncome();
		return i > 10000 ? 0.15 * (i - 10000) : 0;
	}

	private static void appraise(Employee emp) {
		float current = emp.getRate();
		float raise;
		if(emp instanceof payroll.SalesPerson sp)
			raise = sp.getSales() < 100000 ? 1 : 1.1f;
		else
			raise = emp.getHours() < 175 ? 1 : 1.2f;
		emp.setRate(current * raise);
	}

	public static void main(String[] args) {
		Employee jack = new Employee();
		jack.setHours(186);
		jack.setRate(52);
		System.out.printf("Jack's ID is %d, Income is %.2f and Tax is %.2f%n", jack.getId(), jack.getIncome(), getIncomeTax(jack));
		var jill = new payroll.SalesPerson(186, 52, 64000); //var will be replaced by the type in the initializer
		System.out.printf("Jill's ID is %d, Income is %.2f and Tax is %.2f%n", jill.getId(), jill.getIncome(), getIncomeTax(jill));
		appraise(jack);
		System.out.printf("Jack's income after appraisal: %.2f%n", jack.getIncome());
		appraise(jill);
		System.out.printf("Jill's income after appraisal: %.2f%n", jill.getIncome());
		System.out.printf("Number of Employees = %d%n", Employee.countInstances());
	}
}

