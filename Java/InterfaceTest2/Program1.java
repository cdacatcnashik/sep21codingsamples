import taxation.*;

class Auditor {

	Auditor() {
		System.out.println("Acquiring departmental resources");
	}

	public void audit(TaxPayer person, String id) {
		if(id.length() < 4)
			throw new IllegalArgumentException("Invalid ID");
		System.out.printf("%s has to pay %.2f as income tax%n", id, person.incomeTax());
	}

	public void close() {
		System.out.println("Releasing departmental resources");
	}
}

class Program {

	private static void processDealer(double sales) {
		var d = new Dealer(sales);
		var a = new Auditor();
		a.audit(d, "Jack");
		a.close();
	}

	private static void processWorker(double wages, String name) {
		var w = new Worker(wages);
		var a = new Auditor();
		try{
			a.audit(w, name);
		}finally{
			a.close(); //finally block executes no matter what happens in try block
		}
		
	}

	public static void main(String[] args) {
		try{
			double earn = Double.parseDouble(args[0]);
			if(args.length < 2)
				processDealer(earn);
			else
				processWorker(earn, args[1]);
		}catch(Exception e){
			System.out.printf("Error: %s%n", e);
		}
	}
}

