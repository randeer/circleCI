@echo off

REM Stop IIS
iisreset /stop

REM Delete the existing rashmika folder
rmdir /s /q "C:\inetpub\wwwroot\rashmika"

REM Move the rashmika folder from C:\SMB to C:\inetpub\wwwroot\
move "C:\SMB\rashmika" "C:\inetpub\wwwroot\"

REM Start IIS
iisreset /start

echo Batch script completed.
