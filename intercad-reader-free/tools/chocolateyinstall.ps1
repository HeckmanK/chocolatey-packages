$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.intercad.com/mypage/contents/download.jsp?dir=/file/program_download&Indx=4'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'interCAD Reader*'
  checksum      = '6f53e9c4a4036bed6565dcdccc8f3723b62c370e7e81e87024cd6559f9a74eff'
  checksumType  = 'sha256'
  silentArgs   = '/s /v"/qn"'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs