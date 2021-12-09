package shopping;

public class CounterEntity implements java.io.Serializable {

	private String name;
	private int currentValue;

	public String getName() { return name; }
	public void setName(String value) { name = value; }

	public int getCurrentValue() { return currentValue; }
	public void setCurrentValue(int value) { currentValue = value; }

	public int getNextValue() { return ++currentValue; }
}

