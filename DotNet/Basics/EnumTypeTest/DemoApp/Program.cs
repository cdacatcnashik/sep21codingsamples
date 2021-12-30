using System;

class Program
{
    private static void AdjustRisk(ref Investment i)
    {
        i.AllowRisk(i.Sum < 50000);
    }

    public static void Main(string[] args)
    {
        Console.WriteLine("Welcome Investor.");
        double s = double.Parse(args[0]);
        int y = int.Parse(args[1]);
        Investment inv = new Investment(s, y);
        Console.WriteLine("Income in risk-free investment: {0:0.00}", inv.Income());
        AdjustRisk(ref inv);
        Console.WriteLine("Income in smart investment: {0:0.00}", inv.Income());
        inv.AllowRisk(RiskLevel.High);
        Console.WriteLine("Income in high-risk investment: {0:0.00}", inv.Income());
    }
}
