@echo off
echo Setting up Tomcat environment variables...

:: Set CATALINA_HOME to the correct path
setx CATALINA_HOME "C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93" /M

:: Add Tomcat bin to PATH
for /f "tokens=2*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v PATH') do set "currentPath=%%b"
setx PATH "%currentPath%;C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93\bin" /M

echo CATALINA_HOME set to: C:\Program Files\Tomcat\apache-tomcat-8.5.93-windows-x64\apache-tomcat-8.5.93
echo Tomcat bin added to PATH
echo Environment variables set successfully!
echo Please restart your command prompt or system for changes to take effect.
pause