@echo off
pushd %temp%
echo %temp%\.RJC\配下を削除中...
rd /S /Q %temp%\.RJC\
echo %temp%\.RJC\配下を削除しました。
set nextpath=%random%
echo nextpathは%nextpath%です。
if exist %temp%\.RJC\update\%nextpath%\RtmJsonCreator.bat set nextpath=%random%
echo %temp%\rjcupdate.tscfを作成... [%temp%\.RJC\update\%nextpath%]
echo %temp%\.RJC\update\%nextpath%>%temp%\rjcupdate.tscf
echo %temp%\.RJC\update\%nextpath%\を作成...
md %temp%\.RJC\update\%nextpath%\
pushd %temp%\.RJC\update\%nextpath%\
curl -sLJO https://github.com/akikawaken/Rtm_Json_Creator/releases/download/update/RtmJsonCreator.bat
echo アップデートが完了しました。
echo RtmJsonCreatorを再起動してください。
pushd %userprofile%
pause
exit