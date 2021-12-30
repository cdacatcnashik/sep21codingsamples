using System;

class Program
{
    private static double Income(double sum, int years, bool risky=false)
    {
        float rate = risky ? 7 : 5;
        double amount = sum * Math.Pow(1 + rate / 100, years);
        return amount - sum;
    }

    public static void Main(string[] args)
    {
        Console.WriteLine("Welcome Investor.");
        double s = double.Parse(args[0]);
        int y = int.Parse(args[1]);
        Console.WriteLine("Income in risk-free investment: {0:0.00}", Income(s, y));
        Console.WriteLine("Income in low-risk investment: {0:0.00}", Income(s, y, true));
    }
}
