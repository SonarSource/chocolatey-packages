$packageName = 'msbuild-sonarqube-runner'
$url = 'https://github.com/SonarSource/sonar-scanner-msbuild/releases/download/2.3.2.573/sonar-scanner-msbuild-2.3.2.573.zip'
$checksum = '700b62a4b87194bd1d53572130997c506660c935'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage $packageName `
  -url "$url" `
  -unzipLocation "$toolsDir" `
  -checksumType 'sha1' `
  -checksum "$checksum"
