# Definir la ruta de configuración
$configDir = "$env:LOCALAPPDATA\dnc"

# Crear el directorio de configuración
if (-not (Test-Path $configDir)) {
    New-Item -ItemType Directory -Path $configDir | Out-Null
}

# Copiar archivos necesarios
Copy-Item -Path ".\init.lua" -Destination $configDir
Copy-Item -Path ".\lua" -Destination $configDir -Recurse
Copy-Item -Path ".\bin" -Destination $configDir -Recurse

# Hacer que el script dnvim.bat sea ejecutable (no es necesario en Windows, pero lo marcamos como ejecutable)
$dncPath = "$configDir\bin\dnc.bat"
if (Test-Path $dncPath) {
    Set-ItemProperty -Path $dncPath -Name IsReadOnly -Value $false
}

# Agregar al PATH del usuario
$binPath = "$configDir\bin"
$userPath = [Environment]::GetEnvironmentVariable('Path', 'User')

if ($userPath -notmatch [Regex]::Escape($binPath)) {
    [Environment]::SetEnvironmentVariable('Path', "$userPath;$binPath", 'User')
    Write-Host "dnc (DeltanvimC) has been added to your PATH. Please restart your terminal."
} else {
    Write-Host "dnc (DeltanvimC) is already in your PATH."
}
