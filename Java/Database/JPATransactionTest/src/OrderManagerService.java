package shopping;

import java.util.List;
import java.rmi.RemoteException;
import javax.persistence.Persistence;

public class OrderManagerService extends java.rmi.server.UnicastRemoteObject implements OrderManager {

	public OrderManagerService() throws RemoteException {
		super(); // exports this object
	}

	public int placeOrder(String customerId, int productNo, int quantity) throws RemoteException {
		var emf = Persistence.createEntityManagerFactory("ShopPU");
		var em = emf.createEntityManager();
		try{
			var tx = em.getTransaction();
			tx.begin();
			var counter = em.find(CounterEntity.class, "orders");
			var order = new OrderEntity();
			order.setOrderNo(counter.getNextValue() + 1000);
			order.setOrderDate(new java.util.Date());
			order.setCustomerId(customerId);
			order.setProductNo(productNo);
			order.setQuantity(quantity);
			em.persist(order);
			tx.commit(); //write all modified entities to database in an atomic manner 
			return order.getOrderNo();
		}finally{
			em.close();
		}
	}

	public List<OrderEntity> getOrdersOf(String customerId) throws RemoteException {
		var emf = Persistence.createEntityManagerFactory("ShopPU");
		var em = emf.createEntityManager();
		try{
			var query = em.createQuery("SELECT e FROM OrderEntity e WHERE e.customerId = ?1", OrderEntity.class);
			query.setParameter(1, customerId);
			return query.getResultList();
		}finally{
			em.close();
		}
	}
}

