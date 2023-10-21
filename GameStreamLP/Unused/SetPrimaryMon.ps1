$WindowTitle = "Playnite"

$exePath = "C:\GameStreamLP\gamestream_launchpad\MultiMonitorTool.exe"

$arguments = "/SetPrimary \\.\DISPLAY1"
#$arguments2 = "/disable \\.\DISPLAY3"

$windowFound = $true
while ($windowFound) {
    Start-Sleep -Seconds 1
    $windowFound = Get-Process | Where { $_.MainWindowTitle -eq $windowTitle }
}
Start-Process -FilePath $exePath -ArgumentList $arguments
#Start-Process -FilePath $exePath -ArgumentList $arguments2