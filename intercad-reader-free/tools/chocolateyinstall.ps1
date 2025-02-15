$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.intercad.com/member/download.jsp?dir=/file/program_download&Indx=4'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'interCAD Reader*'
  checksum      = '928CDC95903745CC909611379E9CDE7ADDDC088071F4F52A941C49DE31748AB6'
  checksumType  = 'sha256'
  silentArgs   = '/s /v"/qn"'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs