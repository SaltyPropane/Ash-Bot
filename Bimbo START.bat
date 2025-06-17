@echo off
color 0C
REM Change the title of the Command Prompt window
title Syndicate Bot

REM Navigate to the directory containing the batch file
cd /d "%~dp0"

:loop
REM Start the Node.js application
node index.js

REM Check the exit code of the Node.js application
IF %ERRORLEVEL% NEQ 0 (
    echo The application crashed with exit code %ERRORLEVEL%. Restarting...
    timeout /t 5 /nobreak >nul
    goto loop
)

pause