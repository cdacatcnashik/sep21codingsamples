import java.sql.*;

class Program {

	public static void main(String[] args) throws Exception {
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost/sales", "dbpro", "Dbpro@789");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost/xe", "scott", "tiger");
		Statement stmt = con.createStatement();
		if(args.length == 0){
			ResultSet rs = stmt.executeQuery("select pno, price, stock from products");
			while(rs.next())
				System.out.printf("%d\t%.2f\t%d%n", rs.getInt(1), rs.getDouble(2), rs.getInt("stock"));
			rs.close();
		}else{
			int n = stmt.executeUpdate("update products set stock=stock+5 where pno=" + Integer.parseInt(args[0]));
			System.out.printf("Number of products updated = %d%n", n);
		}
		stmt.close();
		con.close();
	}
}

