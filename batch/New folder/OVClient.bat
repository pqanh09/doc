if "%P4_HOME%" == "" goto end1
call 7z.exe -y x %P4_HOME%\services\ovclient\target\ovclient-0.0.1-SNAPSHOT-ovclient.zip -o%P4_HOME%\services\ovclient\target
cd %P4_HOME%\services\ovclient\target
call ovclient.bat
pause
:end1
echo The P4_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
pause