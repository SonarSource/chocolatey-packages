Install-ChocolateyZipPackage 'msbuild-sonarqube-runner' `
  -url 'https://github.com/SonarSource/sonar-msbuild-runner/releases/download/1.0/MSBuild.SonarQube.Runner-1.0.zip' `
  -unzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" `
  -checksumType 'sha1' `
  -checksum '65FF67D99F357CF7667AC9B9A4DD6B46918AD217'
