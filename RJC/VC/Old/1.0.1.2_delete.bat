@echo off
 echo are you sure you want to run the update?
 echo Json created so far will be deleted. (%temp%\.RJC\*)
 set confirm=n
 set /p confirm=Y/N:
 if not %confirm% == y exit /b
 rd /S /Q %temp%\.RJC\json
 del /q %temp%\.RJC\rjc.tscf
 del /q %temp%\.RJC\OSC.tscf
 echo;>%temp%\rjcversion.tscf
 set nextpath=%random%
 echo nextpath: %nextpath%
 echo %temp%\.RJC\update\%nextpath%\rtm-json-creator-v1.0.1.2.bat>%temp%\rjcupdate.tscf
 md %temp%\.RJC\update\%nextpath%\
 pushd %temp%\.RJC\update\%nextpath%\
 curl -sLJO https://github.com/akikawaken/Rtm_Json_Creator/releases/download/v1.0.1/rtm-json-creator-v1.0.1.2.bat
 echo Update completed.
 timeout /t 3>nul
 call %temp%\.RJC\update\%nextpath%\rtm-json-creator-v1.0.1.2.bat
exit /b