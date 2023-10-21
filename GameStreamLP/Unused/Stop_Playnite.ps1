$WindowTitle = "Calculator"

#$SteamRunning = Get-Process | Where-Object { $_.ProcessName -like "steam" }
#If ($SteamRunning.ProcessName -eq "steam") {
#    Stop-Process -Name Steam
#} else {
#    continue
#}

$windowFound = $true
while ($windowFound) {
    Start-Sleep -Seconds 1
    $windowFound = Get-Process | Where { $_.MainWindowTitle -eq $windowTitle }
}
Stop-Process -Name Playnite.FullscreenApp -Force
Stop-Process -Name gamestream_launchpad -Force


