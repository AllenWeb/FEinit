@echo off
color 03
REM =====================================
REM   ��ʼ��web��Ŀ 0.1 Author Theowang
REM
REM =====================================
SETLOCAL ENABLEEXTENSIONS
 
echo.
echo ��ʼ��web��Ŀ 0.1 Author Theowang



:copyFile
echo.
echo �������ݡ�����
echo.
xcopy /e "%~dp0\\init" "%~dpf1"
goto getInNewFolder 

:getInNewFolder
echo.
echo �������ݳɹ�O(��_��)O~
echo.
cd "%~dpf1"
goto createCompass 

:createCompass
compass init
echo.
echo **** ~O(��_��)O~ ��ʼ���ɹ� ****
echo.
goto End 

:End
ENDLOCAL
pause