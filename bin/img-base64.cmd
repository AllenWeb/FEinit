@echo off
SETLOCAL ENABLEEXTENSIONS
 
REM �����ļ���׺��ֻbuild html�ļ�
if "%~x1" NEQ ".jpg" (
    if "%~x1" NEQ ".png" (
        if "%~x1" NEQ ".css" (
            if "%~x1" NEQ ".gif" (
                if "%~x1" NEQ ".jpeg" (
                    if "%~x1" NEQ ".webp" (
                        if "%~x1" NEQ ".ico" (
                            echo.
                            echo **** ��ѡ��ͼƬ����css�ļ�
                            echo.
                            goto End
                        )
                    )
                )
            )
        )
        
    )
)

if "%~x1" NEQ ".css" (
    "node.exe" "%~dp0fe" base64 "%~n1%~x1"  
) else (
    "node.exe" "%~dp0fe" base64 "%~n1%~x1" -e
)

   
 
goto End 
 
 
:End
ENDLOCAL
pause