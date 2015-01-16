
$packageName = 'oculus-sdk.install'
$url = 'http://static.oculus.com/sdk-downloads/ovr_sdk_win_0.4.4.zip' # download url
$checksum = 'bcc9f41346ce13bd4334a8bc94875728'
$checksumType = 'md5'
$validExitCodes = @(0)

try {
  ### For BinRoot, use the following instead ###
  $binRoot = Get-BinRoot
  $installDir = Join-Path $binRoot "$packageName"
  Write-Host "Adding `'$installDir`' to the path and the current shell path"
  Install-ChocolateyPath "$installDir"
  $env:Path = "$($env:Path);$installDir"

  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" -checksum "$checksum" -checksumType "$checksumType"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
