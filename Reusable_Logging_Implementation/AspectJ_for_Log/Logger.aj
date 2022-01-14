package Task2;

@interface Log{}

public aspect Logger {

    public static void log(String message) {
        System.out.println(message);
    }

    //Log for Customer Creation
    after() returning (Customer object): call(*.new(..)) && !within(Logger){
    	String stringToLog = "Task 2 Created object " + object;
        Logger.log(stringToLog);
    }
    
    //Log for Account Creation
    after() returning (Account object): call(*.new(..)) && !within(Logger){
    	String stringToLog = "Task 2 Created object " + object;
        Logger.log(stringToLog);
    }

    pointcut MethodCalled(Account object):target(object) && (call(void deposit(int)) || call(void withdraw(int)));
    before(Account object): MethodCalled(object){
    	Object[] args = thisJoinPoint.getArgs();
        String methodName = thisJoinPointStaticPart.getSignature().getName();
        String parameter = "";
        for (Object arg : args) {
        	parameter += arg.toString() + " ";
        }
        System.out.println("Task 2 "+methodName + " called on Object: " + object + " with parameter " + parameter);
    }
}