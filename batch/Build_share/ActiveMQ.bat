if "%ACTIVEMQ_HOME%" == "" goto end1
cd %ACTIVEMQ_HOME%\bin
call activemq.bat
pause
:end1
echo The ACTIVEMQ_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
pause