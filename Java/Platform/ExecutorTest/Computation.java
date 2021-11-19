class Computation implements java.util.concurrent.Callable<Long> {

	private int first, last;

	public Computation(int first, int last) {
		this.first = first;
		this.last = last;
	}

	public Long call() {
		if(last < first)
			return null;
		long sum = 0;
		for(int i = first; i <= last; ++i)
			sum += doWork(i);
		return sum;
	}

	public static int doWork(int count) {
		long t = System.currentTimeMillis() + 100 * count;
		while(System.currentTimeMillis() < t);
		return count * count;
	}
}

