
$packageName = 'oculus-sdk.portable'
$url = 'http://static.oculus.com/sdk-downloads/ovr_sdk_win_0.4.4.zip' # download url
$checksum = 'bcc9f41346ce13bd4334a8bc94875728'
$checksumType = 'md5'
$validExitCodes = @(0)

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" -checksum "$checksum" -checksumType "$checksumType"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
