@echo off
REM Oculta unidade H e bloqueia acesso no Explorer via Registro

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDrives /t REG_DWORD /d 128 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoViewOnDrive /t REG_DWORD /d 128 /f

echo A unidade H:\ foi ocultada e bloqueada com sucesso.
pause
