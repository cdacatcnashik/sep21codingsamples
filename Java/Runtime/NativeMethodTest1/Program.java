import java.util.Arrays;

class Program {

	private native static long gcd(long first, long second);

	private native static String reverseOf(String original);

	private native static void squareAll(double[] values);
	

	public static void main(String[] args) {
		//will load libnmt.so on UNIX from directories specified in java.library.path
		System.loadLibrary("nmt");
		switch(args[0]) {
			case "gcd":
				long m = Long.parseLong(args[1]);
				long n = Long.parseLong(args[2]);
				System.out.println(gcd(m, n)); //will invoke Java_Program_gcd function of libnmt.so
				break;
			case "reverse":
				System.out.println(reverseOf(args[1]));
				break;
			case "square":
				double[] values = Arrays.stream(args)
									.skip(1)
									.mapToDouble(Double::parseDouble)
									.toArray();
				squareAll(values);
				for(double val : values)
					System.out.println(val);
				break;
		}
	}
}

