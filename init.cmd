@echo off
color 03
REM =====================================
REM   ��ʼ��web��Ŀ 0.1 Author Theowang
REM
REM =====================================
SETLOCAL ENABLEEXTENSIONS
 
echo.
echo ��ʼ��web��Ŀ 0.1 Author Theowang

:FEinit
node cmdfe "%~dpf1"
goto End


:End
ENDLOCAL
pause