if "%P4_HOME%" == "" goto end1
cd %P4_HOME%\services\byod
call byod.bat
pause
:end1
echo The P4_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
pause