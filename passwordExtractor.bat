@echo off
setlocal enabledelayedexpansion

rem Change code page to UTF-8 for proper character handling
chcp 65001

rem Retrieve the list of WLAN profiles and save it to temp
netsh wlan show profiles > temp
set "filename=temp"

rem Create or clear the output file
> wifiPassword.txt (
    echo Wi-Fi Keys
    echo =====================
)

rem Loop through each profile name in the file
for /f "tokens=2 delims=:" %%a in ('type "%filename%" ^| find ":"') do (
    set "line=%%a"
    set "line=!line:~1!"  rem Remove leading whitespace
    
    rem Retrieve the details for each WLAN profile and include password if it exists
    echo Profile: !line! >> wifiPassword.txt
    netsh wlan show profiles name="!line!" key=clear | findstr /C:"SSID" /C:"Key Content" >> wifiPassword.txt
    echo. >> wifiPassword.txt  
    @echo off
)

rem Clean up the temp file
del temp

echo Wi-Fi keys have been saved to wifiPassword.txt
endlocal
