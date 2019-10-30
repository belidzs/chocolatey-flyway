$version = '6.0.8'
$packageName = 'flyway'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/$version/flyway-commandline-$version.zip"
$checksumType = 'sha256'
$checksum = '9fdad254aec2cb42bc33970fd992f3147357e10b655dfc57bffb4dbb64a9df29'
Install-ChocolateyZipPackage $packageName $url $toolsDir -Checksum $checksum -ChecksumType $checksumType
Install-BinFile "flyway" "$toolsDir\flyway-$version\flyway.cmd"
