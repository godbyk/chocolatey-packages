
$packageName = 'unity.install'
$installerType = 'exe'
$url = 'http://download.unity3d.com/download_unity/UnitySetup-4.6.1.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

try {
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
  
  Write-ChocolateySuccess "$packageName"
  
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw 
}
