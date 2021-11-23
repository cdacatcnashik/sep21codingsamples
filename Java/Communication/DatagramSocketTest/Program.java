import java.net.*;
import java.util.*;

class Program {

	public static void main(String[] args) throws Exception {
		String[] symbols = {"APPL", "GOGL", "INTC", "MSFT", "ORCL"};
		var rdm = new Random();
		var publisher = new DatagramSocket();
		var group = InetAddress.getByName("230.0.0.1"); //class-D address (224-239.*.*.*)
		for(;;){
			int i = rdm.nextInt(symbols.length);
			double p = 0.01 * (1000 + rdm.nextInt(9000));
			String message = String.format("%s - %.2f", symbols[i], p);
			var packet = new DatagramPacket(message.getBytes(), message.length(), group, 4001);
			publisher.send(packet);
			Thread.sleep(5000);
		}
	}

}

