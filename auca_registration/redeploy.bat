@echo off
echo Recompiling and redeploying...

:: Compile Java files manually
javac -cp "C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93\lib\servlet-api.jar" -d "c:\maven_projects\auca_registration\target\classes" "c:\maven_projects\auca_registration\src\main\java\auca\ac\rw\servlet\*.java"

:: Redeploy
xcopy "c:\maven_projects\auca_registration\target\classes\*" "C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93\webapps\auca_registration\WEB-INF\classes\" /E /Y

echo Redeployment complete!
pause