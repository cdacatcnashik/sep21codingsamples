namespace Taxation;

public struct Dealer : ITaxPayer
{
    public decimal TotalSales;

    public decimal AnnualIncome()
    {
        return 0.125M * TotalSales;
    }
}