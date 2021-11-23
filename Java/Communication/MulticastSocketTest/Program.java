import java.net.*;

class Program {

	public static void main(String[] args) throws Exception {
		var subscriber = new MulticastSocket(4001);
		var addr = new InetSocketAddress("230.0.0.1", 0);
		subscriber.joinGroup(addr, null);
		var packet = new DatagramPacket(new byte[65507], 65507);
		for(int i = 0; i < 5; ++i){
			subscriber.receive(packet);
			String message = new String(packet.getData(), 0, packet.getLength());
			System.out.println(message);
		}
		subscriber.leaveGroup(addr, null);
		subscriber.close();
	}
}

