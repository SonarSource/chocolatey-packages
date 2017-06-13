$packageName = 'msbuild-sonarqube-runner'
$url = 'https://github.com/SonarSource/sonar-scanner-msbuild/releases/download/3.0.0.629/sonar-scanner-msbuild-3.0.0.629.zip'
$checksum = '46d8510aeafe1a6cc2cd11853f6725eede487d1f'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage $packageName `
  -url "$url" `
  -unzipLocation "$toolsDir" `
  -checksumType 'sha1' `
  -checksum "$checksum"
