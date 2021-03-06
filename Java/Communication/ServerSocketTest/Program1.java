import java.io.*;
import java.net.*;

class Program {

	public static void main(String[] args) throws Exception {
		var listener = new ServerSocket(4000);
		service(listener);
	}

	private static void service(ServerSocket server) throws IOException {
		var shop = Shop.newInstance("store.csv");
		for(;;){
			var client = server.accept();
			var input = client.getInputStream();
			var reader = new BufferedReader(new InputStreamReader(input));
			var output = client.getOutputStream();
			var writer = new PrintWriter(new OutputStreamWriter(output), true);
			client.setSoTimeout(60000);
			try{
				writer.println("Welcome to CitiDigital");
				String item = reader.readLine();
				var info = shop.find(item);
				if(info != null)
					writer.println(info);
			}catch(Exception e){}
			writer.close();
			reader.close();
			client.close();
		}
	}
}

