
$packageName = 'boost-x86-msvc2013.install' # arbitrary name for the package, used in messages
$installerType = 'exe'

$boostVer = @(1, 57, 0)
$vc = "12.0"
$bits = 32

$verDecimal = $boostVer -join "."
$verUnderscore = $boostVer -join "_"

$url = "http://superb-dca3.dl.sourceforge.net/project/boost/boost-binaries/$verDecimal/boost_$verUnderscore-msvc-$vc-$bits.$installerType"
$silentArgs = '/VERYSILENT'
#$checksum = 'c0dd6e80bb2ed40897e4cd437b4463b5917e17497c68b0285bb5cfd6e4dc8671'
#$checksumType = 'sha256'
$validExitCodes = @(0)

$dest = "c:\local\boost_$verUnderscore\lib$bits-msvc-$vc"
If (Test-Path $dest) {
    Write-Host "Apparently already installed (perhaps in the mega-bundle zip), because we found $dest"
    Write-ChocolateySuccess $packageName
} else {
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes # -checksum "$checksum" -checksumType "$checksumType"
}
