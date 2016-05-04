if "%P4_HOME%" == "" goto end1
call 7z.exe -y x %P4_HOME%\services\licensing\target\licensing.service-0.0.1-SNAPSHOT-licensing.zip -o%P4_HOME%\services\licensing\target
call copy %P4_HOME%\services\licensing\license.dat %P4_HOME%\services\licensing\target
cd %P4_HOME%\services\licensing\target
call licensing.bat
pause
:end1
echo The P4_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
pause