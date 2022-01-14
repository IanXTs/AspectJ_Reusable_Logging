Tested and ran out code in MacOs:

1. Installed aspects-1.9.0.jar on Desktop. 

2. Modified the PATH by 'export PATH=$HOME/aspectj1.9/bin/:$PATH'

3. Used command 'export CLASSPATH=$HOME/aspectj1.9/lib/aspectjrt.jar:$CLASSPATH' command to include aspectjrt.jar on the class path.

Here are the steps to run our codes from command line. Make sure you are in FinalSubmission folder.


Task4:
1. ajc -1.5 AnimalAndLog/*.java AnimalAndLog/*.aj
2. java AnimalAndLog.Animal
