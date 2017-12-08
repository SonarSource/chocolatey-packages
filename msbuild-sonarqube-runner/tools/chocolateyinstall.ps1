$packageName = 'msbuild-sonarqube-runner'
$url = 'https://github.com/SonarSource/sonar-scanner-msbuild/releases/download/4.0.0.821/sonar-scanner-msbuild-4.0.0.821.zip'
$checksum = '139d3f990d56edfa3c171bf3858754f49f1e9bff'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage $packageName `
  -url "$url" `
  -unzipLocation "$toolsDir" `
  -checksumType 'sha1' `
  -checksum "$checksum"
