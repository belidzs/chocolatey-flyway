$version = '6.0.6'
$packageName = 'flyway'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/$version/flyway-commandline-$version.zip"
$checksumType = 'sha256'
$checksum = '1896e8bd1542cad1b4d1a6a556ba9aad9819a5aea7f10146e04ebbadbc0b8487'
Install-ChocolateyZipPackage $packageName $url $toolsDir -Checksum $checksum -ChecksumType $checksumType
Install-BinFile "flyway" "$toolsDir\flyway-$version\flyway.cmd"
