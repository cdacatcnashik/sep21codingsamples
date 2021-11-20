package tourism;

import java.util.ArrayList;

public class Site implements java.io.Serializable {

	private String name;
	private ArrayList<Visitor> visitors;

	public Site(String name) 
	{ 
		this.name = name; 
		this.visitors = new ArrayList<>();
	}

	public final String getName() { return name; }

	public final Iterable<Visitor> getVisitors() { return visitors; }

	public Visitor getVisitor(String name) {
		return visitors.stream()
					.filter(v -> v.id.equals(name))
					.findFirst()
					.orElseGet(() -> {
						var visitor = new Visitor(name);
						visitors.add(visitor);
						return visitor;
					});
	}

	static final long serialVersionUID = 1L;
}

