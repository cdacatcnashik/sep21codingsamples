float SafeScheme(int n)
{
    return n < 3 ? 5 : 6;
}

Console.Write("Sum  : ");
double s = double.Parse(Console.ReadLine());
Console.Write("Years: ");
int y = int.Parse(Console.ReadLine());
var inv = new Investment(s, y);
//passing method for delegate
Console.WriteLine("Income in risk-free investment: {0:0.00}", inv.Income(SafeScheme));
//passing lambda expression for delegate
Console.WriteLine("Income in riskful investment: {0:0.00}", inv.Income(n => 8.0f + n / 3));
