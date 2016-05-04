if "%P4_HOME%" == "" goto end1
cd %P4_HOME%\framework\dal
call mvn clean
call mvn clean install -Dtest
cd %P4_HOME%\framework\model-dal
call mvn eclipse:eclipse
call mvn clean install -Dtest
cd %P4_HOME%\services\byod
call mvn eclipse:eclipse
call mvn clean install -Dtest
cd %P4_HOME%
call mvn eclipse:eclipse
call rmdir /s/q %P4_HOME%\framework\dal\target\test-classes\mibs
call rmdir /s/q %P4_HOME%\framework\model-dal\target\test-classes\mibs
pause
:end1
echo The P4_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
pause