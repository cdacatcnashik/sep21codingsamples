import finance.MaxDuration;
import java.lang.reflect.Method;

/*
 * Class.forName uses built-in class-loader by default to create an instance of java.lang.Class
 * ftom the specified fully-qualified name of a type. This class-loader reads the binary
 * representation of a type identified by name p.T from path p/T.class which it looks for
 * in each location (directory or archive) indicated by the class-path property (which
 * defaults to current directory) of the JVM.
*/

class Program {

	public static void main(String[] args) throws Exception {
		double p = Double.parseDouble(args[0]);
		Class<?> c = Class.forName(args[1]);
		Object scheme = c.getConstructor().newInstance();
		Method option = c.getMethod(args[2], double.class, int.class);
		MaxDuration md = option.getAnnotation(MaxDuration.class);
		int m = md != null ? md.value() : 10;
		for(int n = 1; n <= m; ++n){
			float r = (float)option.invoke(scheme, p, n); //late binding
			float i = r / 1200;
			double emi = p * i / (1 - Math.pow(1 + i, -12 * n));
			System.out.printf("%d\t%.2f%n", n, emi);
		}
	}
}


