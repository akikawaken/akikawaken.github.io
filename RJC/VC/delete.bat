@echo off
 echo �{���ɃA�b�v�f�[�g�����s���܂���?
 echo ���܂ō쐬����Json(%temp%\.RJC\�z���ɒu����Ă������)�͍폜����܂��B
 set confirm=n
 set /p confirm=Y/N:
 if not %confirm% == y exit /b
 pushd %temp%
 del delete.bat
 pushd %temp%
 echo %temp%\.RJC\�z�����폜��...
 rd /S /Q %temp%\.RJC\
 echo %temp%\.RJC\�z�����폜���܂����B
 set nextpath=%random%
 echo nextpath��%nextpath%�ł��B
 if exist %temp%\.RJC\update\%nextpath%\RtmJsonCreator.bat set nextpath=%random%
 echo %temp%\rjcupdate.tscf���쐬... [%temp%\.RJC\update\%nextpath%]
 echo %temp%\.RJC\update\%nextpath%>%temp%\rjcupdate.tscf
 echo %temp%\.RJC\update\%nextpath%\���쐬...
 md %temp%\.RJC\update\%nextpath%\
 pushd %temp%\.RJC\update\%nextpath%\
 curl -sLJO https://github.com/akikawaken/Rtm_Json_Creator/releases/download/update/RtmJsonCreator.bat
 echo �A�b�v�f�[�g���������܂����B
 echo RtmJsonCreator���ċN�����Ă��������B
 pushd %userprofile%
 pause
exit