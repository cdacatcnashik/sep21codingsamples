package shopping;

public interface OrderManager extends java.rmi.Remote {

	int placeOrder(String customerId, int productNo, int quantity) throws java.rmi.RemoteException;

	java.util.List<OrderEntity> getOrdersOf(String customerId) throws java.rmi.RemoteException;

}

