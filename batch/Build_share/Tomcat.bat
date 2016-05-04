echo off
if "%P4_HOME%" == "" goto end1
if "%TOMCAT_HOME%" == "" goto end2
if exist "%TOMCAT_HOME%\webapps\nextgennms.war" (
call del %TOMCAT_HOME%\webapps\nextgennms.war
echo Delete nextgennms.war Ok
)
if exist "%TOMCAT_HOME%\webapps\nextgennms" (
call rmdir /s/q %TOMCAT_HOME%\webapps\nextgennms
echo Delete nextgennms Folder Ok
)
if exist "%P4_HOME%\framework\dal\target\classes\mibs" (
call rmdir /s/q %P4_HOME%\framework\dal\target\classes\mibs
echo Delete DAL-classes-mibs Folder Ok
)
if exist "%P4_HOME%\framework\dal\target\test-classes\mibs" (
call rmdir /s/q %P4_HOME%\framework\dal\target\test-classes\mibs
echo Delete DAL-test-classes-mibs Folder Ok
)
if exist "%P4_HOME%\framework\model-dal\target\test-classes\mibs" (
call rmdir /s/q %P4_HOME%\framework\model-dal\target\test-classes\mibs
echo Delete MODEL_DAL-test-classes-mibs Folder Ok
)
if exist "%P4_HOME%\appserver\target\nextgennms.war" (
call copy %P4_HOME%\appserver\target\nextgennms.war %TOMCAT_HOME%\webapps
cd %TOMCAT_HOME%\bin
call catalina.bat jpda start
pause
)
echo  Error start Tomcat
pause
:end1
echo The P4_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
pause
:end2
echo The TOMCAT_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
pause