$url = "https://github.com/SonarSource-VisualStudio/sonar-msbuild-runner/releases/download/1.1/MSBuild.SonarQube.Runner-1.1.zip"
$checksum = "D9302247D6AAFAB2B76256BFC96FC8F74468B87A"

Install-ChocolateyZipPackage 'msbuild-sonarqube-runner' `
  -url '$url' `
  -unzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
  -checksumType 'sha1' `
  -checksum '$checksum'
