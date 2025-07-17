# Read the contents of the existing SetupComplete.ps1 script
$scriptPath = "C:\Windows\Setup\Scripts\SetupComplete.ps1"
$scriptContent = Get-Content $scriptPath

# Filter out the lines we want to remove
$filteredContent = $scriptContent | Where-Object {
    $_ -notmatch "Start-Transcript -Path 'C:\\OSDCloud\\Logs\\SetupComplete.log' -ErrorAction Ignore" -and 
    $_ -notmatch "Stop-Transcript"
}

# Save the modified content back to the script file
$filteredContent | Set-Content $scriptPath

Write-Output "Script modification completed. Modified script saved to $scriptPath"