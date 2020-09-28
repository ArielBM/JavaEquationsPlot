SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_121\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd src\Analizadores
java -jar librerias\jflex-1.6.1.jar Lexico.jflex
pause



