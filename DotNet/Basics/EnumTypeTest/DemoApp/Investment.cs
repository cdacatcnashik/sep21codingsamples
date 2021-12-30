using System;

enum RiskLevel {None, Low, High}

struct Investment
{
    public readonly double Sum;
    public readonly double Years;
    private RiskLevel risk;

    public Investment(double amount, int period)
    {
        Sum = amount;
        Years = period;
        risk = RiskLevel.None;
    }

    public void AllowRisk(bool yes)
    {
        risk = yes ? RiskLevel.Low : RiskLevel.None;
    }

    //overloading above method
    public void AllowRisk(RiskLevel level)
    {
        risk = level;
    }

    public double Income()
    {
        float rate;
        switch(risk)
        {
            case RiskLevel.Low:
                rate = 7;
                break;
            case RiskLevel.High:
                rate = 10;
                break;
            default:
                rate = 5;
                break;
        }
        double amount = Sum * Math.Pow(1 + rate / 100, Years);
        return amount - Sum;
    }
}
