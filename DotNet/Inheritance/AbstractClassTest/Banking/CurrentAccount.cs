namespace Banking;

//sealed class cannot have derived classes
sealed class CurrentAccount : Account
{
    public override void Deposit(decimal amount)
    {
        Balance += amount;
    }

    public override void Withdraw(decimal amount)
    {
        Balance -= amount;
    }
}