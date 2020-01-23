@ECHO off

ECHO 正在校验版本
git checkout -f
IF NOT %ERRORLEVEL% == 0 GOTO FAIL

ECHO.
ECHO.
ECHO 拉取远端记录...
git pull origin
IF NOT %ERRORLEVEL% == 0 GOTO FAIL

ECHO.
ECHO.
ECHO 正在检出变更...
git checkout -f
IF NOT %ERRORLEVEL% == 0 GOTO FAIL

ECHO.
ECHO.
ECHO 更新成功
GOTO FINAL

:FAIL
ECHO.
ECHO.
ECHO 更新失败

:FINAL
PAUSE