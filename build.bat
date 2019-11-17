:: Build
platformio run

@echo off

if NOT ["%errorlevel%"]==["0"] (
    pause
    exit /b %errorlevel%
)

set FILENAME=FIRMWARE.BIN

:: Rename the file to proper name for the SD card upgrade
ren ".pio\build\STM32F103RC_bigtree\firmware.bin" %FILENAME%

echo:
echo:Soon the new Explorer window will be opened with the %FILENAME% selected.
echo:Copy the selected %FILENAME% to the SD card and restart the printer to update FW.
echo:

timeout /T 5
explorer.exe /select,".pio\build\STM32F103RC_bigtree\%FILENAME%"
