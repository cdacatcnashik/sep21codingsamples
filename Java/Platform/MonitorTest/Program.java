class Program {

	public static void main(String[] args) throws Exception {
		JointAccount acc = new JointAccount();
		acc.deposit(10000);
		System.out.println("Joint-account opened for Jack and Jill.");
		System.out.printf("Initial balance = %d%n", acc.getBalance());
		Thread child = new Thread(() -> {
			System.out.println("Jack is withdrawing 6000...");
			if(!acc.withdraw(6000))
				System.out.println("Jack's withdraw operation failed!");
		});
		child.start();
		System.out.println("Jill is withdrawing 7000...");
		if(!acc.withdraw(7000))
			System.out.println("Jill's withdraw operation failed!");
		child.join(); //calling thread will wait for child thread to exit
		System.out.printf("final balance = %d%n", acc.getBalance());
	}
}

