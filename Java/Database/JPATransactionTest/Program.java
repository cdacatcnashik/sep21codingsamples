import shopping.OrderManager;
import java.rmi.Naming;

class Program {

	public static void main(String[] args) throws Exception {
		//getting stub for OrderManager service from RMI registry
		var client = (OrderManager) Naming.lookup("rmi://localhost:6000/orderManager");
		String customerId = args[0].toUpperCase();
		if(args.length > 2){
			int productNo = Integer.parseInt(args[1]);
			int quantity = Integer.parseInt(args[2]);
			try{
				//client is a stub object which will transport any call to its remote object
				int orderNo = client.placeOrder(customerId, productNo, quantity);
				System.out.printf("New Order Number: %d%n", orderNo);
			}catch(Exception e){
				System.out.printf("Order Failed: %s%n", e.getCause().getMessage());
			}
		}else{
			var invoice = client.getOrdersOf(customerId);
			for(var entry : invoice){
				System.out.printf("%d\t%d\t%s%n", entry.getProductNo(), entry.getQuantity(), entry.getOrderDate());
			}
		}
	}
}

