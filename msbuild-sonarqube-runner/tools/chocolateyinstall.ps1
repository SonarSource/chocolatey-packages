$packageName = 'msbuild-sonarqube-runner'
$url = 'https://github.com/SonarSource/sonar-scanner-msbuild/releases/download/3.0.2.656/sonar-scanner-msbuild-3.0.2.656.zip'
$checksum = '59a379d79e11d5975585696bfb69e5a6f5092ea4'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage $packageName `
  -url "$url" `
  -unzipLocation "$toolsDir" `
  -checksumType 'sha1' `
  -checksum "$checksum"
