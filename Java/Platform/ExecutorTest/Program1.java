import java.util.Scanner;

class Program {
	
	public static void main(String[] args) throws Exception {
		var input = new Scanner(System.in);
		System.out.print("Limit (1/2): ");
		int m = input.nextInt();
		var w1 = new Computation(1, m);
		var r1 = w1.call();
		System.out.print("Limit (2/2): ");
		int n = input.nextInt();
		var w2 = new Computation(m + 1, n);
		var r2 = w2.call();
		var r = r1 + r2;
		System.out.printf("Result = %d%n", r);
	}
}

