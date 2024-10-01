@echo off
 :hogehoge
 echo;
 echo are you sure you want to run the update?
 echo Json created so far will be deleted. (%temp%\.RJC\*)
 echo;
 echo Press "r" to view the release notes (in Japanese)
 set confirm=n
 set /p confirm=Y/N/R:
 if %confirm% == r goto release
 if not %confirm% == y exit /b
 rd /S /Q %temp%\.RJC\json
 rd /S /Q %temp%\.BatchSelectorUI
 del /q %temp%\.RJC\rjc.tscf
 del /q %temp%\.RJC\OSC.tscf
 set nextpath=%random%
 echo nextpath: %nextpath%
 if exist %temp%\.RJC\update\%nextpath%\RtmJsonCreator.bat set nextpath=%random%
 echo %temp%\.RJC\update\%nextpath%>%temp%\rjcupdate.tscf
 md %temp%\.RJC\update\%nextpath%\
 pushd %temp%\.RJC\update\%nextpath%\
 curl -sLJO https://github.com/akikawaken/Rtm_Json_Creator/releases/download/update/RtmJsonCreator.bat
 echo Update completed.
 pause
 start %temp%\.RJC\update\%nextpath%\RtmJsonCreator.bat
exit
:release
 curl https://akikawaken.github.io/RJC/Version/v2/Releasenote.txt
 goto hogehoge