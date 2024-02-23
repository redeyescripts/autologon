Set WshShell = WScript.CreateObject("WScript.Shell")

' Set your username, password, and domain
username = "NAME"
password = "PASS"
domain = "AD DS NAME"

' Update registry keys for auto-login
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon", "1", "REG_SZ"
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultUserName", username, "REG_SZ"
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultPassword", password, "REG_SZ"
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultDomainName", domain, "REG_SZ"

' Restart the computer to apply changes
' WshShell.Run "shutdown.exe -r -t 0", 0, False
