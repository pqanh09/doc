if "%MONGODB_HOME%" == "" goto end1
cd %MONGODB_HOME%
call start.bat
pause
:end1
echo The MONGODB_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
pause