namespace Payroll
{
    //SalesPerson class is derived from Employee (base) class
    class SalesPerson : Employee
    {
        //automatic property
        public double Sales {get; set;}

        public SalesPerson(int h, float r, double s) : base(h, r)
        {
            Sales = s;
        }

        public override double Income()
        {
            double income = base.Income();
            if(Sales >= 20000)
                income += 0.05 * Sales;
            return income;
        }
    }
}