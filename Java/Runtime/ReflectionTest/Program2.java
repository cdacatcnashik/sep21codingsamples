record Student(String name, String course, float score) {}

record Teacher(String name, int experience) {}

class Program {
	
	private static void printAsXml(Object info) {
		Class<?> c = info.getClass();
		System.out.printf("<%s>%n", c.getName());
		for(var f : c.getDeclaredFields()){
			System.out.printf("  <%s>", f.getName());
			try{
				f.setAccessible(true);
				System.out.printf("%s", f.get(info));
			}catch(Exception e){
				System.out.print(e);
			}
			System.out.printf("</%s>%n", f.getName());
		}
		System.out.printf("</%s>%n", c.getName());
		System.out.println();
	}
	
	public static void main(String[] args) {
		printAsXml(new Student("Jill", "C++", 83.5f));
		printAsXml(new Student("Jack", "Java", 68.0f));
		printAsXml(new Teacher("John", 9));
	}
}
