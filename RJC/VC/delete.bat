@echo off
 echo 本当にアップデートを実行しますか?
 echo 今まで作成したJson(%temp%\.RJC\配下に置かれているもの)は削除されます。
 set confirm=n
 set /p confirm=Y/N:
 if not %confirm% == y exit /b
 pushd %temp%
 del delete.bat
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