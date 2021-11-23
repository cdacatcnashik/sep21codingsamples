import java.net.*;
import java.net.http.*;

class Program {

	public static void main(String[] args) throws Exception {
		String item = args[0].toLowerCase();
		int quantity = Integer.parseInt(args[1]);
		var site = new URI("http://localhost:4000/shop/" + item);
		var client = HttpClient.newHttpClient();
		var request = HttpRequest.newBuilder()
						.uri(site)
						.GET()
						.build();
		var response = client.send(request, HttpResponse.BodyHandlers.ofString());
		if(response.statusCode() == 200){
			String[] info = response.body().split("&");
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

