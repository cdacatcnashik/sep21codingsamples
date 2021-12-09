import shopping.ProductEntity;
import javax.persistence.Persistence;

class Program {

	public static void main(String[] args) throws Exception {
		var emf = Persistence.createEntityManagerFactory("ShopPU");
		var em = emf.createEntityManager();
		if(args.length == 0){
			var query = em.createQuery("SELECT p FROM ProductEntity p WHERE p.stock > 0", ProductEntity.class);
			for(var i : query.getResultList())
				System.out.printf("%d\t%.2f\t%d%n", i.getProductNo(), i.getPrice(), i.getStock());
		}else{
			int id = Integer.parseInt(args[0]);
			var product = em.find(ProductEntity.class, id);
			if(product != null){
				for(var i : product.getOrders())
					System.out.printf("%s\t%d\t%s%n", i.getCustomerId(), i.getQuantity(), i.getOrderDate());
			}
		}
		em.close();
	}
}

