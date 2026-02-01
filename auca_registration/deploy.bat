@echo off
echo Deploying auca_registration to Tomcat...

:: Create webapp directory
mkdir "C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93\webapps\auca_registration"
mkdir "C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93\webapps\auca_registration\WEB-INF"
mkdir "C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93\webapps\auca_registration\WEB-INF\classes"

:: Copy web files
xcopy "c:\maven_projects\auca_registration\src\main\webapp\*" "C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93\webapps\auca_registration\" /E /Y

:: Copy compiled classes
xcopy "c:\maven_projects\auca_registration\target\classes\*" "C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93\webapps\auca_registration\WEB-INF\classes\" /E /Y

echo Deployment complete!
echo Access your app at: http://localhost:8080/auca_registration/
pause