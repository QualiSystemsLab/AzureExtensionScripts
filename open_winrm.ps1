$global:logfile_location = "C:\Qualiopenwinrm.txt"
Start-Transcript -path $global:logfile_location -append
$ErrorActionPreference = "Stop"
winrm quickconfig -quiet
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm get winrm/config
write-host
