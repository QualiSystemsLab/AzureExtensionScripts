$global:logfile_location = "C:\Qualiopenwinrm.txt"
Start-Transcript -path $global:logfile_location -append
$ErrorActionPreference = "Stop"
$result = winrm quickconfig -quiet
write-host $result
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
$result = winrm get winrm/config
write-host $result
