$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'explorerpp_x86.zip'
$fileLocation64 = Join-Path $toolsDir 'explorerpp_x64.zip'

$packageArgs = @{
  FileFullPath   = $fileLocation
  Destination    = $toolsDir
  packageName    = $env:ChocolateyPackageName
  FileFullPath64 = $fileLocation64
}

Get-ChocolateyUnzip @packageArgs