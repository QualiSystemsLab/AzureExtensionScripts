$global:logfile_location = "C:\Qualiopenwinrm.txt"
Start-Transcript -path $global:logfile_location -append
netsh advfirewall firewall add rule name="Open WinRM Quali" dir=in action=allow protocol=TCP localport=5985
$ErrorActionPreference = "Stop"
winrm quickconfig -quiet
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm get winrm/config
