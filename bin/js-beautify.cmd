@echo off
color 03
REM =====================================
REM    FEinit ����
REM
REM =====================================
SETLOCAL ENABLEEXTENSIONS
 
echo.
 
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

 
set RESULT_FILE=%~n1.bea.%~x1
 
REM ����Uglify-jsѹ���ļ�
"%NODE_PATH%\node.exe" "%~dp0uglifyjs" -b "%~n1%~x1" > "%RESULT_FILE%"
echo.
echo **** ~O(��_��)O~ �����ɹ� ****
echo.
goto End 
 
:NoNodePath
echo.
echo **** ���Ȱ�װnodejs������NODE_PATH�������� ****
echo.
 
:End
ENDLOCAL
pause