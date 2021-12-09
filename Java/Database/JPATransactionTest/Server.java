class Server {

	public static void main(String[] args) throws Exception {
		var naming = new javax.naming.InitialContext(); //this will read jndi.properties
		var pool = new oracle.jdbc.pool.OracleConnectionPoolDataSource(); //com.mysql.cj.jdbc.MysqlConnectionPoolDataSource
		pool.setURL("jdbc:oracle:thin:@//localhost/xe"); //jdbc:mysql://localhost/sales
		pool.setUser("scott");
		pool.setPassword("tiger");
		naming.rebind("jdbc/SalesDB", pool);
		naming.rebind("orderManager", new shopping.OrderManagerService());
	}
}

