@echo off
echo Ŀ���ļ���Ϊ�� %~dp0
echo �ýű�����ɾ���ļ����µ������ļ�
set/p option=����ж���밴yȷ��:
if "%option%"=="y" echo ��������y &goto :unistall
if "%option%"=="Y" echo ��������Y &goto :unistall
echo ��������%option% &goto :end

:unistall
rd /s /q  "%~dp0"
:end