@echo off
color 03
REM =====================================
REM    FEinit ѹ��
REM
REM =====================================
SETLOCAL ENABLEEXTENSIONS
 
echo.
echo Uglify-js v1.2.6
 
REM �����ļ���׺��ֻѹ��js��css
if "%~x1" NEQ ".js" (
    echo.
    echo **** ��ѡ��JS�ļ�
    echo.
    goto End
)
 
REM ���NODE_PATH
if "%NODE_PATH%" == "" goto NoNodePath
if not exist "%NODE_PATH%\node.exe" goto NoNodePath

 
copy %~n1%~x1 %~n1.dev%~x1
set RESULT_FILE=%~n1%~x1
 
REM ����Uglify-jsѹ���ļ�
"%NODE_PATH%\node.exe" "%~dp0uglifyjs"  --ascii -nc "%~n1.dev%~x1" > "%RESULT_FILE%"
echo.
echo **** ~O(��_��)O~ ѹ���ɹ� ****
echo.
goto End 
 
:NoNodePath
echo.
echo **** ���Ȱ�װnodejs������NODE_PATH�������� ****
echo.
 
:End
ENDLOCAL
pause