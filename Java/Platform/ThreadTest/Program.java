class Program {

	private static ThreadLocal<String> client = new ThreadLocal<>();

	private static void handleJob(int jid) {
		System.out.printf("Thread<%x> has accepted job<%d> for %s%n", Thread.currentThread().hashCode(), jid, client.get());
		Worker.doWork(10 * jid);
		System.out.printf("Thread<%x> has finished job<%d> for %s%n", Thread.currentThread().hashCode(), jid, client.get());
	}

	public static void main(String[] args) throws Exception {
		int n = args.length > 0 ? Integer.parseInt(args[0]) : 1;
		Thread child = new Thread(() -> {
			client.set("Jack");
			handleJob(n);
		});
		child.setDaemon(n > 4); //will make child a background thread (for which JVM does not wait) if n > 4
		child.start();
		client.set("Jill");
		handleJob(2);
	}

}

