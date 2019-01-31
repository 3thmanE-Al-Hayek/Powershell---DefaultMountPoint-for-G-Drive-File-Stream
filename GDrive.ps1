$registryPath = "HKLM:\SOFTWARE\Google\DriveFS"
$Name = "DefaultMountPoint"
$value = "B"

IF(!(Test-Path $registryPath))
    {
    New-Item -Path $registryPath -Force | Out-Null
    New-ItemProperty -Path $registryPath -Name $Name -Value $value`
    -PropertyType DWORD -Force | Out-Null}
ELSE{
New-ItemProperty -Path $registryPath -Name $Name -Value $value`
-PropertyType DWORD -Force | Out-Null}