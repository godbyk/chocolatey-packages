
$packageName = 'boost-x86-msvc2013.install' # arbitrary name for the package, used in messages
$installerType = 'exe'
#$url = 'http://downloads.sourceforge.net/project/boost/boost-binaries/1.57.0/boost_1_57_0-msvc-12.0-64.exe?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fboost%2Ffiles%2Fboost-binaries%2F1.57.0%2Fboost_1_57_0-msvc-12.0-64.exe%2Fdownload&ts=1420239421&use_mirror=superb-dca3'
$url = 'http://superb-dca3.dl.sourceforge.net/project/boost/boost-binaries/1.57.0/boost_1_57_0-msvc-12.0-32.exe'
$silentArgs = '/VERYSILENT'
#$checksum = 'c0dd6e80bb2ed40897e4cd437b4463b5917e17497c68b0285bb5cfd6e4dc8671'
#$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes # -checksum "$checksum" -checksumType "$checksumType"
