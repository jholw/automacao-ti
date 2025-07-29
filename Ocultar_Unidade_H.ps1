# Ocultar e bloquear unidade H:\ para o usuário atual

$path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
New-Item -Path $path -Force | Out-Null

# Oculta H:
New-ItemProperty -Path $path -Name "NoDrives" -Value 128 -PropertyType DWord -Force

# Impede acesso à H:
New-ItemProperty -Path $path -Name "NoViewOnDrive" -Value 128 -PropertyType DWord -Force

Write-Host "Unidade H:\ oculta e protegida com sucesso."
