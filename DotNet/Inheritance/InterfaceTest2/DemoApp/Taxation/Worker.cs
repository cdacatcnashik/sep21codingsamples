namespace Taxation;

public struct Worker : ITaxPayer
{
    public decimal MonthlyWages;

    public decimal AnnualIncome()
    {
        decimal bonus = MonthlyWages < 20000 ? 30000 : 1.5M * MonthlyWages;
        return 12 * MonthlyWages + bonus;
    }
}