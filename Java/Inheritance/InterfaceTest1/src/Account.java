package banking;

//abstract class does not support creation of new instances
//it is defined to serve as a superclass to other classes
public abstract class Account {

	long id;
	protected double balance;

	public long getId() { return id; }

	public double getBalance() { return balance; }

	//abstract (pure) method  must be overridden by a subclass
	//which supports creation of instances
	public abstract void deposit(double amount);

	public abstract void withdraw(double amount) throws InsufficientFundsException;

	//final method cannot be overridden in the subclass
	//and as such runtime can invoke it using static binding which is faster
	public final void transfer(double amount, Account other) throws InsufficientFundsException, IllegalTransferException {
		if(other == this)
			throw new IllegalTransferException();
		this.withdraw(amount);
		other.deposit(amount);
	}
}

