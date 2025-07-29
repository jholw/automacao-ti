@echo off
REM Remove as configurações de ocultação e bloqueio da unidade H

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDrives /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoViewOnDrive /f

echo A unidade H:\ foi liberada e voltou a ser exibida normalmente.
pause
