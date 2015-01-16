
$packageName = 'oculus-runtime.install'
$installerType = 'exe'
$url = 'http://static.oculus.com/sdk-downloads/oculus_runtime_rev_1_sdk_0.4.4_win.exe'
$silentArgs = '--mode unattended'
$checksum = 'e1d5c9e3d39f15dfe4cd2d992a492cf6'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
