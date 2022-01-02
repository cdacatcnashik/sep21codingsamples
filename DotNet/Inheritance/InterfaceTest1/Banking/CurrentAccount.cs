namespace Banking;

//sealed class cannot have derived classes
sealed class CurrentAccount : Account, IFineable
{
    public override void Deposit(decimal amount)
    {
        Balance += amount;
    }

    public override void Withdraw(decimal amount)
    {
        Balance -= amount;
    }

    //explicit interface implementation
    bool IFineable.Withdraw(decimal fine)
    {
        if(Balance < 0)
        {
            Balance -= fine;
            return true;
        }
        return false;
    }
}