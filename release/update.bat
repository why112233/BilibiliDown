@echo off
:: �л�����ǰ�ļ�Ŀ¼
cd /d %~dp0
echo �ȴ�����ر�
timeout 3

:: �������pid���ҽ�����Ȼ���ڣ���ôǿ����ֹ�ý���
set pid=%2
if "%pid%"=="" goto :download_and_unzip_jar
echo ����pid%pid%
tasklist|findstr /i "%pid% " || goto :copy
echo ǿ����ֹ����
taskkill /F /PID %pid%
goto :copy

:: ���û�д���pid��˵�����˹����ã���ʱ�������°�����ѹ
:download_and_unzip_jar
set Path=%~dp0minimal-bilibilidown-jre\bin\;%Path%
set Path=%~dp0runtime\bin\;%Path%
java -Dfile.encoding=utf-8 -cp INeedBiliAV.jar nicelee.bilibili.util.VersionManagerUtil
if "%errorlevel%"=="1" (echo ���³ɹ� &goto :copy)
if "%errorlevel%"=="0" (echo ��ǰ�������°汾 &goto :end_pause)
if "%errorlevel%"=="-1" (echo δ�ܸ��³ɹ� &goto :end_pause)

:copy
:: �����ļ�(����ʾֱ�Ӹ���)
copy /Y "update\INeedBiliAV.update.jar" "INeedBiliAV.jar"

if "%1"=="0" (echo ������ &goto :end_pause) else (echo ���º����� &goto :runApp)

:runApp
:: ���г���
start javaw -Dfile.encoding=utf-8 -jar INeedBiliAV.jar

:end

exit

:end_pause
pause