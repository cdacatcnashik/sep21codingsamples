class Server {

	public static void main(String[] args) throws Exception {
		var shop = Shop.newInstance("store.csv");
		var local = new java.net.InetSocketAddress(4000);
		var server = com.sun.net.httpserver.HttpServer.create(local, 10);
		server.createContext("/shop", client -> {
			String item = client.getRequestURI().getPath().substring(6); //http://<endpoint>/<path>
			var info = shop.find(item);
			if(info != null){
				byte[] content = info.toString().getBytes();
				client.sendResponseHeaders(200, content.length); //OK status
				var output = client.getResponseBody();
				output.write(content);
				output.close();
			}else{
				client.sendResponseHeaders(404, -1); //NOT FOUND status
			}
		});
		server.start();
	}
}


