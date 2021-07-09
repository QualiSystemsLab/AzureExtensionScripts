$global:logfile_location = "C:\Qualiopenwinrm.txt"
Start-Transcript -path $global:logfile_location -append
$ErrorActionPreference = "Stop"
winrm quickconfig -q
winrm set winrm/config/service @{AllowUnencrypted="true"}
