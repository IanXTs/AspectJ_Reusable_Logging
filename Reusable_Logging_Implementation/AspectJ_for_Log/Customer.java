package Task2;

// Start of user code for imports
// End of user code

/**
 * Customer class definition.
 * Generated by the TouchCORE code generator.
 */
public class Customer {
    
    protected String name;
    
   
    public Customer(String givenName) {
        this.name = givenName;
        //String stringToLog = "Created object " + this;
        //Logger.log(stringToLog);
    }

    public String getName() {
        return this.name;
    }

    public String toString() {
        return this.name;
    }
}
