:: cd ���ű�����Ŀ¼
cd /d %~dp0
cd ../..

pause
:: ���������ļ���
xcopy src-launcher target-launcher\ /s /f /h

:: ɾ������Ҫ��java�ļ�
:: rmdir /s/q target-launcher\nicelee\test\

:: ��ȡjava�ļ��б�
cd target-launcher
dir /s /B *.java > ../sources.txt
cd ..

:: ����java
javac -encoding UTF-8 @sources.txt

:: ɾ������.java�ļ�
cd target-launcher
del /a /f /s /q  "*.java"
cd ..

:: ���
jar cvfe launch.jar nicelee.memory.App -C ./target-launcher .

echo �������ɾ����ʱ�ļ�
pause

rmdir /s/q  target-launcher\
del sources.txt
