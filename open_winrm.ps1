winrm quickconfig -q
winrm set winrm/config/service @{AllowUnencrypted="true"}
