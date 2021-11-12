package banking;

//final class cannot be subclassed
final class CurrentAccount extends Account {

	public void deposit(double amount) {
		if(balance < 0)
			amount *= 0.9; //charging 10% fine
		balance += amount;
	}

	public void withdraw(double amount) throws InsufficientFundsException{
		balance -= amount;
	}
}

