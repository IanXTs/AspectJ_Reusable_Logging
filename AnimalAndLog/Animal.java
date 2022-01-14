package AnimalAndLog;

public class Animal {
	private String aSound;
	private String aName;

	@Log
	public Animal(String name, String sound) {
		aName = name;
		aSound = sound;
	}

	@Log
	public void displayName(String name) {
		aName = aName + name;
	}

	@Log
	public void hearSound(int times) {
		 aSound = aSound + times;
	}

  public String toString() {
		return aName;
	}

	public static void main(String[] args) {
		Animal cow = new Animal("Cow","mumumu");
		Owner simon = new Owner("Simon");

		cow.hearSound(1);
		cow.displayName("aaa");
		simon.greet("hello");
	}
}
