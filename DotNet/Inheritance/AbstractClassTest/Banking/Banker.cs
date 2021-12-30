namespace Banking;

//static class can only contain static members
//and as such it does not support an instance constructor
public static class Banker
{
    private static long nid;

    //static constructor initializes the class when this class is
    //used for the first time in executing code
    static Banker()
    {
        nid = DateTime.Now.Ticks % 1000000L;
    }

    public static Account OpenCurrentAccount()
    {
        var acc = new CurrentAccount(); //var is inferred from initializer
        acc.Id = 100000000L + nid++;
        return acc;
    }

    public static Account OpenSavingsAccount()
    {
        SavingsAccount acc = new(); //initializer is inferred from declaration
        acc.Id = 200000000L + nid++;
        return acc;
    }

    //extension method - a method of a static class whose first parameter
    //is qualified with 'this' modifier, such a method can be called as
    //an instance method of its this qualified parameter type.
    public static void FreezeAccount(this Account acc)
    {
        acc.Id = -acc.Id;
    }
}