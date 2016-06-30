$packageName = 'msbuild-sonarqube-runner'
$url = 'https://github.com/SonarSource-VisualStudio/sonar-msbuild-runner/releases/download/2.1/MSBuild.SonarQube.Runner-2.1.zip'
$checksum = '0B0FF3C391149187524DF99E751AD49539949A50'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage $packageName `
  -url "$url" `
  -unzipLocation "$toolsDir" `
  -checksumType 'sha1' `
  -checksum "$checksum"
