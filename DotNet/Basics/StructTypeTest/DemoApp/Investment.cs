using System;

//user-defined value type
struct Investment
{
    //instance fields
    //readonly field can only be assigned in the constructor
    public readonly double Sum;
    public readonly double Years;
    private bool risk;

    //struct construct must be defined with at least one non-optional parameter
    public Investment(double amount, int period)
    {
        Sum = amount;
        Years = period;
        risk = false;
    }

    public void AllowRisk(bool yes)
    {
        risk = yes;
    }

    public double Income()
    {
        float rate = risk ? 7 : 5;
        double amount = Sum * Math.Pow(1 + rate / 100, Years);
        return amount - Sum;
    }
}
