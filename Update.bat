@ECHO off

ECHO ��ȡԶ�˼�¼...
git pull origin
IF NOT %ERRORLEVEL% == 0 GOTO FAIL

ECHO.
ECHO.
ECHO ���ڼ�����...
git checkout -f
IF NOT %ERRORLEVEL% == 0 GOTO FAIL

ECHO.
ECHO.
ECHO ���³ɹ�
GOTO FINAL

:FAIL
ECHO.
ECHO.
ECHO ����ʧ��

:FINAL
PAUSE