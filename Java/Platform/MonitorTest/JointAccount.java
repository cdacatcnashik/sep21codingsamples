class JointAccount {

	private int balance;

	public int getBalance() { return balance; }

	public boolean withdraw(int amount) {
		boolean success = false;
		//To execute a code block synchronized over an object, a thread must acquire the lock
		//or that object's monitor. Only one thread can acquire an object's monitor at a time 
		//and other threads must wait for it to release the lock which happens at the end of
		//the synchornized block.
		synchronized(this) {
			if(balance >= amount){
				Worker.doWork(amount / 500);
				balance -= amount;
				success = true;
			}
		}
		return success;
	}
	
	public synchronized void deposit(int amount) {
		Worker.doWork(amount / 500);
		balance += amount;
		notify(); 
		//will allow any one thread waiting on this object to resume execution
		//use notifyAll() to allow all threads waiting on this object to resume their execution		  
	}

	public synchronized void withdrawAfterDeposit(int amount) throws InterruptedException {
		while(balance < amount){
			wait();
			//calling thread will release the lock of this object's monitor and wait until 
			//some other thread calls notify method of this object after which this thread
			//will reacquire the lock of this object's monitor and resume execution
		}
		withdraw(amount);
	}
}

