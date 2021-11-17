record Student(String name, String course, float score) {}

record Teacher(String name, int experience) {}

class Program {
	
	private static void printAsXml(Student info) {
		System.out.println("<Student>");
		System.out.printf("  <name>%s</name>%n", info.name());
		System.out.printf("  <course>%s</course>%n", info.course());
		System.out.printf("  <score>%s</score>%n", info.score());
		System.out.println("</Student>");
		System.out.println();
	}
	
	private static void printAsXml(Teacher info) {
		System.out.println("<Teacher>");
		System.out.printf("  <name>%s</name>%n", info.name());
		System.out.printf("  <experience>%s</experience>%n", info.experience());
		System.out.println("</Teacher>");
		System.out.println();
	}

	public static void main(String[] args) {
		printAsXml(new Student("Jill", "C++", 83.5f));
		printAsXml(new Student("Jack", "Java", 68.0f));
		printAsXml(new Teacher("John", 9));
	}
}
