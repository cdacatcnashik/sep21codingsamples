class Program {

	public static void main(String[] args) throws Exception {
		var store = new SiteStore();
		var site = store.load("CityZoo");
		if(args.length > 0){
			String name = args[0].toLowerCase();
			var visitor = site.getVisitor(name);
			visitor.visit();
			store.save(site);
			System.out.printf("Welcome visitor, your token number is %d%n", visitor.getCurrentVisitToken());
		}else{
			for(var visitor : site.getVisitors())
				System.out.printf("%s\t%d\t%s\t%d%n", visitor.getId(), visitor.getVisitCount(), visitor.getLastVisit(), visitor.getCurrentVisitToken());
		}
	}
}

