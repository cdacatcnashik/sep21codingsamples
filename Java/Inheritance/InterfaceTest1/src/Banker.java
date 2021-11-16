package banking;

//factory class
public class Banker {

	private static long nid;

	//static initializer is code block which executes once when the class is loaded
	//it is used for initializing static fields of the class
	static {
		nid = System.currentTimeMillis() % 1000000;
	}

	public static Account openCurrentAccount() {
		Account acc = new CurrentAccount();
		acc.id = 10000000L + nid++;
		return acc;
	}

	public static Account openSavingsAccount() {
		Account acc = new SavingsAccount();
		acc.id = 20000000L + nid++;
		return acc;
	}
}

