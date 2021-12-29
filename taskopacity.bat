@echo off
powershell.exe -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\%~n0.lnk');$s.TargetPath='%~f0';$s.Save()"
cls

:OPTIONS
REM Thanks to the Author!!!
REM Author: vhanla
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v TaskbarAcrylicOpacity /t REG_DWORD /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v ColorPrevalence /t REG_DWORD /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v EnableTransparency /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v SystemUsesLightTheme /t REG_DWORD /d 0 /f

tasklist /FI "IMAGENAME eq explorer.exe" /FO table
rem csv
taskkill /f /im explorer.exe && start explorer.exe
exit
