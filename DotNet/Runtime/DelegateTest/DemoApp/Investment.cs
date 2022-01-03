delegate float InterestRate(int period);

class Investment
{
    public double Sum { get; }

    public int Years { get; }

    public Investment(double sum, int years)
    {
        Sum = sum;
        Years = years;
    }

    public double Income(InterestRate profit)
    {
        float rate = profit(Years); //profit.Invoke(Years)
        double amount = Sum * Math.Pow(1 + rate / 100, Years);
        return amount - Sum;
    }
}