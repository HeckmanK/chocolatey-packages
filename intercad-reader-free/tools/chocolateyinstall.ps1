$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.intercad.com/mypage/contents/download.jsp?dir=/file/program_download&Indx=4'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'interCAD Reader*'
  checksum      = '8c37ad6ff75ca9d128bd381d55e1c3f0f1477b31a398fcf47270f9d9efbc16e1'
  checksumType  = 'sha256'
  silentArgs   = '/s /v"/qn"'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs