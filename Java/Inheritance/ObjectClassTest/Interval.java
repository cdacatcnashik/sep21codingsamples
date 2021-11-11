//a class declared without an explict superclass implicitly extends java.lang.Object class1
class Interval {

	private int min, sec;

	public Interval(int m, int s) {
		min = m + s / 60;
		sec = s % 60;
	}

	public int minutes() { return min; }

	public int seconds() { return sec; }

	public int time() { return 60 * min + sec; }

	//overriding toString method of java.lang.Object to return string representation of this object
	public String toString() {
		return String.format("%d:%02d", min, sec);
	}

	public int hashCode() {
		return min + sec;
	}

	public boolean equals(Object other) {
		if(other instanceof Interval that)
			return (this.min == that.min) && (this.sec == that.sec);
		return false;
	}

}

