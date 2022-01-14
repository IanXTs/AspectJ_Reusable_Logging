package Task3;

@interface Log{}
//created and interface to make Log reusable

public aspect Logger {

    public static void log(String message) {
        System.out.println(message);
    }

    //Log when object is created
    after() returning (Object object): call(*.new(..)) && !within(Logger) && @annotation(Log) {
        String stringToLog = ("Task 3 Created object " + object);
        Logger.log(stringToLog);
    }

    //Log when method is called: return method name and its parameter
    pointcut MethodCalled(Object object): execution(* *(..)) && @annotation(Log) && target(object);
    before(Object object) : MethodCalled(object) {
        Object[] args = thisJoinPoint.getArgs();
        String methodName = thisJoinPointStaticPart.getSignature().getName();
        String parameter = "";
        for (Object arg : args) {
        	parameter += arg.toString() + " ";
        }
        System.out.println("Task 3 "+ methodName + " called on Object: " + object + " with parameter " + parameter);
    }

}