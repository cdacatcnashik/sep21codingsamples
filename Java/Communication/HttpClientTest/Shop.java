import java.io.*;
import java.util.*;

record ItemInfo(double price, int stock) {

	@Override
	public String toString() {
		return String.format("price=%.2f&stock=%d", price, stock);
	}
}

class Shop {
	
	private Map<String, ItemInfo> items = new TreeMap<>();

	private Shop() {}

	public static Shop newInstance(String source) {
		var shop = new Shop();
		try(var reader = new BufferedReader(new FileReader(source))){
			String line;
			while((line = reader.readLine()) != null)
			{
				if(line.length() == 0) continue;
				String[] row = line.split(",");
				String name = row[0].toLowerCase();
				double price = Double.parseDouble(row[1]);
				int stock = Integer.parseInt(row[2]);
				shop.items.put(name, new ItemInfo(price, stock));
			}
		}catch(IOException e){
			throw new RuntimeException(e);
		}
		return shop;
	}

	public ItemInfo find(String name) {
		return items.get(name);
	}
}

