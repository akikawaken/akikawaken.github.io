@echo off
 echo are you sure you want to run the update?
 echo Json created so far will be deleted. (%temp%\.RJC\*)
 set confirm=n
 set /p confirm=Y/N:
 if not %confirm% == y exit /b
 rd /S /Q %temp%\.RJC\
 set nextpath=%random%
 echo nextpath: %nextpath%
 if exist %temp%\.RJC\update\%nextpath%\RtmJsonCreator.bat set nextpath=%random%
 echo %temp%\rjcupdate.tscf‚ğì¬... [%temp%\.RJC\update\%nextpath%]
 echo %temp%\.RJC\update\%nextpath%>%temp%\rjcupdate.tscf
 echo %temp%\.RJC\update\%nextpath%\‚ğì¬...
 md %temp%\.RJC\update\%nextpath%\
 pushd %temp%\.RJC\update\%nextpath%\
 curl -sLJO https://github.com/akikawaken/Rtm_Json_Creator/releases/download/update/RtmJsonCreator.bat
 echo Update completed.
 echo Please restart RtmJsonCreator.
exit