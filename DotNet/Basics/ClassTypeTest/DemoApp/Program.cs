using Payroll;

double Tax(Employee emp)
{
    double i = emp.Income();
    return i > 10000 ? 0.15 * (i - 10000) : 0;
}

void Appraise(Employee emp)
{
    emp.Rate *= emp.Hours < 175 ? 1 : 1.15f;
}

Employee jack = new Employee(); //creating instance using parameterless constructor
jack.Hours = 186; //jack.set_Hours(186)
jack.Rate = 52;
Console.WriteLine("Jack's Income is  {0:0.00} and Tax is {1:0.00}", jack.Income(), Tax(jack));
Employee jill = new Employee(165, 95); //creating instance using parameterized constructor
Console.WriteLine("Jill's Income is {0:0.00} and Tax is {1:0.00}", jill.Income(), Tax(jill));
Appraise(jack);
Console.WriteLine("Jack's Income after appraisal: {0:0.00}", jack.Income());
Appraise(jill);
Console.WriteLine("Jill's Income after appraisal: {0:0.00}", jill.Income());
Console.WriteLine("Number of Employees = {0}", Employee.CountInstances());
