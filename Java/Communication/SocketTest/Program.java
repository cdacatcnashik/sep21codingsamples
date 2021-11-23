import java.io.*;
import java.net.*;

class Program {

	public static void main(String[] args) throws Exception {
		String item = args[0].toLowerCase();
		int quantity = Integer.parseInt(args[1]);
		String host = args.length > 2 ? args[2] : "localhost";
		var server = new Socket(host, 4000);
		var input = server.getInputStream();
		var reader = new BufferedReader(new InputStreamReader(input));
		var output = server.getOutputStream();
		var writer = new PrintWriter(new OutputStreamWriter(output));
		System.out.println(reader.readLine());
		writer.println(item);
		writer.flush();
		String text = reader.readLine();
		writer.close();
		reader.close();
		server.close();
		if(text != null){
			String[] info = text.split("&");
			double price = Double.parseDouble(info[0].substring(6));
			int stock = Integer.parseInt(info[1].substring(6));
			if(quantity <= stock)
				System.out.printf("Total Payment: %.2f%n", quantity * price);
			else
				System.out.println("Out of stock!");
		}else{
			System.out.println("Not available!");
		}
	}
}

