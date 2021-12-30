using Payroll;

double Tax(Employee emp)
{
    double i = emp.Income();
    return i > 10000 ? 0.15 * (i - 10000) : 0;
}

void Appraise(Employee emp)
{
    if(emp is SalesPerson sp)
        emp.Rate *= sp.Sales < 75000 ? 1 : 1.12f;
    else
        emp.Rate *= emp.Hours < 175 ? 1 : 1.15f;
}

Employee jack = new Employee();
jack.Hours = 186; 
jack.Rate = 52;
Console.WriteLine("Jack's Income is  {0:0.00} and Tax is {1:0.00}", jack.Income(), Tax(jack));
SalesPerson jill = new SalesPerson(186, 52, 68000); 
Console.WriteLine("Jill's Income is {0:0.00} and Tax is {1:0.00}", jill.Income(), Tax(jill));
Appraise(jack);
Console.WriteLine("Jack's Income after appraisal: {0:0.00}", jack.Income());
Appraise(jill);
Console.WriteLine("Jill's Income after appraisal: {0:0.00}", jill.Income());
Console.WriteLine("Number of Employees = {0}", Employee.CountInstances());
