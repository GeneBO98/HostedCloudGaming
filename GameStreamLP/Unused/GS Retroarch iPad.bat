@ECHO OFF
start /MIN MultiMonitorTool.exe /Enable \\.\DISPLAY3
timeout /t 1
start /MIN MultiMonitorTool.exe /SetPrimary \\.\DISPLAY3
timeout /t 1
start /MIN gamestream_launchpad.exe 2048 1536 gamestream_retroarch.ini
timeout /t 3
powershell -ExecutionPolicy Bypass -File "Stop_Playnite.ps1"
timeout /t 1
powershell -ExecutionPolicy Bypass -File "SetPrimaryMon.ps1" 