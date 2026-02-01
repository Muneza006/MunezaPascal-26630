@echo off
echo Installing Tomcat as Windows Service...

cd /d "C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93\bin"

:: Install the service
service.bat install

echo Tomcat service installed successfully!
echo You can now start/stop Tomcat using:
echo   - net start Tomcat8
echo   - net stop Tomcat8
echo   - Or use Windows Services (services.msc)
pause