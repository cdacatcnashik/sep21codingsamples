import java.util.Scanner;
import java.util.concurrent.Executors;

class Program {
	
	public static void main(String[] args) throws Exception {
		var pool = Executors.newFixedThreadPool(2); //creates a pool with two worker threads
		var input = new Scanner(System.in);
		System.out.print("Limit (1/2): ");
		int m = input.nextInt();
		var w1 = new Computation(1, m);
		var r1 = pool.submit(w1); //assign invocation of w1.call to an available worker thread in the pool
		System.out.print("Limit (2/2): ");
		int n = input.nextInt();
		var w2 = new Computation(m + 1, n);
		var r2 = pool.submit(w2);
		System.out.print("Computing.");
		while(!(r1.isDone() && r2.isDone()))
		{
			System.out.print(".");
			System.out.flush();
			Thread.sleep(300); //calling thread is paused for 300 milliseconds
		}
		System.out.println("Done!");
		var r = r1.get() + r2.get();
		System.out.printf("Result = %d%n", r);
		pool.shutdown(); //kill the worker threads
	}
}

