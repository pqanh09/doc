if "%P4_HOME%" == "" goto end1
if "%TOMCAT_HOME%" == "" goto end2
call del %TOMCAT_HOME%\webapps\nextgennms.war
call rmdir /s/q %TOMCAT_HOME%\webapps\nextgennms
call copy %P4_HOME%\appserver\target\nextgennms.war %TOMCAT_HOME%\webapps
cd %TOMCAT_HOME%\bin
call catalina.bat jpda start
pause
:end1
echo The P4_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
pause
:end2
echo The TOMCAT_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
pause