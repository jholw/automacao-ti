# Remove as restrições de ocultação e bloqueio da unidade H:\

$path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"

if (Test-Path "$path\NoDrives") {
    Remove-ItemProperty -Path $path -Name "NoDrives"
}

if (Test-Path "$path\NoViewOnDrive") {
    Remove-ItemProperty -Path $path -Name "NoViewOnDrive"
}

Write-Host "A unidade H:\ foi liberada e voltou a ser exibida normalmente."
