
package AnimalAndLog;

@interface Log{}
//created and interface to make Log reusable

public aspect Logger {

    public static void log(String message) {
        System.out.println(message);
    }

    //Log when object is created
    after() returning (Object object): call(*.new(..)) && @annotation(Log) {
        String stringToLog = ("Created object " + object);
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
        System.out.println(methodName + " called on object " + object + " with parameter " + parameter);
    }

}
