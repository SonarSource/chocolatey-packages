$packageName = 'msbuild-sonarqube-runner'
$url = 'https://github.com/SonarSource/sonar-scanner-msbuild/releases/download/4.1.0.1148/sonar-scanner-msbuild-4.1.0.1148-net46.zip'
$checksum = '5bb027d5a77fa91d7a9aeada6b0c31d1314d1688'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage $packageName `
  -url "$url" `
  -unzipLocation "$toolsDir" `
  -checksumType 'sha1' `
  -checksum "$checksum"
