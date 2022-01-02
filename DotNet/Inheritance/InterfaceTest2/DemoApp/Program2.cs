using Taxation;

class Auditor : IDisposable
{
    public Auditor()
    {
        Console.WriteLine("Acquiring deparmental resources.");
    }

    public void Audit(string id, ITaxPayer payer)
    {
        if(id.Length < 4)
            throw new ArgumentException("Invalid ID");
        Console.WriteLine("{0} has to pay {1:0.00} as income tax", id, payer.IncomeTax() + 500);
    }

    public void Dispose()
    {
        Console.WriteLine("Releasing deparmental resources.");
    }
}

class Program
{
    private static void ProcessDealer(Dealer d)
    {
        var a = new Auditor();
        a.Audit("Jack", d); //dealer will be converted to ITaxPayer through boxing
        a.Dispose();
    }

    private static void ProcessWorker(Worker w, string name)
    {
        using(var a = new Auditor())
        {
            a.Audit(name, w);
        }

    }

    static void Main(string[] args)
    {
        try
        {
            decimal amount = decimal.Parse(args[0]);
            if(args.Length < 2)
            {
                Dealer d;
                d.TotalSales = amount;
                ProcessDealer(d);
            }
            else
            {
                Worker w;
                w.MonthlyWages = amount;
                ProcessWorker(w, args[1]);
            }
        }   
        catch(Exception ex)
        {
            Console.WriteLine("Error: {0}", ex.Message);
        }    
    }
}