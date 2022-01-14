package AnimalAndLog;

public class Owner {

  protected String name;
  protected String greeting;

  @Log
  public Owner(String givenName) {
      this.name = givenName;
  }

  @Log
  public void greet(String aGreeting) {
      this.greeting = aGreeting;
  }

  public String toString() {
      return this.name;
  }
}
